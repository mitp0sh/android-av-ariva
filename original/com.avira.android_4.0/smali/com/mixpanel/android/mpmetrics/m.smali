.class final Lcom/mixpanel/android/mpmetrics/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/u;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/GCMReceiver;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/GCMReceiver;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/m;->a:Lcom/mixpanel/android/mpmetrics/GCMReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mixpanel/android/mpmetrics/r;)V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/r;->b()Lcom/mixpanel/android/mpmetrics/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/mixpanel/android/mpmetrics/v;->a()V

    .line 118
    return-void
.end method
