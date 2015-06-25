.class public final Lcom/google/android/gms/internal/cm;
.super Lcom/google/android/gms/internal/du;

# interfaces
.implements Lcom/google/android/gms/internal/cs;
.implements Lcom/google/android/gms/internal/ep;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ay;

.field private final b:Lcom/google/android/gms/internal/cl;

.field private final c:Lcom/google/android/gms/internal/el;

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/Object;

.field private final g:Lcom/google/android/gms/internal/cx;

.field private final h:Lcom/google/android/gms/internal/lf;

.field private i:Lcom/google/android/gms/internal/du;

.field private j:Lcom/google/android/gms/internal/cf;

.field private k:Z

.field private l:Lcom/google/android/gms/internal/ak;

.field private m:Lcom/google/android/gms/internal/ao;

.field private n:Lcom/google/android/gms/internal/au;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/el;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/cl;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/du;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cm;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cm;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cm;->k:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/cm;->a:Lcom/google/android/gms/internal/ay;

    iput-object p6, p0, Lcom/google/android/gms/internal/cm;->b:Lcom/google/android/gms/internal/cl;

    iput-object p4, p0, Lcom/google/android/gms/internal/cm;->c:Lcom/google/android/gms/internal/el;

    iput-object p1, p0, Lcom/google/android/gms/internal/cm;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/cm;->g:Lcom/google/android/gms/internal/cx;

    iput-object p3, p0, Lcom/google/android/gms/internal/cm;->h:Lcom/google/android/gms/internal/lf;

    return-void
.end method

.method private a(Lcom/google/android/gms/internal/cd;)Lcom/google/android/gms/internal/ab;
    .locals 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cq;

    const-string v1, "The ad response must specify one of the supported ad sizes."

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-object v0, v0, Lcom/google/android/gms/internal/cf;->m:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-object v2, v2, Lcom/google/android/gms/internal/cf;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    iget-object v0, p1, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;

    iget-object v6, v0, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;

    array-length v7, v6

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_5

    aget-object v8, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget v0, v8, Lcom/google/android/gms/internal/ab;->f:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    iget v0, v8, Lcom/google/android/gms/internal/ab;->g:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    iget v9, v8, Lcom/google/android/gms/internal/ab;->c:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_3

    iget v9, v8, Lcom/google/android/gms/internal/ab;->d:I

    int-to-float v9, v9

    div-float v1, v9, v1

    float-to-int v1, v1

    :goto_2
    if-ne v4, v0, :cond_4

    if-ne v5, v1, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ab;

    iget-object v1, p1, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;

    iget-object v1, v1, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;

    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/ab;-><init>(Lcom/google/android/gms/internal/ab;[Lcom/google/android/gms/internal/ab;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse the ad size from the ad response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-object v2, v2, Lcom/google/android/gms/internal/cf;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget v0, v8, Lcom/google/android/gms/internal/ab;->f:I

    goto :goto_1

    :cond_3
    iget v1, v8, Lcom/google/android/gms/internal/ab;->c:I

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/cq;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The ad size from the ad response was not one of the requested sizes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-object v2, v2, Lcom/google/android/gms/internal/cf;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cm;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private a(J)V
    .locals 3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cm;->b(J)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/cq;

    const-string v1, "Timed out waiting for WebView to finish loading."

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cm;->k:Z

    if-eqz v0, :cond_0

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/cm;)Lcom/google/android/gms/internal/cl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->b:Lcom/google/android/gms/internal/cl;

    return-object v0
.end method

.method private b(J)Z
    .locals 5

    const-wide/32 v0, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cm;->f:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/cq;

    const-string v1, "Ad request cancelled."

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/cm;)Lcom/google/android/gms/internal/cf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/cm;)Lcom/google/android/gms/internal/el;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->c:Lcom/google/android/gms/internal/el;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cm;->f:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    const/4 v2, 0x3

    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ej;->a(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cm;->h:Lcom/google/android/gms/internal/lf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/lf;->a()Lcom/google/android/gms/internal/ix;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/cm;->e:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ix;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v12, Lcom/google/android/gms/internal/cd;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/cm;->g:Lcom/google/android/gms/internal/cx;

    invoke-direct {v12, v3, v2}, Lcom/google/android/gms/internal/cd;-><init>(Lcom/google/android/gms/internal/cx;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v6, -0x2

    const-wide/16 v4, -0x1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cm;->e:Landroid/content/Context;

    iget-object v2, v12, Lcom/google/android/gms/internal/cd;->k:Lcom/google/android/gms/internal/db;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/db;->e:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ej;->a(I)Z

    new-instance v2, Lcom/google/android/gms/internal/cu;

    move-object/from16 v0, p0

    invoke-direct {v2, v7, v12, v0}, Lcom/google/android/gms/internal/cu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cs;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/cu;->e()V

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cm;->d:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catch Lcom/google/android/gms/internal/cq; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cm;->i:Lcom/google/android/gms/internal/du;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cm;->i:Lcom/google/android/gms/internal/du;

    if-nez v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/cq;

    const-string v6, "Could not start the ad request service."

    const/4 v8, 0x0

    invoke-direct {v2, v6, v8}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v7

    throw v2
    :try_end_3
    .catch Lcom/google/android/gms/internal/cq; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cq;->a()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cq;->getMessage()Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/google/android/gms/internal/ej;->a(I)Z

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/cf;

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/cf;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    sget-object v2, Lcom/google/android/gms/internal/ef;->pT:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/cn;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/cn;-><init>(Lcom/google/android/gms/internal/cm;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v24, v4

    move-object/from16 v21, v3

    :goto_2
    new-instance v2, Lcom/google/android/gms/internal/dn;

    iget-object v3, v12, Lcom/google/android/gms/internal/cd;->c:Lcom/google/android/gms/internal/z;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/cm;->c:Lcom/google/android/gms/internal/el;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-object v5, v5, Lcom/google/android/gms/internal/cf;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-object v7, v7, Lcom/google/android/gms/internal/cf;->f:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-object v8, v8, Lcom/google/android/gms/internal/cf;->j:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget v9, v9, Lcom/google/android/gms/internal/cf;->l:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-wide v10, v10, Lcom/google/android/gms/internal/cf;->k:J

    iget-object v12, v12, Lcom/google/android/gms/internal/cd;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-boolean v13, v13, Lcom/google/android/gms/internal/cf;->h:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/cm;->n:Lcom/google/android/gms/internal/au;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/cm;->n:Lcom/google/android/gms/internal/au;

    iget-object v14, v14, Lcom/google/android/gms/internal/au;->b:Lcom/google/android/gms/internal/an;

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/cm;->n:Lcom/google/android/gms/internal/au;

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/internal/cm;->n:Lcom/google/android/gms/internal/au;

    iget-object v15, v15, Lcom/google/android/gms/internal/au;->c:Lcom/google/android/gms/internal/bb;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cm;->n:Lcom/google/android/gms/internal/au;

    move-object/from16 v16, v0

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cm;->n:Lcom/google/android/gms/internal/au;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/internal/au;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cm;->m:Lcom/google/android/gms/internal/ao;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cm;->n:Lcom/google/android/gms/internal/au;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cm;->n:Lcom/google/android/gms/internal/au;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/internal/au;->e:Lcom/google/android/gms/internal/ar;

    move-object/from16 v18, v0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/google/android/gms/internal/cf;->i:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/google/android/gms/internal/cf;->g:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/google/android/gms/internal/cf;->n:J

    move-wide/from16 v26, v0

    invoke-direct/range {v2 .. v27}, Lcom/google/android/gms/internal/dn;-><init>(Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/el;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/an;Lcom/google/android/gms/internal/bb;Ljava/lang/String;Lcom/google/android/gms/internal/ao;Lcom/google/android/gms/internal/ar;JLcom/google/android/gms/internal/ab;JJJ)V

    sget-object v3, Lcom/google/android/gms/internal/ef;->pT:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/internal/co;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/co;-><init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/dn;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :cond_1
    const/4 v2, 0x3

    :try_start_5
    invoke-static {v2}, Lcom/google/android/gms/internal/ej;->a(I)Z

    invoke-static {v7}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Failed to connect to remote ad request service."

    invoke-static {v2}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/cv;

    move-object/from16 v0, p0

    invoke-direct {v2, v7, v12, v0}, Lcom/google/android/gms/internal/cv;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/cs;)V
    :try_end_5
    .catch Lcom/google/android/gms/internal/cq; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v28

    throw v2

    :cond_3
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_4
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/cm;->b(J)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lcom/google/android/gms/internal/cq;

    const-string v6, "Timed out waiting for ad response."

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cm;->d:Ljava/lang/Object;

    monitor-enter v7
    :try_end_7
    .catch Lcom/google/android/gms/internal/cq; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cm;->i:Lcom/google/android/gms/internal/du;

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget v2, v2, Lcom/google/android/gms/internal/cf;->e:I

    const/4 v7, -0x2

    if-eq v2, v7, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget v2, v2, Lcom/google/android/gms/internal/cf;->e:I

    const/4 v7, -0x3

    if-eq v2, v7, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/cq;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "There was a problem getting an ad response. ErrorCode: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget v7, v7, Lcom/google/android/gms/internal/cf;->e:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget v7, v7, Lcom/google/android/gms/internal/cf;->e:I

    invoke-direct {v2, v6, v7}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_2
    move-exception v2

    monitor-exit v7

    throw v2

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget v2, v2, Lcom/google/android/gms/internal/cf;->e:I

    const/4 v7, -0x3

    if-eq v2, v7, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-object v2, v2, Lcom/google/android/gms/internal/cf;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/cq;

    const-string v6, "No fill from ad server."

    const/4 v7, 0x3

    invoke-direct {v2, v6, v7}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/cf;->h:Z
    :try_end_9
    .catch Lcom/google/android/gms/internal/cq; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_8

    :try_start_a
    new-instance v2, Lcom/google/android/gms/internal/ao;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-object v7, v7, Lcom/google/android/gms/internal/cf;->c:Ljava/lang/String;

    invoke-direct {v2, v7}, Lcom/google/android/gms/internal/ao;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cm;->m:Lcom/google/android/gms/internal/ao;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/google/android/gms/internal/cq; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_8
    :try_start_b
    iget-object v2, v12, Lcom/google/android/gms/internal/cd;->d:Lcom/google/android/gms/internal/ab;

    iget-object v2, v2, Lcom/google/android/gms/internal/ab;->h:[Lcom/google/android/gms/internal/ab;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/cm;->a(Lcom/google/android/gms/internal/cd;)Lcom/google/android/gms/internal/ab;

    move-result-object v3

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/cf;->h:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cm;->d:Ljava/lang/Object;

    monitor-enter v7
    :try_end_b
    .catch Lcom/google/android/gms/internal/cq; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    new-instance v2, Lcom/google/android/gms/internal/ak;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/cm;->e:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/cm;->a:Lcom/google/android/gms/internal/ay;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/cm;->m:Lcom/google/android/gms/internal/ao;

    invoke-direct {v2, v10, v12, v11, v13}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/ao;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cm;->l:Lcom/google/android/gms/internal/ak;

    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cm;->l:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/ak;->a(J)Lcom/google/android/gms/internal/au;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/cm;->n:Lcom/google/android/gms/internal/au;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/cm;->n:Lcom/google/android/gms/internal/au;

    iget v2, v2, Lcom/google/android/gms/internal/au;->a:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lcom/google/android/gms/internal/cq;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected mediation result: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cm;->n:Lcom/google/android/gms/internal/au;

    iget v7, v7, Lcom/google/android/gms/internal/au;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v2

    :catch_1
    move-exception v2

    new-instance v2, Lcom/google/android/gms/internal/cq;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not parse mediation config: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-object v7, v7, Lcom/google/android/gms/internal/cf;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v2

    :catchall_3
    move-exception v2

    monitor-exit v7

    throw v2

    :pswitch_0
    move-wide/from16 v24, v4

    move-object/from16 v21, v3

    goto/16 :goto_2

    :pswitch_1
    new-instance v2, Lcom/google/android/gms/internal/cq;

    const-string v6, "No fill from any mediation ad networks."

    const/4 v7, 0x3

    invoke-direct {v2, v6, v7}, Lcom/google/android/gms/internal/cq;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_a
    sget-object v2, Lcom/google/android/gms/internal/ef;->pT:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/cp;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/cp;-><init>(Lcom/google/android/gms/internal/cm;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/cm;->a(J)V
    :try_end_d
    .catch Lcom/google/android/gms/internal/cq; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-wide/from16 v24, v4

    move-object/from16 v21, v3

    goto/16 :goto_2

    :cond_b
    :try_start_e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cq;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_1

    :cond_c
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/android/gms/internal/cf;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cm;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(I)Z

    iput-object p1, p0, Lcom/google/android/gms/internal/cm;->j:Lcom/google/android/gms/internal/cf;

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->f:Ljava/lang/Object;

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

.method public final a(Lcom/google/android/gms/internal/el;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cm;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cm;->k:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->f:Ljava/lang/Object;

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

.method public final c_()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cm;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->i:Lcom/google/android/gms/internal/du;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->i:Lcom/google/android/gms/internal/du;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/du;->f()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->c:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->stopLoading()V

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->c:Lcom/google/android/gms/internal/el;

    invoke-static {v0}, Lcom/google/android/gms/internal/dz;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->l:Lcom/google/android/gms/internal/ak;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cm;->l:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->a()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
