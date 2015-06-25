.class public Lcom/avira/android/antitheft/lock/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/avira/android/antitheft/lock/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antitheft/lock/f;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/avira/android/remotecomponents/CommandIntegrator;Z)V
    .locals 3

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 31
    new-instance p0, Lcom/avira/android/remotecomponents/LockCommandIntegrator;

    if-eqz p1, :cond_2

    const-string v0, "lock"

    :goto_0
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/avira/android/remotecomponents/LockCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    const-string v0, "statusCode"

    const-string v1, "OK"

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "batteryLevel"

    invoke-static {}, Lcom/avira/android/device/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {p0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 38
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-class v2, Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    if-eqz p1, :cond_3

    const-string v0, "com.avira.android.action.LOCK"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    if-eqz p1, :cond_1

    .line 45
    new-instance v0, Lcom/avira/android/remotecomponents/b;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/b;-><init>()V

    const-string v1, "lockMessage"

    invoke-virtual {v0, v1}, Lcom/avira/android/remotecomponents/b;->a(Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/remotecomponents/b;->a()Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {v0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 49
    :cond_1
    return-void

    .line 31
    :cond_2
    const-string v0, "unlock"

    goto :goto_0

    .line 39
    :cond_3
    const-string v0, "com.avira.android.action.UNLOCK"

    goto :goto_1
.end method

.method static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 53
    const-string v0, "settingUnlockPassword"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/avira/android/e/b;->a()Lcom/avira/android/e/c;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/avira/android/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 63
    :goto_0
    return v0

    .line 62
    :cond_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/antitheft/lock/f;->TAG:Ljava/lang/String;

    const-string v2, "Failed to verify password"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    goto :goto_0
.end method
