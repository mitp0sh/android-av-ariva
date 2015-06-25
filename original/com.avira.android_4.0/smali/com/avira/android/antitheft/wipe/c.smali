.class public final Lcom/avira/android/antitheft/wipe/c;
.super Lcom/avira/android/antitheft/wipe/n;
.source "SourceFile"


# static fields
.field private static final FACTORY_RESET_DELAY:J = 0x1388L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/avira/android/antitheft/wipe/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->f()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 32
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    const-class v3, Lcom/avira/android/deviceadmin/DeviceAdminReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/avira/android/antitheft/wipe/c;->d()Z

    .line 36
    const-string v0, "reset"

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/avira/android/antitheft/wipe/d;

    invoke-direct {v1, p0}, Lcom/avira/android/antitheft/wipe/d;-><init>(Lcom/avira/android/antitheft/wipe/c;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 65
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    sget-object v0, Lcom/avira/android/database/m;->FactoryReset:Lcom/avira/android/database/m;

    sget-object v1, Lcom/avira/android/database/l;->Failed:Lcom/avira/android/database/l;

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;Lcom/avira/android/database/l;)V

    .line 62
    const-string v0, "reset"

    const-string v1, "FAILED"

    const-string v2, "ADMINISTRATION_OFF"

    invoke-static {v0, v1, v2}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/avira/android/antitheft/wipe/c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
