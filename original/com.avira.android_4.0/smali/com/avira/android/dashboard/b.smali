.class final Lcom/avira/android/dashboard/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/dashboard/DashboardActivity;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/avira/android/dashboard/b;->a:Lcom/avira/android/dashboard/DashboardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/avira/android/dashboard/b;->a:Lcom/avira/android/dashboard/DashboardActivity;

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivity;->c(Lcom/avira/android/dashboard/DashboardActivity;)V

    .line 313
    return-void
.end method
