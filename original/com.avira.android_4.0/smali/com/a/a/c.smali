.class final Lcom/a/a/c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/a/a/a;

.field private final synthetic b:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/a/a/a;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    iput-object p2, p0, Lcom/a/a/c;->b:Ljava/lang/ref/WeakReference;

    .line 827
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 830
    iget-object v0, p0, Lcom/a/a/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/l;

    .line 832
    iget-object v3, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    monitor-enter v3

    .line 833
    if-eqz v0, :cond_0

    :try_start_0
    iget-boolean v1, v0, Lcom/a/a/l;->g:Z

    if-eqz v1, :cond_0

    .line 834
    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    invoke-static {v1}, Lcom/a/a/a;->a(Lcom/a/a/a;)Lcom/a/a/f;

    move-result-object v1

    iget-object v2, v0, Lcom/a/a/l;->d:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/a/a/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    invoke-virtual {v1, v0}, Lcom/a/a/a;->a(Lcom/a/a/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    invoke-static {v0}, Lcom/a/a/a;->a(Lcom/a/a/a;)Lcom/a/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/f;->b()Ljava/util/Iterator;

    move-result-object v4

    .line 841
    const/4 v0, 0x1

    move v2, v0

    .line 843
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    if-nez v2, :cond_2

    .line 832
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 844
    :cond_2
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/l;

    .line 845
    iget-object v1, v0, Lcom/a/a/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gtz v1, :cond_3

    .line 846
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 847
    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    invoke-virtual {v1, v0}, Lcom/a/a/a;->a(Lcom/a/a/l;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 849
    :cond_3
    iget-object v1, p0, Lcom/a/a/c;->a:Lcom/a/a/a;

    invoke-virtual {v1, v0}, Lcom/a/a/a;->b(Lcom/a/a/l;)V
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 850
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
