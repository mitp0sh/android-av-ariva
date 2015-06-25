.class final Lcom/avira/android/dashboard/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/DashboardActivityPresenter;


# direct methods
.method private constructor <init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lcom/avira/android/dashboard/j;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;B)V
    .locals 0

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/avira/android/dashboard/j;-><init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 804
    const-string v0, "premium_status_tag"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 805
    iget-object v1, p0, Lcom/avira/android/dashboard/j;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v1}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/dashboard/w;

    move-result-object v1

    invoke-static {}, Lcom/avira/android/securebrowsing/c/aa;->a()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/avira/android/dashboard/w;->a(ZZ)V

    .line 806
    return-void
.end method
