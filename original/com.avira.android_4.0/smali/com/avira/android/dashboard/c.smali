.class final Lcom/avira/android/dashboard/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/DashboardActivityPresenter;


# direct methods
.method constructor <init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/avira/android/dashboard/c;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 115
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/idsafeguard/services/b;

    .line 116
    sget-object v1, Lcom/avira/android/idsafeguard/services/b;->ACTIVE:Lcom/avira/android/idsafeguard/services/b;

    if-ne v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/avira/android/dashboard/c;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/dashboard/w;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/dashboard/c;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v1}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v1

    const v2, 0x7f0802e4

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avira/android/dashboard/w;->b(Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sget-object v1, Lcom/avira/android/idsafeguard/services/b;->IDLE:Lcom/avira/android/idsafeguard/services/b;

    if-ne v0, v1, :cond_0

    .line 122
    const-string v0, "result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/idsafeguard/services/a;

    .line 123
    sget-object v1, Lcom/avira/android/idsafeguard/services/a;->ERROR:Lcom/avira/android/idsafeguard/services/a;

    if-ne v0, v1, :cond_2

    .line 125
    iget-object v0, p0, Lcom/avira/android/dashboard/c;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/dashboard/w;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/dashboard/c;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v1}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v1

    const v2, 0x7f08018c

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avira/android/dashboard/w;->b(Ljava/lang/String;)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/avira/android/dashboard/c;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->c(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V

    .line 128
    iget-object v0, p0, Lcom/avira/android/dashboard/c;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->d(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V

    goto :goto_0
.end method
