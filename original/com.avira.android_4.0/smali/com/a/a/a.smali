.class public final Lcom/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final LISTENER_EXECUTION_THRESHOLD:J = 0x64L

.field static final listenerService:Ljava/util/concurrent/ThreadPoolExecutor;

.field static final timer:Ljava/util/Timer;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/j",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/atomic/AtomicLong;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/a/a/k;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/f",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/util/Timer;

    const-string v1, "ExpiringMap"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/a/a/a;->timer:Ljava/util/Timer;

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-string v1, "ExpiringMap"

    .line 62
    invoke-static {v0, v1}, Lcom/a/a/m;->a(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/a/a/a;->listenerService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 60
    return-void
.end method

.method private constructor <init>(Lcom/a/a/d;)V
    .locals 5

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/a/a/d;->a(Lcom/a/a/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/a/a;->e:Z

    .line 80
    iget-boolean v0, p0, Lcom/a/a/a;->e:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/a/a/g;

    invoke-direct {v0}, Lcom/a/a/g;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    .line 82
    invoke-static {p1}, Lcom/a/a/d;->b(Lcom/a/a/d;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 84
    invoke-static {p1}, Lcom/a/a/d;->b(Lcom/a/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    iput-object v0, p0, Lcom/a/a/a;->a:Ljava/util/List;

    .line 86
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/a/a/d;->c(Lcom/a/a/d;)Lcom/a/a/k;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/a/a/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lcom/a/a/d;->d(Lcom/a/a/d;)J

    move-result-wide v2

    .line 88
    invoke-static {p1}, Lcom/a/a/d;->e(Lcom/a/a/d;)Ljava/util/concurrent/TimeUnit;

    move-result-object v4

    .line 87
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 89
    return-void

    .line 80
    :cond_1
    new-instance v0, Lcom/a/a/e;

    invoke-direct {v0}, Lcom/a/a/e;-><init>()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/a/a/d;B)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/a/a/a;-><init>(Lcom/a/a/d;)V

    return-void
.end method

.method public static a()Lcom/a/a/d;
    .locals 2

    .prologue
    .line 399
    new-instance v0, Lcom/a/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(B)V

    return-object v0
.end method

.method static synthetic a(Lcom/a/a/a;)Lcom/a/a/f;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/k;J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/a/a/k;",
            "J)TV;"
        }
    .end annotation

    .prologue
    .line 771
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0, p1}, Lcom/a/a/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/l;

    .line 772
    const/4 v1, 0x0

    .line 774
    if-nez v0, :cond_4

    .line 775
    new-instance v3, Lcom/a/a/l;

    .line 776
    iget-boolean v0, p0, Lcom/a/a/a;->e:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object v2, v0

    .line 777
    :goto_0
    iget-boolean v0, p0, Lcom/a/a/a;->e:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p4, p5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 775
    :goto_1
    invoke-direct {v3, p1, p2, v2, v0}, Lcom/a/a/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 779
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0, p1, v3}, Lcom/a/a/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0}, Lcom/a/a/f;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0}, Lcom/a/a/f;->a()Lcom/a/a/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/a/a/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 781
    :cond_0
    invoke-virtual {p0, v3}, Lcom/a/a/a;->b(Lcom/a/a/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_2
    move-object p2, v0

    .line 791
    :cond_1
    monitor-exit p0

    return-object p2

    .line 777
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/a/a/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v2, v0

    goto :goto_0

    .line 778
    :cond_3
    iget-object v0, p0, Lcom/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_1

    .line 783
    :cond_4
    invoke-virtual {v0}, Lcom/a/a/l;->a()Ljava/lang/Object;

    move-result-object v1

    .line 784
    if-nez v1, :cond_5

    if-eqz p2, :cond_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 787
    :cond_6
    invoke-virtual {v0, p2}, Lcom/a/a/l;->a(Ljava/lang/Object;)V

    .line 788
    invoke-direct {p0, v0}, Lcom/a/a/a;->c(Lcom/a/a/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_2

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method private declared-synchronized c(Lcom/a/a/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 803
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/a/a/l;->a(Z)Z

    move-result v0

    .line 804
    iget-object v1, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v1, p1}, Lcom/a/a/f;->a(Lcom/a/a/l;)V

    .line 806
    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0}, Lcom/a/a/f;->a()Lcom/a/a/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/a/a/a;->b(Lcom/a/a/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :cond_0
    monitor-exit p0

    return-void

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final a(Lcom/a/a/l;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 743
    iget-object v0, p0, Lcom/a/a/a;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 762
    :cond_0
    return-void

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/a/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/j;

    .line 747
    iget v1, v0, Lcom/a/a/j;->b:I

    if-nez v1, :cond_2

    .line 748
    iget-object v0, v0, Lcom/a/a/j;->a:Lcom/a/a/i;

    iget-object v0, p1, Lcom/a/a/l;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/a/a/l;->a()Ljava/lang/Object;

    goto :goto_0

    .line 749
    :cond_2
    iget v1, v0, Lcom/a/a/j;->b:I

    if-ne v1, v2, :cond_3

    .line 750
    sget-object v1, Lcom/a/a/a;->listenerService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v4, Lcom/a/a/b;

    invoke-direct {v4, p0, v0, p1}, Lcom/a/a/b;-><init>(Lcom/a/a/a;Lcom/a/a/j;Lcom/a/a/l;)V

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 756
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 757
    iget-object v1, v0, Lcom/a/a/j;->a:Lcom/a/a/i;

    iget-object v1, p1, Lcom/a/a/l;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/a/a/l;->a()Ljava/lang/Object;

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 759
    const-wide/16 v8, 0x64

    add-long/2addr v4, v8

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Lcom/a/a/j;->b:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method final b(Lcom/a/a/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 817
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/a/a/l;->g:Z

    if-eqz v0, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    monitor-enter p1

    .line 822
    :try_start_0
    iget-boolean v0, p1, Lcom/a/a/l;->g:Z

    if-eqz v0, :cond_2

    .line 823
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 825
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 827
    new-instance v1, Lcom/a/a/c;

    invoke-direct {v1, p0, v0}, Lcom/a/a/c;-><init>(Lcom/a/a/a;Ljava/lang/ref/WeakReference;)V

    .line 859
    invoke-virtual {p1, v1}, Lcom/a/a/l;->a(Ljava/util/TimerTask;)V

    .line 821
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 862
    sget-object v2, Lcom/a/a/a;->timer:Ljava/util/Timer;

    iget-object v0, p1, Lcom/a/a/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v2, v1, v0}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V

    goto :goto_0
.end method

.method public final declared-synchronized clear()V
    .locals 3

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0}, Lcom/a/a/f;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0}, Lcom/a/a/f;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 426
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/l;

    .line 427
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/a/a/l;->a(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0, p1}, Lcom/a/a/f;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0, p1}, Lcom/a/a/f;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 454
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0, p1}, Lcom/a/a/f;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 459
    .line 461
    monitor-enter p0

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0, p1}, Lcom/a/a/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/l;

    .line 463
    if-nez v0, :cond_0

    .line 464
    monitor-exit p0

    const/4 v0, 0x0

    .line 469
    :goto_0
    return-object v0

    .line 465
    :cond_0
    sget-object v1, Lcom/a/a/k;->ACCESSED:Lcom/a/a/k;

    iget-object v2, v0, Lcom/a/a/l;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/k;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    invoke-direct {p0, v0}, Lcom/a/a/a;->c(Lcom/a/a/l;)V

    .line 461
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    invoke-virtual {v0}, Lcom/a/a/l;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0}, Lcom/a/a/f;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 507
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0}, Lcom/a/a/f;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 511
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0}, Lcom/a/a/f;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 524
    if-nez p1, :cond_0

    .line 525
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 527
    :cond_0
    monitor-enter p0

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/k;

    iget-object v0, p0, Lcom/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/k;J)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 574
    if-nez p1, :cond_0

    .line 575
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/a/a/a;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 578
    iget-object v0, p0, Lcom/a/a/a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/a/a/k;

    .line 580
    monitor-enter p0

    .line 581
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    monitor-exit p0

    return-void

    .line 581
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 582
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/a/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/a/a/k;J)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 588
    .line 590
    monitor-enter p0

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0, p1}, Lcom/a/a/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/l;

    .line 590
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    if-nez v0, :cond_0

    .line 595
    const/4 v0, 0x0

    .line 599
    :goto_0
    return-object v0

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 596
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/a/l;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    iget-object v1, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v1}, Lcom/a/a/f;->a()Lcom/a/a/l;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/a/a/a;->b(Lcom/a/a/l;)V

    .line 599
    :cond_1
    invoke-virtual {v0}, Lcom/a/a/l;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized size()I
    .locals 1

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/a;->d:Lcom/a/a/f;

    invoke-interface {v0}, Lcom/a/a/f;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 703
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
