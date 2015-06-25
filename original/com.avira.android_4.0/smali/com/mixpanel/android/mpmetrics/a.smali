.class final Lcom/mixpanel/android/mpmetrics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CALLBACK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI"

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static final sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/mixpanel/android/mpmetrics/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Lcom/mixpanel/android/mpmetrics/d;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/mixpanel/android/mpmetrics/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    sput v0, Lcom/mixpanel/android/mpmetrics/a;->e:I

    .line 585
    const/4 v0, 0x1

    sput v0, Lcom/mixpanel/android/mpmetrics/a;->f:I

    .line 586
    const/4 v0, 0x2

    sput v0, Lcom/mixpanel/android/mpmetrics/a;->g:I

    .line 587
    const/4 v0, 0x5

    sput v0, Lcom/mixpanel/android/mpmetrics/a;->h:I

    .line 588
    const/16 v0, 0xb

    sput v0, Lcom/mixpanel/android/mpmetrics/a;->i:I

    .line 590
    const/4 v0, 0x4

    sput v0, Lcom/mixpanel/android/mpmetrics/a;->j:I

    .line 591
    const/16 v0, 0xa

    sput v0, Lcom/mixpanel/android/mpmetrics/a;->k:I

    .line 593
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/a;->CALLBACK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 597
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/a;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/a;->c:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/n;->a(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->d:Lcom/mixpanel/android/mpmetrics/n;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Lcom/mixpanel/android/mpmetrics/d;

    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/d;-><init>(Lcom/mixpanel/android/mpmetrics/a;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->b:Lcom/mixpanel/android/mpmetrics/d;

    .line 45
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/a;
    .locals 4

    .prologue
    .line 55
    sget-object v1, Lcom/mixpanel/android/mpmetrics/a;->sInstances:Ljava/util/Map;

    monitor-enter v1

    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 58
    sget-object v0, Lcom/mixpanel/android/mpmetrics/a;->sInstances:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/mixpanel/android/mpmetrics/a;

    invoke-direct {v0, v2}, Lcom/mixpanel/android/mpmetrics/a;-><init>(Landroid/content/Context;)V

    .line 61
    sget-object v3, Lcom/mixpanel/android/mpmetrics/a;->sInstances:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_0
    monitor-exit v1

    return-object v0

    .line 65
    :cond_0
    sget-object v0, Lcom/mixpanel/android/mpmetrics/a;->sInstances:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->d:Lcom/mixpanel/android/mpmetrics/n;

    return-object v0
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/mixpanel/android/mpmetrics/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected static b()Lcom/mixpanel/android/mpmetrics/aj;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/mixpanel/android/mpmetrics/aj;

    invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/aj;-><init>()V

    return-object v0
.end method

.method protected static b(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/o;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/mixpanel/android/mpmetrics/o;

    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/o;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/mixpanel/android/mpmetrics/a;->j:I

    return v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/mixpanel/android/mpmetrics/a;->g:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/mixpanel/android/mpmetrics/a;->k:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/mixpanel/android/mpmetrics/a;->e:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/mixpanel/android/mpmetrics/a;->f:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/mixpanel/android/mpmetrics/a;->i:I

    return v0
.end method

.method static synthetic i()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/mixpanel/android/mpmetrics/a;->CALLBACK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic j()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/mixpanel/android/mpmetrics/a;->h:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 93
    sget v1, Lcom/mixpanel/android/mpmetrics/a;->g:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 95
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a;->b:Lcom/mixpanel/android/mpmetrics/d;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Landroid/os/Message;)V

    .line 96
    return-void
.end method

.method public final a(Lcom/mixpanel/android/mpmetrics/b;)V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 77
    sget v1, Lcom/mixpanel/android/mpmetrics/a;->f:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 78
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a;->b:Lcom/mixpanel/android/mpmetrics/d;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Landroid/os/Message;)V

    .line 80
    return-void
.end method

.method public final a(Lcom/mixpanel/android/mpmetrics/c;)V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 141
    sget v1, Lcom/mixpanel/android/mpmetrics/a;->i:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 142
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a;->b:Lcom/mixpanel/android/mpmetrics/d;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Landroid/os/Message;)V

    .line 144
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 85
    sget v1, Lcom/mixpanel/android/mpmetrics/a;->e:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 86
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/a;->b:Lcom/mixpanel/android/mpmetrics/d;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Landroid/os/Message;)V

    .line 89
    return-void
.end method
