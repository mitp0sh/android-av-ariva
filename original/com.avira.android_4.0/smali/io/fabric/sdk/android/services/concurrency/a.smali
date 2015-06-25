.class public abstract Lio/fabric/sdk/android/services/concurrency/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile a:Ljava/util/concurrent/Executor;

.field private static final handler:Lio/fabric/sdk/android/services/concurrency/g;

.field private static final poolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final b:Lio/fabric/sdk/android/services/concurrency/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/concurrency/k",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile d:Lio/fabric/sdk/android/services/concurrency/j;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 186
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 187
    sput v0, Lio/fabric/sdk/android/services/concurrency/a;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/fabric/sdk/android/services/concurrency/a;->CORE_POOL_SIZE:I

    .line 188
    sget v0, Lio/fabric/sdk/android/services/concurrency/a;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/fabric/sdk/android/services/concurrency/a;->MAXIMUM_POOL_SIZE:I

    .line 191
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/b;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/a;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 199
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/a;->poolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 205
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lio/fabric/sdk/android/services/concurrency/a;->CORE_POOL_SIZE:I

    sget v3, Lio/fabric/sdk/android/services/concurrency/a;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lio/fabric/sdk/android/services/concurrency/a;->poolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lio/fabric/sdk/android/services/concurrency/a;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lio/fabric/sdk/android/services/concurrency/a;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 213
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/concurrency/h;-><init>(B)V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/a;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 218
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/g;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/g;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/a;->handler:Lio/fabric/sdk/android/services/concurrency/g;

    .line 220
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/a;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lio/fabric/sdk/android/services/concurrency/a;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/j;->PENDING:Lio/fabric/sdk/android/services/concurrency/j;

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->d:Lio/fabric/sdk/android/services/concurrency/j;

    .line 226
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 288
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/c;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/concurrency/c;-><init>(Lio/fabric/sdk/android/services/concurrency/a;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->b:Lio/fabric/sdk/android/services/concurrency/k;

    .line 298
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/d;

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/a;->b:Lio/fabric/sdk/android/services/concurrency/k;

    invoke-direct {v0, p0, v1}, Lio/fabric/sdk/android/services/concurrency/d;-><init>(Lio/fabric/sdk/android/services/concurrency/a;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->c:Ljava/util/concurrent/FutureTask;

    .line 313
    return-void
.end method

.method static synthetic a(Lio/fabric/sdk/android/services/concurrency/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lio/fabric/sdk/android/services/concurrency/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lio/fabric/sdk/android/services/concurrency/a;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 324
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/a;->handler:Lio/fabric/sdk/android/services/concurrency/g;

    new-instance v1, Lio/fabric/sdk/android/services/concurrency/f;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lio/fabric/sdk/android/services/concurrency/f;-><init>(Lio/fabric/sdk/android/services/concurrency/a;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lio/fabric/sdk/android/services/concurrency/g;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 327
    return-object p1
.end method

.method static synthetic c(Lio/fabric/sdk/android/services/concurrency/a;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a;->b(Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/j;->FINISHED:Lio/fabric/sdk/android/services/concurrency/j;

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->d:Lio/fabric/sdk/android/services/concurrency/j;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/a;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected static varargs d()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 393
    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lio/fabric/sdk/android/services/concurrency/a",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->d:Lio/fabric/sdk/android/services/concurrency/j;

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/j;->PENDING:Lio/fabric/sdk/android/services/concurrency/j;

    if-eq v0, v1, :cond_0

    .line 580
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/e;->$SwitchMap$io$fabric$sdk$android$services$concurrency$AsyncTask$Status:[I

    iget-object v1, p0, Lio/fabric/sdk/android/services/concurrency/a;->d:Lio/fabric/sdk/android/services/concurrency/j;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/concurrency/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 592
    :cond_0
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/j;->RUNNING:Lio/fabric/sdk/android/services/concurrency/j;

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->d:Lio/fabric/sdk/android/services/concurrency/j;

    .line 594
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/a;->a()V

    .line 596
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->b:Lio/fabric/sdk/android/services/concurrency/k;

    iput-object p2, v0, Lio/fabric/sdk/android/services/concurrency/k;->b:[Ljava/lang/Object;

    .line 597
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->c:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 599
    return-object p0

    .line 582
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 364
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 380
    return-void
.end method

.method protected varargs abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 411
    return-void
.end method

.method public final c()Lio/fabric/sdk/android/services/concurrency/j;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->d:Lio/fabric/sdk/android/services/concurrency/j;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 473
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 474
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/a;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method
