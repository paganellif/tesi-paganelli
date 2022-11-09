// src/commonMain/kotlin/it/filo/myapplication/Platform.kt
expect class Platform() {
  val platform: String
}

// src/androidMain/kotlin/it/filo/myapplication/Platform.kt
actual class Platform actual constructor() {
  actual val platform: String = "Android ${android.os.Build.VERSION.SDK_INT}"
}

// src/iosMain/kotlin/it/filo/myapplication/Platform.kt
actual class Platform actual constructor() {
  actual val platform: String = UIDevice.currentDevice.systemName() + " " +
    UIDevice.currentDevice.systemVersion
}
