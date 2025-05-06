import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("development") {
            dimension = "flavor-type"
            applicationId = "com.sport.app.dev"
            resValue(type = "string", name = "app_name", value = "[DEV] Sport")
        }
        create("staging") {
            dimension = "flavor-type"
            applicationId = "com.sport.app.staging"
            resValue(type = "string", name = "app_name", value = "[STAGING] Sport")
        }
        create("production") {
            dimension = "flavor-type"
            applicationId = "com.sport.app"
            resValue(type = "string", name = "app_name", value = "Sport")
        }
    }
}