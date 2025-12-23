import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_scale_kit/flutter_scale_kit.dart';

class SnackBarHelper {
  static void showLoading(BuildContext context, String message) {
    _showGlassSnackBar(
      context,
      message: message,
      icon: SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Theme.of(context).colorScheme.primary)),
      duration: const Duration(seconds: 10),
    );
  }

  static void showSuccess(BuildContext context, String message) {
    _showGlassSnackBar(
      context,
      message: message,
      icon: Icon(Icons.check_circle_rounded, color: Colors.green.shade600),
      duration: const Duration(seconds: 2),
    );
  }

  static void showError(BuildContext context, String message, {String? actionLabel, VoidCallback? onAction}) {
    _showGlassSnackBar(
      context,
      message: message,
      icon: Icon(Icons.error_outline_rounded, color: Colors.red.shade700),
      duration: const Duration(seconds: 4),
      actionLabel: actionLabel,
      onAction: onAction,
    );
  }

  static void showInfo(BuildContext context, String message) {
    _showGlassSnackBar(context, message: message, duration: const Duration(seconds: 2));
  }

  static void _showGlassSnackBar(
    BuildContext context, {
    required String message,
    required Duration duration,
    Widget? icon,
    String? actionLabel,
    VoidCallback? onAction,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        padding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        elevation: 0,
        behavior: SnackBarBehavior.fixed,
        duration: duration,
        content: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              decoration: BoxDecoration(color: colorScheme.onSurface.withValues(alpha: 0.5)),
              child: Row(
                children: [
                  if (icon != null) ...[icon, SizedBox(width: 12.w)],
                  Expanded(
                    child: Text(
                      message,
                      style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: colorScheme.surface),
                    ),
                  ),
                  if (actionLabel != null) ...[
                    SizedBox(width: 8.w),
                    TextButton(
                      onPressed: onAction ?? () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Text(
                        actionLabel,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
