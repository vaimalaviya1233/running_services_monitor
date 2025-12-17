import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scale_kit/flutter_scale_kit.dart';
import 'package:running_services_monitor/bloc/command_log_bloc/command_log_bloc.dart';
import 'package:running_services_monitor/core/dependency_injection/dependency_injection.dart';
import 'package:running_services_monitor/core/extensions.dart';
import 'package:running_services_monitor/models/command_log_entry.dart';

class CommandOutputScreen extends StatelessWidget {
  final String entryId;

  const CommandOutputScreen({super.key, required this.entryId});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CommandLogBloc, CommandLogState, CommandLogEntry?>(
      bloc: getIt<CommandLogBloc>(),
      selector: (state) => state.value.where((e) => e.id == entryId).firstOrNull,
      builder: (context, entry) {
        if (entry == null) {
          return Scaffold(
            appBar: AppBar(title: Text(context.loc.commandOutput)),
            body: Center(child: Text(context.loc.error)),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(context.loc.commandOutput, style: TextStyle(fontSize: 20.sp)),
            actions: [
              IconButton(
                icon: const Icon(Icons.copy),
                tooltip: context.loc.copy,
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: entry.output));
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(context.loc.copiedToClipboard), duration: const Duration(seconds: 2)));
                },
              ),
            ],
          ),
          body: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.all(16.w),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.loc.command,
                            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
                          ),
                          SizedBox(height: 4.h),
                          SelectableText(
                            entry.command,
                            style: TextStyle(fontSize: 13.sp, fontFamily: 'monospace'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      context.loc.rawOutput,
                      style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12.w),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
                      ),
                      child: SelectableText(
                        scrollPhysics: NeverScrollableScrollPhysics(),
                        entry.output.isEmpty ? context.loc.noOutput : entry.output,
                        style: TextStyle(fontSize: 12.sp, fontFamily: 'monospace', height: 1.5, color: const Color(0xFF4EC9B0)),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
