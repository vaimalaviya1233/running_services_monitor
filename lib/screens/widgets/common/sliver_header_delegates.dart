import 'package:flutter/material.dart';
import 'package:flutter_scale_kit/flutter_scale_kit.dart';

class RamBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget ramBar;

  RamBarDelegate({required this.ramBar});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(color: Theme.of(context).colorScheme.surface, child: ramBar);
  }

  @override
  double get maxExtent => 150.h;

  @override
  double get minExtent => 150.h;

  @override
  bool shouldRebuild(covariant RamBarDelegate oldDelegate) {
    return ramBar != oldDelegate.ramBar;
  }
}

class FilterChipsDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  FilterChipsDelegate({required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(color: Theme.of(context).colorScheme.surface, child: child);
  }

  @override
  double get maxExtent => 52.h;

  @override
  double get minExtent => 52.h;

  @override
  bool shouldRebuild(covariant FilterChipsDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}

class AnimatedFilterChipsDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final bool isVisible;
  final double height;

  AnimatedFilterChipsDelegate({required this.child, required this.isVisible, double? height}) : height = height ?? 52.h;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return ClipRect(
      child: AnimatedSlide(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOutCubic,
        offset: isVisible ? Offset.zero : const Offset(0, -1),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: isVisible ? 1.0 : 0.0,
          child: Container(color: Theme.of(context).colorScheme.surface, child: child),
        ),
      ),
    );
  }

  @override
  double get maxExtent => isVisible ? height : 0;

  @override
  double get minExtent => isVisible ? height : 0;

  @override
  bool shouldRebuild(covariant AnimatedFilterChipsDelegate oldDelegate) {
    return child != oldDelegate.child || isVisible != oldDelegate.isVisible;
  }
}
