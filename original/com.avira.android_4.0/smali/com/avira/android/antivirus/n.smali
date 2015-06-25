.class final Lcom/avira/android/antivirus/n;
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
    .line 663
    iput-object p1, p0, Lcom/avira/android/antivirus/n;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/avira/android/antivirus/n;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->e(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)Lcom/avira/android/antivirus/ac;

    move-result-object v0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->v()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avira/android/antivirus/ac;->b(Ljava/lang/String;)V

    .line 669
    return-void
.end method
