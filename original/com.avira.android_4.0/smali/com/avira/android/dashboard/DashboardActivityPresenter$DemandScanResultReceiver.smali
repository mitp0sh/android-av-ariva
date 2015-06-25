.class public Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION_DEMAND_SCAN_RESULT:Ljava/lang/String; = "com.avira.android.ACTION_DEMAND_SCAN_RESULT"


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/DashboardActivityPresenter;


# direct methods
.method public constructor <init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V
    .locals 0

    .prologue
    .line 846
    iput-object p1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/dashboard/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/dashboard/w;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->d(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V

    .line 862
    :goto_0
    invoke-static {}, Lcom/avira/android/firstscan/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    sget-object v1, Lcom/avira/android/dashboard/h;->FIRST_SCAN_NOT_COMPLETE:Lcom/avira/android/dashboard/h;

    invoke-static {v0, v1}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Lcom/avira/android/dashboard/DashboardActivityPresenter;Lcom/avira/android/dashboard/h;)V

    .line 871
    :goto_1
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    sget-object v1, Lcom/avira/android/dashboard/h;->DEFAULT:Lcom/avira/android/dashboard/h;

    invoke-static {v0, v1}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Lcom/avira/android/dashboard/DashboardActivityPresenter;Lcom/avira/android/dashboard/h;)V

    goto :goto_0

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    sget-object v1, Lcom/avira/android/dashboard/h;->DEFAULT:Lcom/avira/android/dashboard/h;

    invoke-static {v0, v1}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Lcom/avira/android/dashboard/DashboardActivityPresenter;Lcom/avira/android/dashboard/h;)V

    goto :goto_1
.end method
