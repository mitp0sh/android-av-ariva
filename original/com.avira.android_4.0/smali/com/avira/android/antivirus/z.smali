.class public final Lcom/avira/android/antivirus/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/avira/android/antivirus/z;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/avira/android/antivirus/aa;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/concurrent/Semaphore;


# instance fields
.field private b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z

.field private h:Ljava/util/concurrent/Semaphore;

.field private i:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avira/android/antivirus/z;->a:Ljava/util/HashSet;

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/avira/android/antivirus/z;->f:Ljava/util/Set;

    .line 17
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/avira/android/antivirus/z;->g:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v1, p0, Lcom/avira/android/antivirus/z;->c:Z

    .line 14
    iput-boolean v1, p0, Lcom/avira/android/antivirus/z;->d:Z

    .line 15
    iput-boolean v2, p0, Lcom/avira/android/antivirus/z;->e:Z

    .line 18
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/antivirus/z;->h:Ljava/util/concurrent/Semaphore;

    .line 19
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/antivirus/z;->i:Ljava/util/concurrent/Semaphore;

    .line 67
    iput-boolean v1, p0, Lcom/avira/android/antivirus/z;->e:Z

    .line 68
    sget-object v0, Lcom/avira/android/antivirus/z;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/z;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 70
    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcom/avira/android/antivirus/z;->c:Z

    .line 14
    iput-boolean v0, p0, Lcom/avira/android/antivirus/z;->d:Z

    .line 15
    iput-boolean v1, p0, Lcom/avira/android/antivirus/z;->e:Z

    .line 18
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/antivirus/z;->h:Ljava/util/concurrent/Semaphore;

    .line 19
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/antivirus/z;->i:Ljava/util/concurrent/Semaphore;

    .line 74
    iput-boolean v1, p0, Lcom/avira/android/antivirus/z;->e:Z

    .line 75
    sget-object v0, Lcom/avira/android/antivirus/z;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/antivirus/z;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/avira/android/antivirus/z;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/avira/android/antivirus/z;->h:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/avira/android/antivirus/aa;)V
    .locals 2

    .prologue
    .line 81
    const-class v1, Lcom/avira/android/antivirus/z;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/avira/android/antivirus/z;->g()V

    .line 83
    invoke-static {}, Lcom/avira/android/antivirus/z;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/avira/android/antivirus/z;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    monitor-exit v1

    return-void

    .line 89
    :cond_0
    :try_start_1
    invoke-interface {p0}, Lcom/avira/android/antivirus/aa;->a()V

    .line 90
    invoke-static {}, Lcom/avira/android/antivirus/z;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/avira/android/antivirus/z;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/avira/android/antivirus/z;->k()V

    return-void
.end method

.method public static declared-synchronized b()Z
    .locals 4

    .prologue
    .line 177
    const-class v2, Lcom/avira/android/antivirus/z;

    monitor-enter v2

    const/4 v0, 0x0

    .line 178
    :try_start_0
    sget-object v1, Lcom/avira/android/antivirus/z;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/z;

    .line 180
    invoke-direct {v0}, Lcom/avira/android/antivirus/z;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    .line 181
    goto :goto_0

    .line 182
    :cond_0
    monitor-exit v2

    return v1

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/avira/android/antivirus/z;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/avira/android/antivirus/z;->g:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 9
    invoke-static {}, Lcom/avira/android/antivirus/z;->i()V

    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/avira/android/antivirus/z;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 100
    iget-boolean v0, p0, Lcom/avira/android/antivirus/z;->d:Z

    .line 101
    iget-object v1, p0, Lcom/avira/android/antivirus/z;->h:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static declared-synchronized g()V
    .locals 3

    .prologue
    .line 113
    const-class v1, Lcom/avira/android/antivirus/z;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/antivirus/z;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/z;

    .line 115
    invoke-direct {v0}, Lcom/avira/android/antivirus/z;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 117
    :cond_0
    monitor-exit v1

    return-void
.end method

.method private declared-synchronized h()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/avira/android/antivirus/z;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static declared-synchronized i()V
    .locals 3

    .prologue
    .line 126
    const-class v1, Lcom/avira/android/antivirus/z;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/antivirus/z;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/z;

    .line 128
    invoke-direct {v0}, Lcom/avira/android/antivirus/z;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 130
    :cond_0
    monitor-exit v1

    return-void
.end method

.method private declared-synchronized j()V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/avira/android/antivirus/z;->c:Z

    .line 135
    invoke-direct {p0}, Lcom/avira/android/antivirus/z;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/avira/android/antivirus/z;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/avira/android/antivirus/z;->c:Z

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/z;->a(Z)V

    .line 144
    iget-boolean v0, p0, Lcom/avira/android/antivirus/z;->e:Z

    if-eqz v0, :cond_1

    .line 146
    new-instance v1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/avira/android/antivirus/z;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/avira/android/antivirus/z;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antivirus/z;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Lcom/avira/android/antivirus/ab;

    invoke-direct {v1, p0, p1}, Lcom/avira/android/antivirus/ab;-><init>(Lcom/avira/android/antivirus/z;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p0}, Lcom/avira/android/antivirus/z;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/avira/android/antivirus/z;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/antivirus/z;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/z;->a(Z)V

    .line 163
    iget-boolean v0, p0, Lcom/avira/android/antivirus/z;->e:Z

    if-eqz v0, :cond_1

    .line 165
    new-instance v1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/avira/android/antivirus/z;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/avira/android/antivirus/z;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antivirus/z;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 32
    iput-boolean p1, p0, Lcom/avira/android/antivirus/z;->d:Z

    .line 34
    iget-object v0, p0, Lcom/avira/android/antivirus/z;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/avira/android/antivirus/z;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 54
    iget-boolean v0, p0, Lcom/avira/android/antivirus/z;->d:Z

    .line 56
    iget-object v1, p0, Lcom/avira/android/antivirus/z;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
