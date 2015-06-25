.class final Lcom/avira/android/dashboard/e;
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
    .line 508
    iput-object p1, p0, Lcom/avira/android/dashboard/e;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/avira/android/dashboard/e;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->c(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V

    .line 514
    return-void
.end method
