.class final Lcom/google/android/gms/analytics/ax;
.super Lcom/google/android/gms/analytics/w;


# static fields
.field private static n:Lcom/google/android/gms/analytics/ax;

.field private static final ri:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/analytics/ai;

.field private volatile c:Lcom/google/android/gms/analytics/ak;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Lcom/google/android/gms/analytics/aj;

.field private k:Landroid/os/Handler;

.field private l:Lcom/google/android/gms/analytics/aw;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/ax;->ri:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/w;-><init>()V

    const/16 v0, 0x708

    iput v0, p0, Lcom/google/android/gms/analytics/ax;->d:I

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/ax;->e:Z

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/ax;->h:Z

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/ax;->i:Z

    new-instance v0, Lcom/google/android/gms/analytics/ay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/ay;-><init>(Lcom/google/android/gms/analytics/ax;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ax;->j:Lcom/google/android/gms/analytics/aj;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/ax;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/ax;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/ax;->d:I

    return v0
.end method

.method public static c()Lcom/google/android/gms/analytics/ax;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/ax;->n:Lcom/google/android/gms/analytics/ax;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/analytics/ax;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/ax;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/ax;->n:Lcom/google/android/gms/analytics/ax;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/ax;->n:Lcom/google/android/gms/analytics/ax;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/ax;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/ax;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/ax;->ri:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->c:Lcom/google/android/gms/analytics/ak;

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/analytics/bn;->a()Lcom/google/android/gms/analytics/bn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bo;->td:Lcom/google/android/gms/analytics/bo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bn;->a(Lcom/google/android/gms/analytics/bo;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->c:Lcom/google/android/gms/analytics/ak;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ak;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/analytics/ax;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/analytics/bn;->a()Lcom/google/android/gms/analytics/bn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bo;->te:Lcom/google/android/gms/analytics/bo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bn;->a(Lcom/google/android/gms/analytics/bo;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->m:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->h:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/analytics/ax;->d:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/ax;->ri:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    iput p1, p0, Lcom/google/android/gms/analytics/ax;->d:I

    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/ax;->ri:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/analytics/ak;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ax;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->c:Lcom/google/android/gms/analytics/ak;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/analytics/ax;->c:Lcom/google/android/gms/analytics/ak;

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ax;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->e:Z

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->c:Lcom/google/android/gms/analytics/ak;

    if-nez v0, :cond_3

    const-string v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->f:Z

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/analytics/bn;->a()Lcom/google/android/gms/analytics/bn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bo;->tq:Lcom/google/android/gms/analytics/bo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bn;->a(Lcom/google/android/gms/analytics/bo;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->c:Lcom/google/android/gms/analytics/ak;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ak;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->m:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/ax;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(ZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->m:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/analytics/ax;->d:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/ax;->ri:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/android/gms/analytics/ax;->d:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/ax;->ri:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/analytics/ax;->d:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "PowerSaveMode "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/ax;->m:Z

    iput-boolean p2, p0, Lcom/google/android/gms/analytics/ax;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/analytics/ax;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/ax;->ri:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/ax;->ri:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
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

.method final declared-synchronized d()Lcom/google/android/gms/analytics/ai;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->b:Lcom/google/android/gms/analytics/ai;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/analytics/r;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ax;->j:Lcom/google/android/gms/analytics/aj;

    iget-object v2, p0, Lcom/google/android/gms/analytics/ax;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/r;-><init>(Lcom/google/android/gms/analytics/aj;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ax;->b:Lcom/google/android/gms/analytics/ai;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->b:Lcom/google/android/gms/analytics/ai;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ai;->c()Lcom/google/android/gms/analytics/au;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/ax;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/au;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ax;->g:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ax;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/az;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/az;-><init>(Lcom/google/android/gms/analytics/ax;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    iget v0, p0, Lcom/google/android/gms/analytics/ax;->d:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ax;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/ax;->ri:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/analytics/ax;->d:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->l:Lcom/google/android/gms/analytics/aw;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ax;->i:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/analytics/aw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/aw;-><init>(Lcom/google/android/gms/analytics/w;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ax;->l:Lcom/google/android/gms/analytics/aw;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->l:Lcom/google/android/gms/analytics/aw;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ax;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/aw;->a(Landroid/content/Context;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/ax;->b:Lcom/google/android/gms/analytics/ai;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method
