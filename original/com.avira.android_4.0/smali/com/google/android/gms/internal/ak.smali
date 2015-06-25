.class public final Lcom/google/android/gms/internal/ak;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/cd;

.field private final b:Lcom/google/android/gms/internal/ay;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/Object;

.field private final e:Lcom/google/android/gms/internal/ao;

.field private f:Z

.field private g:Lcom/google/android/gms/internal/as;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/ao;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ak;->f:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/cd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ak;->b:Lcom/google/android/gms/internal/ay;

    iput-object p4, p0, Lcom/google/android/gms/internal/ak;->e:Lcom/google/android/gms/internal/ao;

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/internal/au;
    .locals 13

    const/4 v12, 0x3

    invoke-static {v12}, Lcom/google/android/gms/internal/ej;->a(I)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->e:Lcom/google/android/gms/internal/ao;

    iget-object v0, v0, Lcom/google/android/gms/internal/ao;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/an;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying mediation network: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/google/android/gms/internal/an;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(I)Z

    iget-object v0, v5, Lcom/google/android/gms/internal/an;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/internal/ak;->d:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ak;->f:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/au;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/au;-><init>(I)V

    monitor-exit v11

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/as;

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ak;->b:Lcom/google/android/gms/internal/ay;

    iget-object v4, p0, Lcom/google/android/gms/internal/ak;->e:Lcom/google/android/gms/internal/ao;

    iget-object v6, p0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/cd;

    iget-object v6, v6, Lcom/google/android/gms/internal/cd;->c:Lcom/google/android/gms/internal/z;

    iget-object v7, p0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/cd;

    iget-object v7, v7, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;

    iget-object v8, p0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/cd;

    iget-object v8, v8, Lcom/google/android/gms/internal/cd;->k:Lcom/google/android/gms/internal/db;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/as;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/ao;Lcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/db;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->g:Lcom/google/android/gms/internal/as;

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->g:Lcom/google/android/gms/internal/as;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/as;->a(J)Lcom/google/android/gms/internal/au;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/au;->a:I

    if-nez v1, :cond_3

    invoke-static {v12}, Lcom/google/android/gms/internal/ej;->a(I)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/au;->c:Lcom/google/android/gms/internal/bb;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ef;->pT:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/al;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/al;-><init>(Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/au;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/au;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/au;-><init>(I)V

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->d:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ak;->f:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->g:Lcom/google/android/gms/internal/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->g:Lcom/google/android/gms/internal/as;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/as;->a()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
