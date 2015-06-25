.class final Lcom/avira/android/dashboard/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/DashboardHelpActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/dashboard/DashboardHelpActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/avira/android/dashboard/o;->a:Lcom/avira/android/dashboard/DashboardHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/avira/android/dashboard/o;->a:Lcom/avira/android/dashboard/DashboardHelpActivity;

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->a(Lcom/avira/android/dashboard/DashboardHelpActivity;)Lcom/avira/android/dashboard/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/dashboard/q;->c()V

    .line 128
    const/4 v0, 0x1

    return v0
.end method
