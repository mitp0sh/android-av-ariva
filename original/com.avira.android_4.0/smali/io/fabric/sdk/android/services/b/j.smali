.class public final Lio/fabric/sdk/android/services/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CRASHLYTICS_API_KEY:Ljava/lang/String; = "com.crashlytics.ApiKey"


# direct methods
.method public static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 19
    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 26
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 27
    if-eqz v0, :cond_2

    .line 28
    const-string v2, "com.crashlytics.ApiKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    :goto_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const-string v2, "com.crashlytics.ApiKey"

    const-string v3, "string"

    invoke-static {p0, v2, v3}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    if-nez p1, :cond_1

    invoke-static {p0}, Lio/fabric/sdk/android/services/b/l;->j(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crashlytics could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"com.crashlytics.ApiKey\" android:value=\"YOUR_API_KEY\"/>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :catch_0
    move-exception v0

    .line 33
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caught non-fatal exception while retrieving apiKey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v2}, Lio/fabric/sdk/android/q;->b()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Crashlytics could not be initialized, API key missing from AndroidManifest.xml. Add the following tag to your Application element \n\t<meta-data android:name=\"com.crashlytics.ApiKey\" android:value=\"YOUR_API_KEY\"/>"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :cond_4
    return-object v0
.end method
