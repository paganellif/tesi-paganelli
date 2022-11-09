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
        framework {
            baseName = "shared"
        }
    }
    sourceSets {
        val commonMain by getting {
            dependencies { } // Dipendenze comuni a Android e iOS
        }

        val androidMain by getting {
            dependencies { } // Dipendenze specifiche Android
        }

        val iosArm64Main by getting
        val iosMain by creating {
            dependsOn(commonMain)
            iosArm64Main.dependsOn(this)
            dependencies { } // Dipendenze specifiche iOS
        }
    }
}

android { } // Configurazione android 