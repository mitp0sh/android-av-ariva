.class public final Lcom/avira/android/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/avira/android/uninstallation/UninstallationActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/avira/android/uninstallation/UninstallationLandingPage;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/b/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avira/applock/service/AppLockerService;->a(Landroid/content/Context;Z)V

    .line 53
    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/applock/g/a;->a(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 74
    invoke-static {p0}, Lcom/avira/android/b/a;->d(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 85
    invoke-static {p0}, Lcom/avira/applock/d/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {p0}, Lcom/avira/android/b/a;->d(Landroid/content/Context;)V

    .line 91
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/applock/activities/AppListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 100
    new-instance v0, Lcom/avira/android/userprofile/s;

    invoke-direct {v0}, Lcom/avira/android/userprofile/s;-><init>()V

    invoke-virtual {v0}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v1

    .line 101
    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 103
    const-string v0, "settingRegisteredServerDeviceId"

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    sget-object v5, Lcom/avira/android/b/a;->a:[Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 108
    return-void
.end method
