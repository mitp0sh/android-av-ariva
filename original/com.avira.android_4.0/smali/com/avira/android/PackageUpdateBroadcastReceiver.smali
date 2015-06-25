.class public Lcom/avira/android/PackageUpdateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final APP_UPDATED_ISSUE_GCM_REGISTRATION:Ljava/lang/String; = "app_updated_issue_gcm_registration"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/avira/android/PackageUpdateBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/PackageUpdateBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    invoke-static {}, Lcom/avira/android/antivirus/bd;->a()Lcom/avira/android/antivirus/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antivirus/bd;->b()V

    .line 52
    new-instance v0, Lcom/avira/android/remotecomponents/b;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/b;-><init>()V

    const-string v1, "versionUpdate"

    invoke-virtual {v0, v1}, Lcom/avira/android/remotecomponents/b;->a(Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    move-result-object v0

    const-string v1, "versionNo"

    invoke-static {}, Lcom/avira/android/device/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/remotecomponents/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/remotecomponents/b;->a()Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {v0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 57
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    const-string v1, "versionUpdate"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    sget-object v0, Lcom/avira/android/PackageUpdateBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "app_updated_issue_gcm_registration"

    invoke-static {v0, v1, v3}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 67
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/common/gcm/b;->b()V

    .line 73
    :cond_0
    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-static {v3}, Lcom/avira/android/securebrowsing/c/aa;->a(Z)Z

    .line 78
    :cond_1
    invoke-static {p1}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    const-string v0, "Perform component update after package update..."

    .line 83
    sget-object v1, Lcom/avira/android/PackageUpdateBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/antivirus/i;->b(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->d()V

    .line 89
    const-string v0, "1"

    const-string v1, "settingDeviceAdminVersion"

    const-string v2, "0"

    invoke-static {v1, v2}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    invoke-static {p1}, Lcom/avira/android/deviceadmin/b;->a(Landroid/content/Context;)Z

    .line 95
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avira/android/antitheft/a;->a(Z)V

    .line 97
    const-string v0, "1"

    const-string v1, "settingDeviceAdminVersion"

    invoke-static {v1, v0}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    invoke-static {p1}, Lcom/avira/android/b/a;->b(Landroid/content/Context;)V

    .line 102
    :cond_3
    return-void
.end method
