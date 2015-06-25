.class final Lcom/avira/android/antivirus/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Ljava/util/ArrayList;

    move-result-object v1

    .line 414
    if-nez v1, :cond_0

    .line 449
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 420
    iget-object v2, p0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v2}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->d(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Lcom/avira/android/antivirus/au;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/avira/android/antivirus/data/e;->a(Ljava/util/ArrayList;Landroid/content/pm/PackageManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/avira/android/antivirus/au;->a(Ljava/util/Map;)V

    .line 423
    iget-object v2, p0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v2, v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;Z)Z

    .line 425
    iget-object v0, p0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/avira/android/antivirus/ap;

    invoke-direct {v2, p0, v1}, Lcom/avira/android/antivirus/ap;-><init>(Lcom/avira/android/antivirus/ao;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 423
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
