.class public Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;
.super Landroid/app/IntentService;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/vdfupdate/e;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field a:Lcom/avira/android/antivirus/Antivirus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;->setIntentRedelivery(Z)V

    .line 30
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->isDemandScanRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;->a:Lcom/avira/android/antivirus/Antivirus;

    const/4 v1, 0x0

    sget-object v2, Lcom/avira/android/antivirus/e;->ON_DEMAND:Lcom/avira/android/antivirus/e;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/antivirus/Antivirus;->scanFile(Landroid/os/Handler;Lcom/avira/android/antivirus/e;)V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/vdfupdate/f;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "phone_has_vdf"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;->a()V

    .line 48
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 85
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "service destroyed"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Starting scan service... "

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;->a:Lcom/avira/android/antivirus/Antivirus;

    .line 62
    invoke-static {}, Lcom/avira/android/vdfupdate/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/avira/android/vdfupdate/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/avira/android/vdfupdate/d;-><init>(Landroid/content/Context;Lcom/avira/android/vdfupdate/e;Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avira/android/vdfupdate/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    :goto_0
    invoke-static {p1}, Lcom/avira/android/antivirus/scanscheduler/StartScanReceiver;->a(Landroid/content/Intent;)Z

    .line 72
    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;->a()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/IntentService;->onLowMemory()V

    .line 78
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "low memory detected"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
