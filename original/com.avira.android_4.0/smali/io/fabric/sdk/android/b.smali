.class public Lio/fabric/sdk/android/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_DEBUGGABLE:Z = false

.field static final DEFAULT_LOGGER:Lio/fabric/sdk/android/q;

.field static final ROOT_DIR:Ljava/lang/String; = ".Fabric"

.field public static final TAG:Ljava/lang/String; = "Fabric"

.field static volatile a:Lio/fabric/sdk/android/b;


# instance fields
.field final b:Lio/fabric/sdk/android/q;

.field final c:Z

.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/k;",
            ">;",
            "Lio/fabric/sdk/android/k;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private final g:Landroid/os/Handler;

.field private final h:Lio/fabric/sdk/android/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/g",
            "<",
            "Lio/fabric/sdk/android/b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lio/fabric/sdk/android/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/g",
            "<*>;"
        }
    .end annotation
.end field

.field private final j:Lio/fabric/sdk/android/services/b/y;

.field private k:Lio/fabric/sdk/android/m;

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lio/fabric/sdk/android/r;

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lio/fabric/sdk/android/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/a;-><init>(B)V

    sput-object v0, Lio/fabric/sdk/android/b;->DEFAULT_LOGGER:Lio/fabric/sdk/android/q;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lio/fabric/sdk/android/services/concurrency/v;Landroid/os/Handler;Lio/fabric/sdk/android/q;ZLio/fabric/sdk/android/g;Lio/fabric/sdk/android/services/b/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/k;",
            ">;",
            "Lio/fabric/sdk/android/k;",
            ">;",
            "Lio/fabric/sdk/android/services/concurrency/v;",
            "Landroid/os/Handler;",
            "Lio/fabric/sdk/android/q;",
            "Z",
            "Lio/fabric/sdk/android/g;",
            "Lio/fabric/sdk/android/services/b/y;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lio/fabric/sdk/android/b;->d:Landroid/content/Context;

    .line 266
    iput-object p2, p0, Lio/fabric/sdk/android/b;->e:Ljava/util/Map;

    .line 267
    iput-object p3, p0, Lio/fabric/sdk/android/b;->f:Ljava/util/concurrent/ExecutorService;

    .line 268
    iput-object p4, p0, Lio/fabric/sdk/android/b;->g:Landroid/os/Handler;

    .line 269
    iput-object p5, p0, Lio/fabric/sdk/android/b;->b:Lio/fabric/sdk/android/q;

    .line 270
    iput-boolean p6, p0, Lio/fabric/sdk/android/b;->c:Z

    .line 271
    iput-object p7, p0, Lio/fabric/sdk/android/b;->h:Lio/fabric/sdk/android/g;

    .line 272
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/fabric/sdk/android/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 273
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Lio/fabric/sdk/android/d;

    invoke-direct {v1, p0, v0}, Lio/fabric/sdk/android/d;-><init>(Lio/fabric/sdk/android/b;I)V

    iput-object v1, p0, Lio/fabric/sdk/android/b;->i:Lio/fabric/sdk/android/g;

    .line 274
    iput-object p8, p0, Lio/fabric/sdk/android/b;->j:Lio/fabric/sdk/android/services/b/y;

    .line 275
    return-void
.end method

.method public static varargs a(Landroid/content/Context;[Lio/fabric/sdk/android/k;)Lio/fabric/sdk/android/b;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 289
    sget-object v0, Lio/fabric/sdk/android/b;->a:Lio/fabric/sdk/android/b;

    if-nez v0, :cond_6

    .line 290
    const-class v2, Lio/fabric/sdk/android/b;

    monitor-enter v2

    .line 291
    :try_start_0
    sget-object v0, Lio/fabric/sdk/android/b;->a:Lio/fabric/sdk/android/b;

    if-nez v0, :cond_5

    .line 292
    new-instance v0, Lio/fabric/sdk/android/e;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/e;->a([Lio/fabric/sdk/android/k;)Lio/fabric/sdk/android/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/e;->a()Lio/fabric/sdk/android/b;

    move-result-object v3

    sput-object v3, Lio/fabric/sdk/android/b;->a:Lio/fabric/sdk/android/b;

    iget-object v0, v3, Lio/fabric/sdk/android/b;->d:Landroid/content/Context;

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    invoke-virtual {v3, v0}, Lio/fabric/sdk/android/b;->a(Landroid/app/Activity;)Lio/fabric/sdk/android/b;

    new-instance v0, Lio/fabric/sdk/android/m;

    iget-object v4, v3, Lio/fabric/sdk/android/b;->d:Landroid/content/Context;

    invoke-direct {v0, v4}, Lio/fabric/sdk/android/m;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lio/fabric/sdk/android/b;->k:Lio/fabric/sdk/android/m;

    iget-object v0, v3, Lio/fabric/sdk/android/b;->k:Lio/fabric/sdk/android/m;

    new-instance v4, Lio/fabric/sdk/android/c;

    invoke-direct {v4, v3}, Lio/fabric/sdk/android/c;-><init>(Lio/fabric/sdk/android/b;)V

    invoke-virtual {v0, v4}, Lio/fabric/sdk/android/m;->a(Lio/fabric/sdk/android/n;)Z

    iget-object v4, v3, Lio/fabric/sdk/android/b;->d:Landroid/content/Context;

    iget-object v0, v3, Lio/fabric/sdk/android/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v5, Lio/fabric/sdk/android/r;

    invoke-direct {v5, v0}, Lio/fabric/sdk/android/r;-><init>(Ljava/util/Collection;)V

    iput-object v5, v3, Lio/fabric/sdk/android/b;->m:Lio/fabric/sdk/android/r;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, v3, Lio/fabric/sdk/android/b;->m:Lio/fabric/sdk/android/r;

    sget-object v6, Lio/fabric/sdk/android/g;->EMPTY:Lio/fabric/sdk/android/g;

    iget-object v7, v3, Lio/fabric/sdk/android/b;->j:Lio/fabric/sdk/android/services/b/y;

    invoke-virtual {v0, v4, v3, v6, v7}, Lio/fabric/sdk/android/r;->injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/b;Lio/fabric/sdk/android/g;Lio/fabric/sdk/android/services/b/y;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/k;

    iget-object v7, v3, Lio/fabric/sdk/android/b;->i:Lio/fabric/sdk/android/g;

    iget-object v8, v3, Lio/fabric/sdk/android/b;->j:Lio/fabric/sdk/android/services/b/y;

    invoke-virtual {v0, v4, v3, v7, v8}, Lio/fabric/sdk/android/k;->injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/b;Lio/fabric/sdk/android/g;Lio/fabric/sdk/android/services/b/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    move-object v0, v1

    .line 292
    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, v3, Lio/fabric/sdk/android/b;->m:Lio/fabric/sdk/android/r;

    invoke-virtual {v0}, Lio/fabric/sdk/android/r;->initialize()V

    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Lio/fabric/sdk/android/q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing io.fabric.sdk.android:fabric [Version: 1.1.0.25], with the following kits:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/k;

    iget-object v5, v0, Lio/fabric/sdk/android/k;->initializationTask:Lio/fabric/sdk/android/j;

    iget-object v6, v3, Lio/fabric/sdk/android/b;->m:Lio/fabric/sdk/android/r;

    iget-object v6, v6, Lio/fabric/sdk/android/r;->initializationTask:Lio/fabric/sdk/android/j;

    invoke-virtual {v5, v6}, Lio/fabric/sdk/android/j;->a(Lio/fabric/sdk/android/services/concurrency/x;)V

    iget-object v5, v3, Lio/fabric/sdk/android/b;->e:Ljava/util/Map;

    invoke-static {v5, v0}, Lio/fabric/sdk/android/b;->a(Ljava/util/Map;Lio/fabric/sdk/android/k;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/k;->initialize()V

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lio/fabric/sdk/android/k;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [Version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lio/fabric/sdk/android/k;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 294
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    :cond_6
    sget-object v0, Lio/fabric/sdk/android/b;->a:Lio/fabric/sdk/android/b;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lio/fabric/sdk/android/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/fabric/sdk/android/k;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 502
    sget-object v0, Lio/fabric/sdk/android/b;->a:Lio/fabric/sdk/android/b;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must Initialize Fabric before using singleton()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lio/fabric/sdk/android/b;->a:Lio/fabric/sdk/android/b;

    iget-object v0, v0, Lio/fabric/sdk/android/b;->e:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/k;

    return-object v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v0, p0}, Lio/fabric/sdk/android/b;->a(Ljava/util/Map;Ljava/util/Collection;)V

    return-object v0
.end method

.method static synthetic a(Lio/fabric/sdk/android/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/fabric/sdk/android/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static a(Ljava/util/Map;Lio/fabric/sdk/android/k;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/k;",
            ">;",
            "Lio/fabric/sdk/android/k;",
            ">;",
            "Lio/fabric/sdk/android/k;",
            ")V"
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/fabric/sdk/android/services/concurrency/m;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/m;

    .line 439
    if-eqz v0, :cond_4

    .line 440
    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/m;->a()[Ljava/lang/Class;

    move-result-object v2

    .line 441
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 442
    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/k;

    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 446
    iget-object v6, p1, Lio/fabric/sdk/android/k;->initializationTask:Lio/fabric/sdk/android/j;

    iget-object v0, v0, Lio/fabric/sdk/android/k;->initializationTask:Lio/fabric/sdk/android/j;

    invoke-virtual {v6, v0}, Lio/fabric/sdk/android/j;->a(Lio/fabric/sdk/android/services/concurrency/x;)V

    goto :goto_1

    .line 452
    :cond_1
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/k;

    .line 453
    if-nez v0, :cond_2

    .line 454
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/y;

    const-string v1, "Referenced Kit was null, does the kit exist?"

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/concurrency/y;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_2
    iget-object v5, p1, Lio/fabric/sdk/android/k;->initializationTask:Lio/fabric/sdk/android/j;

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/k;

    iget-object v0, v0, Lio/fabric/sdk/android/k;->initializationTask:Lio/fabric/sdk/android/j;

    invoke-virtual {v5, v0}, Lio/fabric/sdk/android/j;->a(Lio/fabric/sdk/android/services/concurrency/x;)V

    .line 441
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 463
    :cond_4
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lio/fabric/sdk/android/k;",
            ">;",
            "Lio/fabric/sdk/android/k;",
            ">;",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/k;

    .line 559
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    instance-of v2, v0, Lio/fabric/sdk/android/l;

    if-eqz v2, :cond_0

    .line 562
    check-cast v0, Lio/fabric/sdk/android/l;

    invoke-interface {v0}, Lio/fabric/sdk/android/l;->getKits()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lio/fabric/sdk/android/b;->a(Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_0

    .line 565
    :cond_1
    return-void
.end method

.method static synthetic b(Lio/fabric/sdk/android/b;)Lio/fabric/sdk/android/g;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/fabric/sdk/android/b;->h:Lio/fabric/sdk/android/g;

    return-object v0
.end method

.method public static c()Lio/fabric/sdk/android/q;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lio/fabric/sdk/android/b;->a:Lio/fabric/sdk/android/b;

    if-nez v0, :cond_0

    .line 510
    sget-object v0, Lio/fabric/sdk/android/b;->DEFAULT_LOGGER:Lio/fabric/sdk/android/q;

    .line 512
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/fabric/sdk/android/b;->a:Lio/fabric/sdk/android/b;

    iget-object v0, v0, Lio/fabric/sdk/android/b;->b:Lio/fabric/sdk/android/q;

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 519
    sget-object v0, Lio/fabric/sdk/android/b;->a:Lio/fabric/sdk/android/b;

    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 522
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/fabric/sdk/android/b;->a:Lio/fabric/sdk/android/b;

    iget-boolean v0, v0, Lio/fabric/sdk/android/b;->c:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lio/fabric/sdk/android/b;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lio/fabric/sdk/android/b;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 340
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)Lio/fabric/sdk/android/b;
    .locals 1

    .prologue
    .line 328
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/fabric/sdk/android/b;->l:Ljava/lang/ref/WeakReference;

    .line 329
    return-object p0
.end method

.method public final b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lio/fabric/sdk/android/b;->f:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
