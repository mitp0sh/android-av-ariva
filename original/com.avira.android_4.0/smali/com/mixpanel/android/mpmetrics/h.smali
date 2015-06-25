.class final Lcom/mixpanel/android/mpmetrics/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/j;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/j;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/h;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/h;->b:Lcom/mixpanel/android/mpmetrics/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/mixpanel/android/mpmetrics/i;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/h;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/h;->b:Lcom/mixpanel/android/mpmetrics/j;

    invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/i;-><init>(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/j;)V

    .line 21
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 22
    return-void
.end method
