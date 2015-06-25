.class final Lcom/google/android/gms/common/api/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/d;


# instance fields
.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/s",
            "<*>;>;"
        }
    .end annotation
.end field

.field final b:Landroid/os/Handler;

.field final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/s;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/android/gms/common/api/g;

.field private final e:Ljava/util/concurrent/locks/Lock;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Lcom/google/android/gms/internal/gc;

.field private h:Lcom/google/android/gms/common/a;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:J

.field private final o:Landroid/os/Bundle;

.field private final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/c",
            "<*>;",
            "Lcom/google/android/gms/common/api/b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private final r:Lcom/google/android/gms/common/api/q;

.field private final s:Lcom/google/android/gms/internal/ge;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/ee;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a;",
            "Lcom/google/android/gms/common/api/e;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/g;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/h;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->f:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->a:Ljava/util/Queue;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/l;->j:I

    iput v1, p0, Lcom/google/android/gms/common/api/l;->k:I

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/l;->l:Z

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/api/l;->n:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->o:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->c:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/api/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/m;-><init>(Lcom/google/android/gms/common/api/l;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->r:Lcom/google/android/gms/common/api/q;

    new-instance v0, Lcom/google/android/gms/common/api/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/n;-><init>(Lcom/google/android/gms/common/api/l;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->d:Lcom/google/android/gms/common/api/g;

    new-instance v0, Lcom/google/android/gms/common/api/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/o;-><init>(Lcom/google/android/gms/common/api/l;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->s:Lcom/google/android/gms/internal/ge;

    new-instance v0, Lcom/google/android/gms/internal/gc;

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->s:Lcom/google/android/gms/internal/ge;

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/gc;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ge;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/gc;

    new-instance v0, Lcom/google/android/gms/common/api/r;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/api/r;-><init>(Lcom/google/android/gms/common/api/l;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->b:Landroid/os/Handler;

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/g;

    iget-object v2, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/gc;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gc;->a(Lcom/google/android/gms/common/api/g;)V

    goto :goto_0

    :cond_0
    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/h;

    iget-object v2, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/gc;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gc;->a(Lcom/google/android/gms/common/d;)V

    goto :goto_1

    :cond_1
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/api/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/e;

    iget-object v8, p0, Lcom/google/android/gms/common/api/l;->p:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/common/api/l;->d:Lcom/google/android/gms/common/api/g;

    new-instance v6, Lcom/google/android/gms/common/api/p;

    invoke-direct {v6, p0, v0}, Lcom/google/android/gms/common/api/p;-><init>(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/c;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/c;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/b;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/l;->h:Lcom/google/android/gms/common/a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/l;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/l;->j:I

    if-eq v0, v1, :cond_a

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/s;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/s;->b()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->h:Lcom/google/android/gms/common/a;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/l;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    return-void

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/l;->d()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/l;->c()Z

    move-result v1

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/common/api/l;->j:I

    if-eqz v0, :cond_5

    if-ne p1, v4, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->h:Lcom/google/android/gms/common/a;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/l;->q:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->c()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->b()V

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/l;->q:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/l;->j:I

    if-eqz v1, :cond_a

    if-eq p1, v4, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/gc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gc;->a(I)V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/l;->q:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/l;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/l;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/l;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/l;->j:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/l;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/l;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/l;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/l;->m:I

    iget v0, p0, Lcom/google/android/gms/common/api/l;->m:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->h:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/l;->l:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/l;->a(I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/l;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/api/l;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/l;->k:I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/l;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/l;->n:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/l;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/gc;

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->h:Lcom/google/android/gms/common/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gc;->a(Lcom/google/android/gms/common/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3
    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lcom/google/android/gms/common/api/l;->j:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/l;->f()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/l;->c()Z

    move-result v0

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gv;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_6

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/s;

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/l;->c()Z

    move-result v1

    const-string v4, "GoogleApiClient is not connected yet."

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/gv;->a(ZLjava/lang/Object;)V

    invoke-interface {v0}, Lcom/google/android/gms/common/api/s;->a()Lcom/google/android/gms/common/api/c;

    move-result-object v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_3
    const-string v4, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/gv;->a(ZLjava/lang/Object;)V

    instance-of v1, v0, Lcom/google/android/gms/common/api/i;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->r:Lcom/google/android/gms/common/api/q;

    :cond_4
    invoke-interface {v0}, Lcom/google/android/gms/common/api/s;->a()Lcom/google/android/gms/common/api/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/l;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "GoogleApiClientImpl"

    const-string v4, "Service died while flushing queue"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    move v1, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_9
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_6
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/l;->l:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/l;->l:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/l;->a(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->o:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->g:Lcom/google/android/gms/internal/gc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gc;->a(Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->o:Landroid/os/Bundle;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/l;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/l;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/l;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/l;)I
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/l;->k:I

    return v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/common/api/l;->k:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/l;->n:J

    return-wide v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/l;->q:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->h:Lcom/google/android/gms/common/a;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/common/api/l;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/l;->i:I

    return v0
.end method

.method static synthetic k(Lcom/google/android/gms/common/api/l;)I
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/l;->i:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/b;",
            ">(",
            "Lcom/google/android/gms/common/api/c",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/l;->l:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/l;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/l;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/l;->h:Lcom/google/android/gms/common/a;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/l;->j:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->o:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/l;->m:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/b;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/l;->f()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/l;->a(I)V

    return-void
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/l;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final d()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/api/l;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/l;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
