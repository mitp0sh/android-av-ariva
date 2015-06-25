.class final Lcom/avira/android/antivirus/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/antivirus/bb;


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/avira/android/antivirus/al;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/antivirus/data/a;)V
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/avira/android/a/c;->a()Lcom/avira/android/a/c;

    invoke-interface {p1}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/a/c;->f(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public final a(Lcom/avira/android/antivirus/data/h;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/avira/android/antivirus/al;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    iget-object v0, p0, Lcom/avira/android/antivirus/al;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antivirus/al;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-static {v1}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a(Landroid/support/v4/app/FragmentManager;Lcom/avira/android/antivirus/data/h;Landroid/content/res/Resources;)V

    .line 207
    return-void
.end method
