.class final Lcom/avira/android/antivirus/m;
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
    .line 646
    iput-object p1, p0, Lcom/avira/android/antivirus/m;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 650
    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a()J

    move-result-wide v0

    .line 651
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 653
    invoke-static {}, Lcom/avira/android/utilities/g;->a()Lcom/avira/android/utilities/g;

    invoke-static {v0, v1}, Lcom/avira/android/utilities/g;->c(J)Ljava/lang/String;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/avira/android/antivirus/m;->a:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-static {v1}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->e(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)Lcom/avira/android/antivirus/ac;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avira/android/antivirus/ac;->a(Ljava/lang/String;)V

    .line 656
    :cond_0
    return-void
.end method
