.class public final Lcom/google/android/gms/internal/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/av;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ay;

.field private final c:J

.field private final d:Lcom/google/android/gms/internal/an;

.field private final e:Lcom/google/android/gms/internal/z;

.field private final f:Lcom/google/android/gms/internal/ab;

.field private final g:Landroid/content/Context;

.field private final h:Ljava/lang/Object;

.field private final i:Lcom/google/android/gms/internal/db;

.field private j:Lcom/google/android/gms/internal/bb;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/ao;Lcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/db;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/as;->h:Ljava/lang/Object;

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/as;->k:I

    iput-object p1, p0, Lcom/google/android/gms/internal/as;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/as;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/as;->b:Lcom/google/android/gms/internal/ay;

    iget-wide v0, p4, Lcom/google/android/gms/internal/ao;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p4, Lcom/google/android/gms/internal/ao;->b:J

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/as;->c:J

    iput-object p5, p0, Lcom/google/android/gms/internal/as;->d:Lcom/google/android/gms/internal/an;

    iput-object p6, p0, Lcom/google/android/gms/internal/as;->e:Lcom/google/android/gms/internal/z;

    iput-object p7, p0, Lcom/google/android/gms/internal/as;->f:Lcom/google/android/gms/internal/ab;

    iput-object p8, p0, Lcom/google/android/gms/internal/as;->i:Lcom/google/android/gms/internal/db;

    return-void

    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/as;Lcom/google/android/gms/internal/bb;)Lcom/google/android/gms/internal/bb;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/as;->j:Lcom/google/android/gms/internal/bb;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/as;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/as;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/as;Lcom/google/android/gms/internal/ar;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/as;->i:Lcom/google/android/gms/internal/db;

    iget v0, v0, Lcom/google/android/gms/internal/db;->d:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/as;->f:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/as;->j:Lcom/google/android/gms/internal/bb;

    iget-object v1, p0, Lcom/google/android/gms/internal/as;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/b/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/as;->e:Lcom/google/android/gms/internal/z;

    iget-object v3, p0, Lcom/google/android/gms/internal/as;->d:Lcom/google/android/gms/internal/an;

    iget-object v3, v3, Lcom/google/android/gms/internal/an;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/b/h;Lcom/google/android/gms/internal/z;Ljava/lang/String;Lcom/google/android/gms/internal/be;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/as;->j:Lcom/google/android/gms/internal/bb;

    iget-object v1, p0, Lcom/google/android/gms/internal/as;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/b/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/as;->f:Lcom/google/android/gms/internal/ab;

    iget-object v3, p0, Lcom/google/android/gms/internal/as;->e:Lcom/google/android/gms/internal/z;

    iget-object v4, p0, Lcom/google/android/gms/internal/as;->d:Lcom/google/android/gms/internal/an;

    iget-object v4, v4, Lcom/google/android/gms/internal/an;->f:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/b/h;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Lcom/google/android/gms/internal/be;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not request ad from mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/as;->a(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/as;->f:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/as;->j:Lcom/google/android/gms/internal/bb;

    iget-object v1, p0, Lcom/google/android/gms/internal/as;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/b/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/as;->e:Lcom/google/android/gms/internal/z;

    iget-object v3, p0, Lcom/google/android/gms/internal/as;->d:Lcom/google/android/gms/internal/an;

    iget-object v3, v3, Lcom/google/android/gms/internal/an;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/as;->d:Lcom/google/android/gms/internal/an;

    iget-object v4, v4, Lcom/google/android/gms/internal/an;->a:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/b/h;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/be;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/as;->j:Lcom/google/android/gms/internal/bb;

    iget-object v1, p0, Lcom/google/android/gms/internal/as;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/b/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/as;->f:Lcom/google/android/gms/internal/ab;

    iget-object v3, p0, Lcom/google/android/gms/internal/as;->e:Lcom/google/android/gms/internal/z;

    iget-object v4, p0, Lcom/google/android/gms/internal/as;->d:Lcom/google/android/gms/internal/an;

    iget-object v4, v4, Lcom/google/android/gms/internal/an;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/as;->d:Lcom/google/android/gms/internal/an;

    iget-object v5, v5, Lcom/google/android/gms/internal/an;->a:Ljava/lang/String;

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/b/h;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/be;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/as;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/as;->k:I

    return v0
.end method

.method private b()Lcom/google/android/gms/internal/bb;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Instantiating mediation adapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/as;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/as;->b:Lcom/google/android/gms/internal/ay;

    iget-object v1, p0, Lcom/google/android/gms/internal/as;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ay;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/bb;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not instantiate mediation adapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/as;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(I)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/as;)Lcom/google/android/gms/internal/bb;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/as;->b()Lcom/google/android/gms/internal/bb;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/as;)Lcom/google/android/gms/internal/bb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/as;->j:Lcom/google/android/gms/internal/bb;

    return-object v0
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/internal/au;
    .locals 15

    iget-object v6, p0, Lcom/google/android/gms/internal/as;->h:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v4, Lcom/google/android/gms/internal/ar;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ar;-><init>()V

    sget-object v2, Lcom/google/android/gms/internal/ef;->pT:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/at;

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/at;-><init>(Lcom/google/android/gms/internal/as;Lcom/google/android/gms/internal/ar;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/as;->c:J

    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/as;->k:I

    const/4 v7, -0x2

    if-ne v5, v7, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v10, v8, v0

    sub-long v10, v2, v10

    const-wide/32 v12, 0xea60

    sub-long v8, v8, p1

    sub-long v8, v12, v8

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v5, v8, v12

    if-gtz v5, :cond_1

    :cond_0
    const/4 v5, 0x4

    invoke-static {v5}, Lcom/google/android/gms/internal/ej;->a(I)Z

    const/4 v5, 0x3

    iput v5, p0, Lcom/google/android/gms/internal/as;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/internal/as;->h:Ljava/lang/Object;

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    const/4 v5, -0x1

    :try_start_2
    iput v5, p0, Lcom/google/android/gms/internal/as;->k:I

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/au;

    iget-object v1, p0, Lcom/google/android/gms/internal/as;->d:Lcom/google/android/gms/internal/an;

    iget-object v2, p0, Lcom/google/android/gms/internal/as;->j:Lcom/google/android/gms/internal/bb;

    iget-object v3, p0, Lcom/google/android/gms/internal/as;->a:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/internal/as;->k:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/au;-><init>(Lcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/bb;Ljava/lang/String;Lcom/google/android/gms/internal/ar;I)V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0
.end method

.method public final a()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/as;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/as;->j:Lcom/google/android/gms/internal/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/as;->j:Lcom/google/android/gms/internal/bb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bb;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/as;->k:I

    iget-object v0, p0, Lcom/google/android/gms/internal/as;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Could not destroy mediation adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/as;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/as;->k:I

    iget-object v0, p0, Lcom/google/android/gms/internal/as;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
