.class final Lcom/mixpanel/android/mpmetrics/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/at;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/at;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/w;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/w;Lcom/mixpanel/android/mpmetrics/at;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/x;->b:Lcom/mixpanel/android/mpmetrics/w;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/x;->a:Lcom/mixpanel/android/mpmetrics/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mixpanel/android/mpmetrics/ap;)V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/x;->a:Lcom/mixpanel/android/mpmetrics/at;

    invoke-interface {v0, p1}, Lcom/mixpanel/android/mpmetrics/at;->a(Lcom/mixpanel/android/mpmetrics/ap;)V

    .line 929
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/x;->b:Lcom/mixpanel/android/mpmetrics/w;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/w;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/r;->b(Lcom/mixpanel/android/mpmetrics/r;)Lcom/mixpanel/android/mpmetrics/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/t;->b()V

    .line 930
    return-void
.end method
