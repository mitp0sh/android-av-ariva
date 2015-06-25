.class final Lcom/avira/android/dashboard/i;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/DashboardActivityPresenter;


# direct methods
.method private constructor <init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V
    .locals 0

    .prologue
    .line 877
    iput-object p1, p0, Lcom/avira/android/dashboard/i;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;B)V
    .locals 0

    .prologue
    .line 877
    invoke-direct {p0, p1}, Lcom/avira/android/dashboard/i;-><init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/avira/android/dashboard/i;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    sget-object v1, Lcom/avira/android/dashboard/h;->SCANNING_IN_PROGRESS:Lcom/avira/android/dashboard/h;

    invoke-static {v0, v1}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Lcom/avira/android/dashboard/DashboardActivityPresenter;Lcom/avira/android/dashboard/h;)V

    .line 884
    return-void
.end method
