# Shizuku AIDL service classes - required for user service binding in release builds
-keep class me.biplobsd.rsm.ShellService { *; }
-keep class me.biplobsd.rsm.IShellService { *; }
-keep class me.biplobsd.rsm.IShellService$Stub { *; }
-keep class me.biplobsd.rsm.IShellService$Stub$Proxy { *; }

# Keep Shizuku library classes
-keep class rikka.shizuku.** { *; }
-dontwarn rikka.shizuku.**

# ========== OPTIMIZATION RULES ==========

# Remove logging in release builds
-assumenosideeffects class android.util.Log {
    public static int v(...);
    public static int d(...);
    public static int i(...);
}

# Aggressive optimization
-optimizationpasses 5
-repackageclasses ''
-allowaccessmodification
-mergeinterfacesaggressively

# Remove unused AndroidX classes
-dontwarn androidx.**
-keep class androidx.lifecycle.** { *; }
-keep class androidx.core.app.** { *; }

# Remove debug info
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable

# Suppress warnings for unused libraries
-dontwarn com.google.android.material.**
-dontwarn androidx.recyclerview.**
-dontwarn androidx.appcompat.**
-dontwarn androidx.constraintlayout.**
-dontwarn androidx.coordinatorlayout.**
-dontwarn androidx.fragment.**
-dontwarn androidx.emoji2.**

# Google Play Core (Flutter deferred components - not used)
-dontwarn com.google.android.play.core.splitcompat.SplitCompatApplication
-dontwarn com.google.android.play.core.splitinstall.SplitInstallException
-dontwarn com.google.android.play.core.splitinstall.SplitInstallManager
-dontwarn com.google.android.play.core.splitinstall.SplitInstallManagerFactory
-dontwarn com.google.android.play.core.splitinstall.SplitInstallRequest$Builder
-dontwarn com.google.android.play.core.splitinstall.SplitInstallRequest
-dontwarn com.google.android.play.core.splitinstall.SplitInstallSessionState
-dontwarn com.google.android.play.core.splitinstall.SplitInstallStateUpdatedListener
-dontwarn com.google.android.play.core.tasks.OnFailureListener
-dontwarn com.google.android.play.core.tasks.OnSuccessListener
-dontwarn com.google.android.play.core.tasks.Task

# Flutter specific
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Share Plus
-keep class androidx.core.content.FileProvider { *; }

# Remove Kotlin metadata (saves space)
-dontwarn kotlin.**
-assumenosideeffects class kotlin.jvm.internal.Intrinsics {
    static void checkParameterIsNotNull(...);
    static void checkNotNullParameter(...);
    static void checkExpressionValueIsNotNull(...);
    static void checkNotNullExpressionValue(...);
}

# ProfileInstaller - remove if not using baseline profiles
-dontwarn androidx.profileinstaller.**
-assumenosideeffects class androidx.profileinstaller.** { *; }

# Browser / Chrome Custom Tabs - strip unused parts
-dontwarn androidx.browser.**
-assumenosideeffects class androidx.browser.customtabs.CustomTabsClient {
    public static boolean connectAndInitialize(...);
    public static boolean bindCustomTabsService(...);
}
