.class abstract Landroid/support/v4/content/s;
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
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile a:Ljava/util/concurrent/Executor;

.field private static final sHandler:Landroid/support/v4/content/y;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final b:Landroid/support/v4/content/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/aa",
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

.field private volatile d:Landroid/support/v4/content/z;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 54
    new-instance v0, Landroid/support/v4/content/t;

    invoke-direct {v0}, Landroid/support/v4/content/t;-><init>()V

    sput-object v0, Landroid/support/v4/content/s;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 62
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/support/v4/content/s;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 68
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Landroid/support/v4/content/s;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Landroid/support/v4/content/s;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Landroid/support/v4/content/s;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 75
    new-instance v0, Landroid/support/v4/content/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/content/y;-><init>(B)V

    sput-object v0, Landroid/support/v4/content/s;->sHandler:Landroid/support/v4/content/y;

    .line 77
    sget-object v0, Landroid/support/v4/content/s;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Landroid/support/v4/content/s;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sget-object v0, Landroid/support/v4/content/z;->PENDING:Landroid/support/v4/content/z;

    iput-object v0, p0, Landroid/support/v4/content/s;->d:Landroid/support/v4/content/z;

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/s;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    new-instance v0, Landroid/support/v4/content/u;

    invoke-direct {v0, p0}, Landroid/support/v4/content/u;-><init>(Landroid/support/v4/content/s;)V

    iput-object v0, p0, Landroid/support/v4/content/s;->b:Landroid/support/v4/content/aa;

    .line 127
    new-instance v0, Landroid/support/v4/content/v;

    iget-object v1, p0, Landroid/support/v4/content/s;->b:Landroid/support/v4/content/aa;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/v;-><init>(Landroid/support/v4/content/s;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroid/support/v4/content/s;->c:Ljava/util/concurrent/FutureTask;

    .line 147
    return-void
.end method

.method static synthetic a(Landroid/support/v4/content/s;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/support/v4/content/s;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/content/s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/content/s;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 157
    sget-object v0, Landroid/support/v4/content/s;->sHandler:Landroid/support/v4/content/y;

    new-instance v1, Landroid/support/v4/content/x;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Landroid/support/v4/content/x;-><init>(Landroid/support/v4/content/s;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/content/y;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-object p1
.end method

.method static synthetic b(Landroid/support/v4/content/s;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/content/s;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v4/content/s;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected static varargs c()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 226
    return-void
.end method

.method static synthetic c(Landroid/support/v4/content/s;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/content/s;->c:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/content/s;->a()V

    :goto_0
    sget-object v0, Landroid/support/v4/content/z;->FINISHED:Landroid/support/v4/content/z;

    iput-object v0, p0, Landroid/support/v4/content/s;->d:Landroid/support/v4/content/z;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/content/s;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;)Landroid/support/v4/content/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/support/v4/content/s",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v4/content/s;->d:Landroid/support/v4/content/z;

    sget-object v1, Landroid/support/v4/content/z;->PENDING:Landroid/support/v4/content/z;

    if-eq v0, v1, :cond_0

    .line 407
    sget-object v0, Landroid/support/v4/content/w;->$SwitchMap$android$support$v4$content$ModernAsyncTask$Status:[I

    iget-object v1, p0, Landroid/support/v4/content/s;->d:Landroid/support/v4/content/z;

    invoke-virtual {v1}, Landroid/support/v4/content/z;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 418
    :cond_0
    sget-object v0, Landroid/support/v4/content/z;->RUNNING:Landroid/support/v4/content/z;

    iput-object v0, p0, Landroid/support/v4/content/s;->d:Landroid/support/v4/content/z;

    .line 420
    iget-object v0, p0, Landroid/support/v4/content/s;->b:Landroid/support/v4/content/aa;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/content/aa;->b:[Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Landroid/support/v4/content/s;->c:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 425
    return-object p0

    .line 409
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 260
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
    .line 213
    return-void
.end method

.method protected varargs abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/v4/content/s;->c:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method
