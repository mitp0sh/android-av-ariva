.class public final Lcom/avira/android/notifyappupdate/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTIVITY_ANTIVIRUS:I = 0x1

.field private static final ACTIVITY_ANTI_THEFT:I = 0x2

.field private static final ACTIVITY_BLACKLIST:I = 0x7

.field private static final ACTIVITY_DASHBOARD:I = 0x5

.field private static final ACTIVITY_IDENTITY_SAFEGUARD:I = 0x3

.field private static final ACTIVITY_METHOD_NAME:Ljava/lang/String; = "openActivity"

.field private static final ACTIVITY_PARAM_ID:Ljava/lang/String; = "activityId"

.field private static final ACTIVITY_SCAN_SCHEDULER:I = 0x6

.field private static final ACTIVITY_SECURE_BROWSING:I = 0x4

.field private static final AUTOLOGIN_METHOD_NAME:Ljava/lang/String; = "autoLogin"

.field private static final AUTOLOGIN_PARAM_TOKEN:Ljava/lang/String; = "loginTk"

.field private static final PACKAGE_GOOGLE_PLAY_PREFIX:Ljava/lang/String; = "market://details?id="

.field private static final PACKAGE_METHOD_NAME:Ljava/lang/String; = "openPackage"

.field private static final PACKAGE_PARAM_INTENT:Ljava/lang/String; = "intent"

.field private static final PACKAGE_PARAM_NAME:Ljava/lang/String; = "pkgName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "openActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string v0, "activityId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 71
    :goto_1
    return-void

    .line 57
    :pswitch_1
    const-class v0, Lcom/avira/android/antivirus/AntivirusOEActivity;

    goto :goto_0

    :pswitch_2
    const-class v0, Lcom/avira/android/antitheft/activities/ATMainActivity;

    goto :goto_0

    :pswitch_3
    const-class v0, Lcom/avira/android/idsafeguard/activities/ISMainActivity;

    goto :goto_0

    :pswitch_4
    const-class v0, Lcom/avira/android/securebrowsing/activities/SBActivity;

    goto :goto_0

    :pswitch_5
    const-class v0, Lcom/avira/android/dashboard/DashboardActivity;

    goto :goto_0

    :pswitch_6
    const-class v0, Lcom/avira/android/blacklist/activities/BLActivity;

    goto :goto_0

    .line 59
    :cond_0
    const-string v1, "openPackage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string v0, "pkgName"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const-string v1, "intent"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 63
    :cond_1
    const-string v1, "autoLogin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-string v0, "loginTk"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_2
    const-class v1, Lcom/avira/android/notifyappupdate/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UNKNOWN OPERATION: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
