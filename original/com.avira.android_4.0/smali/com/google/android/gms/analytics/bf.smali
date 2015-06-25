.class final Lcom/google/android/gms/analytics/bf;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/ba;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/bf;->a:Lcom/google/android/gms/analytics/ba;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/ba;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/bf;-><init>(Lcom/google/android/gms/analytics/ba;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/bf;->a:Lcom/google/android/gms/analytics/ba;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->b(Lcom/google/android/gms/analytics/ba;)Lcom/google/android/gms/analytics/be;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/be;->rO:Lcom/google/android/gms/analytics/be;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/bf;->a:Lcom/google/android/gms/analytics/ba;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->e(Lcom/google/android/gms/analytics/ba;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/bf;->a:Lcom/google/android/gms/analytics/ba;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->f(Lcom/google/android/gms/analytics/ba;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/bf;->a:Lcom/google/android/gms/analytics/ba;

    invoke-static {v2}, Lcom/google/android/gms/analytics/ba;->g(Lcom/google/android/gms/analytics/ba;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/analytics/bf;->a:Lcom/google/android/gms/analytics/ba;

    invoke-static {v2}, Lcom/google/android/gms/analytics/ba;->h(Lcom/google/android/gms/analytics/ba;)Lcom/google/android/gms/analytics/ao;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/analytics/ao;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/bf;->a:Lcom/google/android/gms/analytics/ba;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->i(Lcom/google/android/gms/analytics/ba;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/bf;->a:Lcom/google/android/gms/analytics/ba;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->j(Lcom/google/android/gms/analytics/ba;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/bf;

    iget-object v2, p0, Lcom/google/android/gms/analytics/bf;->a:Lcom/google/android/gms/analytics/ba;

    invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/bf;-><init>(Lcom/google/android/gms/analytics/ba;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/bf;->a:Lcom/google/android/gms/analytics/ba;

    invoke-static {v2}, Lcom/google/android/gms/analytics/ba;->g(Lcom/google/android/gms/analytics/ba;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
