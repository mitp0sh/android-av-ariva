.class public Lcom/avira/android/deviceadmin/DeviceAdminReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method

.method private static a(Z)V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avira/android/ApplicationService;->a(Z)V

    .line 37
    new-instance v0, Lcom/avira/android/remotecomponents/DeviceAdminCommandIntegrator;

    const-string v1, "deviceadmin"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/avira/android/remotecomponents/DeviceAdminCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/l;->e(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avira/android/deviceadmin/DeviceAdminReceiver;->a(Z)V

    .line 32
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/admin/DeviceAdminReceiver;->onEnabled(Landroid/content/Context;Landroid/content/Intent;)V

    .line 24
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avira/android/deviceadmin/DeviceAdminReceiver;->a(Z)V

    .line 25
    return-void
.end method
