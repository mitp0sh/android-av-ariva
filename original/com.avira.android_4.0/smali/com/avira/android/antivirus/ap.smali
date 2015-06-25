.class final Lcom/avira/android/antivirus/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/avira/android/antivirus/ao;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/ao;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/avira/android/antivirus/ap;->b:Lcom/avira/android/antivirus/ao;

    iput-object p2, p0, Lcom/avira/android/antivirus/ap;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/avira/android/antivirus/ap;->b:Lcom/avira/android/antivirus/ao;

    iget-object v0, v0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->e(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 432
    iget-object v0, p0, Lcom/avira/android/antivirus/ap;->b:Lcom/avira/android/antivirus/ao;

    iget-object v0, v0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->e(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antivirus/ap;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avira/android/antivirus/ap;->b:Lcom/avira/android/antivirus/ao;

    iget-object v2, v2, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v2}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avira/android/antivirus/data/e;->a(Ljava/util/List;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 435
    iget-object v0, p0, Lcom/avira/android/antivirus/ap;->b:Lcom/avira/android/antivirus/ao;

    iget-object v0, v0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->f(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-static {}, Lcom/avira/android/antivirus/f;->a()Lcom/avira/android/antivirus/f;

    iget-object v0, p0, Lcom/avira/android/antivirus/ap;->b:Lcom/avira/android/antivirus/ao;

    iget-object v0, v0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->f(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Z

    move-result v0

    invoke-static {v0}, Lcom/avira/android/antivirus/f;->a(Z)Z

    .line 439
    iget-object v0, p0, Lcom/avira/android/antivirus/ap;->b:Lcom/avira/android/antivirus/ao;

    iget-object v0, v0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->g(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Lcom/avira/android/antivirus/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/antivirus/ad;->a()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/ap;->b:Lcom/avira/android/antivirus/ao;

    iget-object v0, v0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->d(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Lcom/avira/android/antivirus/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antivirus/au;->notifyDataSetChanged()V

    .line 443
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 445
    iget-object v0, p0, Lcom/avira/android/antivirus/ap;->b:Lcom/avira/android/antivirus/ao;

    iget-object v0, v0, Lcom/avira/android/antivirus/ao;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->g(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Lcom/avira/android/antivirus/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/antivirus/ad;->b()V

    .line 446
    return-void
.end method
