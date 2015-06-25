.class public Lcom/avira/android/antivirus/AppInstallUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/vdfupdate/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/antivirus/OnAccessScanService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string v1, "packageName"

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/vdfupdate/f;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 55
    instance-of v0, p2, Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 57
    check-cast p2, Landroid/content/Intent;

    invoke-static {p2}, Lcom/avira/android/antivirus/AppInstallUpdateReceiver;->a(Landroid/content/Intent;)V

    .line 59
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->isDemandScanRunning()Z

    move-result v1

    .line 23
    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->getOnDemandVdfVersion()Ljava/lang/String;

    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 28
    :cond_0
    invoke-static {}, Lcom/avira/android/vdfupdate/i;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    new-instance v0, Lcom/avira/android/vdfupdate/d;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2}, Lcom/avira/android/vdfupdate/d;-><init>(Landroid/content/Context;Lcom/avira/android/vdfupdate/e;Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avira/android/vdfupdate/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    invoke-static {p2}, Lcom/avira/android/antivirus/AppInstallUpdateReceiver;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
