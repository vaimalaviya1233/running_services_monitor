import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:running_services_monitor/core/constants.dart';
import 'package:running_services_monitor/core/extensions.dart';
import 'widgets/about_info_tile.dart';
import 'widgets/about_header.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {

  String version = '';

  @override
  void initState() {
    super.initState();

    _loadPackageInfo();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (version.isEmpty) {
      version = context.loc.loading;
    }
  }

  Future<void> _loadPackageInfo() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      version = 'v${packageInfo.version}';
    });
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {

      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: AppBar(title: Text(context.loc.about)),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  AboutHeader(version: version),
                  const SizedBox(height: 32),
                  AboutInfoTile(
                    icon: Icons.person,
                    title: context.loc.developer,
                    subtitle: AppConstants.developerName,
                  ),
                  AboutInfoTile(
                    icon: Icons.email,
                    title: context.loc.email,
                    subtitle: AppConstants.developerEmail,
                    onTap: () => _launchUrl('mailto:${AppConstants.developerEmail}'),
                  ),
                  AboutInfoTile(
                    icon: Icons.code,
                    title: context.loc.sourceCode,
                    subtitle: AppConstants.sourceCodeDisplayUrl,
                    onTap: () => _launchUrl(AppConstants.sourceCodeUrl),
                  ),
                  AboutInfoTile(
                    icon: Icons.web,
                    title: context.loc.blogs,
                    subtitle: AppConstants.blogsDisplayUrl,
                    onTap: () => _launchUrl(AppConstants.blogsUrl),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: FilledButton.icon(
                      onPressed: () => _launchUrl(AppConstants.buyMeCoffeeUrl),
                      icon: const Icon(Icons.coffee),
                      label: Text(context.loc.buyMeCoffee),
                      style: FilledButton.styleFrom(backgroundColor: Colors.amber[800], foregroundColor: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: Text(
                      context.loc.madeInBangladesh,
                      style: TextStyle(fontSize: 14, color: Theme.of(context).colorScheme.onSurfaceVariant),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
