.class Lcom/facebook/b/cq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_MAX_CONCURRENT:I = 0x8


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/facebook/b/ct;

.field private final c:I

.field private final d:Ljava/util/concurrent/Executor;

.field private e:Lcom/facebook/b/ct;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/facebook/b/cq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/b/cq;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/b/cq;-><init>(I)V

    .line 37
    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/facebook/cu;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/b/cq;-><init>(ILjava/util/concurrent/Executor;)V

    .line 41
    return-void
.end method

.method private constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/b/cq;->a:Ljava/lang/Object;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/b/cq;->e:Lcom/facebook/b/ct;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/b/cq;->f:I

    .line 44
    iput p1, p0, Lcom/facebook/b/cq;->c:I

    .line 45
    iput-object p2, p0, Lcom/facebook/b/cq;->d:Ljava/util/concurrent/Executor;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/facebook/b/cq;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/b/cq;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/b/cq;Lcom/facebook/b/ct;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/b/cq;->a(Lcom/facebook/b/ct;)V

    return-void
.end method

.method private a(Lcom/facebook/b/ct;)V
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/facebook/b/cq;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    if-eqz p1, :cond_0

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/facebook/b/cq;->e:Lcom/facebook/b/ct;

    invoke-virtual {p1, v2}, Lcom/facebook/b/ct;->a(Lcom/facebook/b/ct;)Lcom/facebook/b/ct;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/b/cq;->e:Lcom/facebook/b/ct;

    .line 90
    iget v2, p0, Lcom/facebook/b/cq;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/facebook/b/cq;->f:I

    .line 93
    :cond_0
    iget v2, p0, Lcom/facebook/b/cq;->f:I

    iget v3, p0, Lcom/facebook/b/cq;->c:I

    if-ge v2, v3, :cond_1

    .line 94
    iget-object v0, p0, Lcom/facebook/b/cq;->b:Lcom/facebook/b/ct;

    .line 95
    if-eqz v0, :cond_1

    .line 99
    iget-object v2, p0, Lcom/facebook/b/cq;->b:Lcom/facebook/b/ct;

    invoke-virtual {v0, v2}, Lcom/facebook/b/ct;->a(Lcom/facebook/b/ct;)Lcom/facebook/b/ct;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/b/cq;->b:Lcom/facebook/b/ct;

    .line 100
    iget-object v2, p0, Lcom/facebook/b/cq;->e:Lcom/facebook/b/ct;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/b/ct;->a(Lcom/facebook/b/ct;Z)Lcom/facebook/b/ct;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/b/cq;->e:Lcom/facebook/b/ct;

    .line 101
    iget v2, p0, Lcom/facebook/b/cq;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/b/cq;->f:I

    .line 103
    invoke-virtual {v0}, Lcom/facebook/b/ct;->d()V

    .line 106
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    iget-object v1, p0, Lcom/facebook/b/cq;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/facebook/b/cr;

    invoke-direct {v2, p0, v0}, Lcom/facebook/b/cr;-><init>(Lcom/facebook/b/cq;Lcom/facebook/b/ct;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    :cond_2
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/Runnable;)Lcom/facebook/b/cs;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/b/ct;

    invoke-direct {v0, p0, p1}, Lcom/facebook/b/ct;-><init>(Lcom/facebook/b/cq;Ljava/lang/Runnable;)V

    .line 54
    iget-object v1, p0, Lcom/facebook/b/cq;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/facebook/b/cq;->b:Lcom/facebook/b/ct;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/b/ct;->a(Lcom/facebook/b/ct;Z)Lcom/facebook/b/ct;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/b/cq;->b:Lcom/facebook/b/ct;

    .line 56
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/b/cq;->a(Lcom/facebook/b/ct;)V

    .line 59
    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/facebook/b/cq;)Lcom/facebook/b/ct;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/b/cq;->b:Lcom/facebook/b/ct;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/b/cq;Lcom/facebook/b/ct;)Lcom/facebook/b/ct;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/facebook/b/cq;->b:Lcom/facebook/b/ct;

    return-object p1
.end method


# virtual methods
.method final a(Ljava/lang/Runnable;)Lcom/facebook/b/cs;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/facebook/b/cq;->b(Ljava/lang/Runnable;)Lcom/facebook/b/cs;

    move-result-object v0

    return-object v0
.end method
