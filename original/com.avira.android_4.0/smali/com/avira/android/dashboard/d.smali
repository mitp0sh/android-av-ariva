.class final Lcom/avira/android/dashboard/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/DashboardActivityPresenter;


# direct methods
.method constructor <init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/avira/android/dashboard/d;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/avira/android/dashboard/d;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->e(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/avira/android/antivirus/e;->ON_DEMAND:Lcom/avira/android/antivirus/e;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/antivirus/Antivirus;->scanFile(Landroid/os/Handler;Lcom/avira/android/antivirus/e;)V

    .line 480
    return-void
.end method
