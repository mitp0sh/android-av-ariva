.class final Lcom/avira/android/antivirus/an;
.super Lcom/avira/android/custom/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/data/a;

.field final synthetic b:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;Lcom/avira/android/antivirus/data/a;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/avira/android/antivirus/an;->b:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    iput-object p2, p0, Lcom/avira/android/antivirus/an;->a:Lcom/avira/android/antivirus/data/a;

    invoke-direct {p0}, Lcom/avira/android/custom/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/avira/android/antivirus/an;->a:Lcom/avira/android/antivirus/data/a;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/avira/android/antivirus/an;->b:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    iget-object v1, p0, Lcom/avira/android/antivirus/an;->a:Lcom/avira/android/antivirus/data/a;

    invoke-static {v0, v1}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;Lcom/avira/android/antivirus/data/a;)V

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.action.file_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
