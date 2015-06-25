.class final Lcom/google/android/gms/analytics/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ag;
.implements Lcom/google/android/gms/analytics/ah;
.implements Lcom/google/android/gms/analytics/x;


# instance fields
.field private volatile a:J

.field private volatile b:Lcom/google/android/gms/analytics/be;

.field private volatile c:Lcom/google/android/gms/analytics/ad;

.field private d:Lcom/google/android/gms/analytics/ai;

.field private e:Lcom/google/android/gms/analytics/ai;

.field private final f:Lcom/google/android/gms/analytics/c;

.field private final g:Lcom/google/android/gms/analytics/ak;

.field private final h:Landroid/content/Context;

.field private final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/analytics/bh;",
            ">;"
        }
    .end annotation
.end field

.field private volatile j:I

.field private volatile k:Ljava/util/Timer;

.field private volatile l:Ljava/util/Timer;

.field private volatile m:Ljava/util/Timer;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/google/android/gms/analytics/ao;

.field private s:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/ak;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/analytics/c;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/c;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/analytics/ba;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/ak;Lcom/google/android/gms/analytics/c;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/ak;Lcom/google/android/gms/analytics/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->i:Ljava/util/Queue;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/ba;->s:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->e:Lcom/google/android/gms/analytics/ai;

    iput-object p1, p0, Lcom/google/android/gms/analytics/ba;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/analytics/ba;->g:Lcom/google/android/gms/analytics/ak;

    iput-object p3, p0, Lcom/google/android/gms/analytics/ba;->f:Lcom/google/android/gms/analytics/c;

    new-instance v0, Lcom/google/android/gms/analytics/bb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/bb;-><init>(Lcom/google/android/gms/analytics/ba;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->r:Lcom/google/android/gms/analytics/ao;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/analytics/ba;->j:I

    sget-object v0, Lcom/google/android/gms/analytics/be;->rT:Lcom/google/android/gms/analytics/be;

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    return-void
.end method

.method private static a(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/ba;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->g()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/ba;)Lcom/google/android/gms/analytics/be;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/ba;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->i()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/ba;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->j()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/analytics/ba;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->i:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/analytics/ba;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/ba;->a:J

    return-wide v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->k:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->l:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->l:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->m:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->m:Ljava/util/Timer;

    return-void
.end method

.method static synthetic g(Lcom/google/android/gms/analytics/ba;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/ba;->s:J

    return-wide v0
.end method

.method private declared-synchronized g()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/analytics/ba;->g:Lcom/google/android/gms/analytics/ak;

    invoke-interface {v3}, Lcom/google/android/gms/analytics/ak;->d()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->g:Lcom/google/android/gms/analytics/ak;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/ak;->c()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/analytics/bc;

    invoke-direct {v3, p0}, Lcom/google/android/gms/analytics/bc;-><init>(Lcom/google/android/gms/analytics/ba;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/gms/analytics/ba;->o:Z

    if-eqz v2, :cond_2

    const-string v2, "clearHits called"

    invoke-static {v2}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    sget-object v2, Lcom/google/android/gms/analytics/bd;->rM:[I

    iget-object v3, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/be;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/ba;->o:Z

    :cond_2
    :goto_1
    sget-object v2, Lcom/google/android/gms/analytics/bd;->rM:[I

    iget-object v3, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/be;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto :goto_0

    :goto_2
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/analytics/bh;

    move-object v7, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending hit to store  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->d:Lcom/google/android/gms/analytics/ai;

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/bh;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/bh;->b()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/bh;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/bh;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/analytics/ai;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->d:Lcom/google/android/gms/analytics/ai;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/ai;->a()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/ba;->o:Z

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->c:Lcom/google/android/gms/analytics/ad;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/ad;->a()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/ba;->o:Z

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/analytics/ba;->n:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->h()V

    goto/16 :goto_0

    :goto_3
    :pswitch_4
    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/analytics/bh;

    move-object v7, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending hit to service   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->f:Lcom/google/android/gms/analytics/c;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/c;->b()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->c:Lcom/google/android/gms/analytics/ad;

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/bh;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/bh;->b()J

    move-result-wide v4

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/bh;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/android/gms/analytics/bh;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/analytics/ad;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_3

    :cond_4
    const-string v2, "Dry run enabled. Hit not actually sent to service."

    invoke-static {v2}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->r:Lcom/google/android/gms/analytics/ao;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/ao;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/analytics/ba;->a:J

    goto/16 :goto_0

    :pswitch_5
    const-string v2, "Need to reconnect"

    invoke-static {v2}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->i:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic h(Lcom/google/android/gms/analytics/ba;)Lcom/google/android/gms/analytics/ao;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->r:Lcom/google/android/gms/analytics/ao;

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->d:Lcom/google/android/gms/analytics/ai;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ai;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/ba;->n:Z

    return-void
.end method

.method private declared-synchronized i()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    sget-object v1, Lcom/google/android/gms/analytics/be;->rP:Lcom/google/android/gms/analytics/be;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->f()V

    const-string v0, "falling back to local store"

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->e:Lcom/google/android/gms/analytics/ai;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->e:Lcom/google/android/gms/analytics/ai;

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->d:Lcom/google/android/gms/analytics/ai;

    :goto_1
    sget-object v0, Lcom/google/android/gms/analytics/be;->rP:Lcom/google/android/gms/analytics/be;

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/analytics/ax;->c()Lcom/google/android/gms/analytics/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/ba;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/ba;->g:Lcom/google/android/gms/analytics/ak;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/analytics/ax;->a(Landroid/content/Context;Lcom/google/android/gms/analytics/ak;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ax;->d()Lcom/google/android/gms/analytics/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->d:Lcom/google/android/gms/analytics/ai;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic i(Lcom/google/android/gms/analytics/ba;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->k()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/gms/analytics/ba;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->m:Ljava/util/Timer;

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ba;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->c:Lcom/google/android/gms/analytics/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    sget-object v1, Lcom/google/android/gms/analytics/be;->rP:Lcom/google/android/gms/analytics/be;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/analytics/ba;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/analytics/ba;->j:I

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->l:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->a(Ljava/util/Timer;)Ljava/util/Timer;

    sget-object v0, Lcom/google/android/gms/analytics/be;->rN:Lcom/google/android/gms/analytics/be;

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Failed Connect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->l:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->l:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/bg;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/bg;-><init>(Lcom/google/android/gms/analytics/ba;B)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    const-string v0, "connecting to Analytics service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->c:Lcom/google/android/gms/analytics/ad;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ad;->b()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "security exception on connectToService"

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "client not initialized."

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->i()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized k()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->c:Lcom/google/android/gms/analytics/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    sget-object v1, Lcom/google/android/gms/analytics/be;->rO:Lcom/google/android/gms/analytics/be;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/analytics/be;->rS:Lcom/google/android/gms/analytics/be;

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->c:Lcom/google/android/gms/analytics/ad;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ad;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->k:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->k:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "Service Reconnect"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->k:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->k:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/bi;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/bi;-><init>(Lcom/google/android/gms/analytics/ba;B)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ba;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "setForceLocalDispatch called."

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/ba;->q:Z

    sget-object v0, Lcom/google/android/gms/analytics/bd;->rM:[I

    iget-object v1, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/be;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/ba;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final declared-synchronized a(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/be;->rR:Lcom/google/android/gms/analytics/be;

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    iget v0, p0, Lcom/google/android/gms/analytics/ba;->j:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), will retry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service unavailable (code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), using local store."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/di;",
            ">;)V"
        }
    .end annotation

    const-string v0, "putHit called"

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/gms/analytics/ba;->i:Ljava/util/Queue;

    new-instance v0, Lcom/google/android/gms/analytics/bh;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/analytics/bh;-><init>(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->g()V

    return-void
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/analytics/bd;->rM:[I

    iget-object v1, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/be;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/ba;->n:Z

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->h()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->c:Lcom/google/android/gms/analytics/ad;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/analytics/ae;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ba;->h:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/analytics/ae;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/ag;Lcom/google/android/gms/analytics/ah;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->c:Lcom/google/android/gms/analytics/ad;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->j()V

    goto :goto_0
.end method

.method public final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->l:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->l:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/analytics/ba;->j:I

    const-string v0, "Connected to service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/analytics/be;->rO:Lcom/google/android/gms/analytics/be;

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ba;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/ba;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->g()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->m:Ljava/util/Timer;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ba;->a(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->m:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "disconnect check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->m:Ljava/util/Timer;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->m:Ljava/util/Timer;

    new-instance v1, Lcom/google/android/gms/analytics/bf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/analytics/bf;-><init>(Lcom/google/android/gms/analytics/ba;B)V

    iget-wide v2, p0, Lcom/google/android/gms/analytics/ba;->s:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    sget-object v1, Lcom/google/android/gms/analytics/be;->rS:Lcom/google/android/gms/analytics/be;

    if-ne v0, v1, :cond_0

    const-string v0, "Disconnected from service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->f()V

    sget-object v0, Lcom/google/android/gms/analytics/be;->rT:Lcom/google/android/gms/analytics/be;

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "Unexpected disconnect."

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/analytics/be;->rR:Lcom/google/android/gms/analytics/be;

    iput-object v0, p0, Lcom/google/android/gms/analytics/ba;->b:Lcom/google/android/gms/analytics/be;

    iget v0, p0, Lcom/google/android/gms/analytics/ba;->j:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/analytics/ba;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
