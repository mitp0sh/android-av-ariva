.class final Lcom/mixpanel/android/mpmetrics/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/u;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/GCMReceiver;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/GCMReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/l;->b:Lcom/mixpanel/android/mpmetrics/GCMReceiver;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mixpanel/android/mpmetrics/r;)V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/r;->b()Lcom/mixpanel/android/mpmetrics/v;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/l;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mixpanel/android/mpmetrics/v;->a(Ljava/lang/String;)V

    .line 110
    return-void
.end method
