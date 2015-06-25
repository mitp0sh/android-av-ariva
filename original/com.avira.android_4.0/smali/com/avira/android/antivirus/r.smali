.class final Lcom/avira/android/antivirus/r;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;


# direct methods
.method private constructor <init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/avira/android/antivirus/r;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;B)V
    .locals 0

    .prologue
    .line 857
    invoke-direct {p0, p1}, Lcom/avira/android/antivirus/r;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 862
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "AOEACTPRE"

    const-string v1, "Download Completion Event received!"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a()Lcom/avira/android/antivirus/o;

    move-result-object v0

    sget-object v1, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_DOWNLOADING:Lcom/avira/android/antivirus/o;

    if-ne v0, v1, :cond_0

    .line 868
    iget-object v0, p0, Lcom/avira/android/antivirus/r;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->f(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V

    .line 870
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "AOEACTPRE"

    const-string v1, "Switching to scanning state"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    sget-object v0, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_SCANNING:Lcom/avira/android/antivirus/o;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(Lcom/avira/android/antivirus/o;)V

    .line 876
    iget-object v0, p0, Lcom/avira/android/antivirus/r;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->g(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V

    .line 878
    iget-object v0, p0, Lcom/avira/android/antivirus/r;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/avira/android/antivirus/r;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->h(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V

    .line 884
    :cond_0
    return-void
.end method
