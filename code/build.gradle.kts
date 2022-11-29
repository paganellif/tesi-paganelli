plugins {
  kotlin("multiplatform") // org.jetbrains.kotlin.multiplatform
  id("com.android.library")
  kotlin("native.cocoapods") // org.jetbrains.kotlin.native.cocoapods
}

kotlin {
  android()
  iosArm64()
  cocoapods {  // Configurazione Cocoapods
    ios.deploymentTarget = "14.1"
    podfile = project.file("../iosApp/Podfile")
    framework { baseName = "shared" }
  }

  sourceSets {
    val commonMain by getting { dependencies {} } // Dipendenze comuni Android e iOS
    val androidMain by getting { dependencies {} } // Dipendenze specifiche Android
    val iosMain by creating { dependencies {} } // Dipendenze specifiche iOS
  }
}

android { } // Configurazione android 