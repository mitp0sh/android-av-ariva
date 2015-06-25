.class final Lcom/avira/android/antivirus/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/avira/android/antivirus/l;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/avira/android/antivirus/l;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->isDemandScanRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/avira/android/antivirus/l;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antivirus/l;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-static {v1}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->d(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)Lcom/avira/android/antivirus/p;

    move-result-object v1

    sget-object v2, Lcom/avira/android/antivirus/e;->ON_DEMAND:Lcom/avira/android/antivirus/e;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/antivirus/Antivirus;->scanFile(Landroid/os/Handler;Lcom/avira/android/antivirus/e;)V

    .line 621
    :cond_0
    return-void
.end method
