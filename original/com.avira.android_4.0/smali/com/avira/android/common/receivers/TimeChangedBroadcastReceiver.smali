.class public Lcom/avira/android/common/receivers/TimeChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/avira/android/common/receivers/TimeChangedBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/common/receivers/TimeChangedBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 23
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/common/receivers/TimeChangedBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-boolean v0, Lcom/avira/android/debug/f;->ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "disable_scan_scheduler_refresh_pref"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    new-instance v0, Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-direct {v0}, Lcom/avira/android/antivirus/scanscheduler/a;-><init>()V

    invoke-virtual {v0}, Lcom/avira/android/antivirus/scanscheduler/a;->a()V

    .line 31
    :cond_1
    invoke-static {}, Lcom/avira/android/vdfupdate/i;->b()Z

    .line 32
    return-void
.end method
