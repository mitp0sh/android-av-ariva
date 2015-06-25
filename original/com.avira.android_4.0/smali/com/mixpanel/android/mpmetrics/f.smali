.class final Lcom/mixpanel/android/mpmetrics/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/c;

.field final synthetic b:Lcom/mixpanel/android/mpmetrics/ap;

.field final synthetic c:Lcom/mixpanel/android/mpmetrics/e;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/e;Lcom/mixpanel/android/mpmetrics/c;Lcom/mixpanel/android/mpmetrics/ap;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/f;->c:Lcom/mixpanel/android/mpmetrics/e;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/f;->a:Lcom/mixpanel/android/mpmetrics/c;

    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/f;->b:Lcom/mixpanel/android/mpmetrics/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/f;->a:Lcom/mixpanel/android/mpmetrics/c;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/c;->a()Lcom/mixpanel/android/mpmetrics/at;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/f;->b:Lcom/mixpanel/android/mpmetrics/ap;

    invoke-interface {v0, v1}, Lcom/mixpanel/android/mpmetrics/at;->a(Lcom/mixpanel/android/mpmetrics/ap;)V

    .line 307
    return-void
.end method
