.class public Lcom/avira/android/antivirus/scanscheduler/StartScanReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/avira/android/antivirus/scanscheduler/StartScanReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antivirus/scanscheduler/StartScanReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antivirus/scanscheduler/StartScanReceiver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Start scan broadcast received"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-direct {v0}, Lcom/avira/android/antivirus/scanscheduler/a;-><init>()V

    .line 21
    invoke-virtual {v0}, Lcom/avira/android/antivirus/scanscheduler/a;->a()V

    .line 23
    invoke-virtual {v0}, Lcom/avira/android/antivirus/scanscheduler/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusOEActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 28
    const-string v1, "com.avira.android.intent.SCHEDULED_SCAN_ISSUED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avira/android/common/a/b;->a(Z)V

    .line 38
    :cond_0
    return-void

    .line 33
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-static {p1, v0}, Lcom/avira/android/antivirus/scanscheduler/StartScanReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
