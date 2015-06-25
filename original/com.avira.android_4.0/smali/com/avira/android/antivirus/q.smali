.class final Lcom/avira/android/antivirus/q;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;


# direct methods
.method private constructor <init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V
    .locals 0

    .prologue
    .line 890
    iput-object p1, p0, Lcom/avira/android/antivirus/q;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;B)V
    .locals 0

    .prologue
    .line 890
    invoke-direct {p0, p1}, Lcom/avira/android/antivirus/q;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 895
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "AOEACTPRE"

    const-string v1, "Update failure Event received!"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a()Lcom/avira/android/antivirus/o;

    move-result-object v0

    sget-object v1, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_DOWNLOADING:Lcom/avira/android/antivirus/o;

    if-ne v0, v1, :cond_0

    .line 901
    iget-object v0, p0, Lcom/avira/android/antivirus/q;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->i(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V

    .line 904
    invoke-static {}, Lcom/avira/android/firstscan/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    sget-object v0, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_IDLE:Lcom/avira/android/antivirus/o;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(Lcom/avira/android/antivirus/o;)V

    .line 908
    iget-object v0, p0, Lcom/avira/android/antivirus/q;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->e(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)Lcom/avira/android/antivirus/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/antivirus/ac;->e()V

    .line 911
    :cond_0
    return-void
.end method
