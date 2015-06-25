.class final Lcom/mixpanel/android/mpmetrics/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/at;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:J

.field final synthetic c:Lcom/mixpanel/android/mpmetrics/ac;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/ac;Landroid/app/Activity;J)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/ad;->c:Lcom/mixpanel/android/mpmetrics/ac;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/ad;->a:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/mixpanel/android/mpmetrics/ad;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mixpanel/android/mpmetrics/ap;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/ad;->a:Landroid/app/Activity;

    new-instance v1, Lcom/mixpanel/android/mpmetrics/ae;

    invoke-direct {v1, p0, p1}, Lcom/mixpanel/android/mpmetrics/ae;-><init>(Lcom/mixpanel/android/mpmetrics/ad;Lcom/mixpanel/android/mpmetrics/ap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method
