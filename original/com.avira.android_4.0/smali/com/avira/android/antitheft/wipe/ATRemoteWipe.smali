.class public final Lcom/avira/android/antitheft/wipe/ATRemoteWipe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATTEMPTS_DELAY_MILISECONDS:I = 0x1f4

.field private static final ATTEMPTS_MAX_COUNT:I = 0x2

.field public static final WIPE_PARAMS:Ljava/lang/String; = "wipe_params"

.field private static e:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

.field private static f:Lcom/avira/android/remotecomponents/CommandIntegrator;

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ContentResolver;

.field private c:Landroid/os/Handler;

.field private final d:Landroid/content/Intent;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/antitheft/wipe/n;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/avira/android/antitheft/wipe/j;

.field private j:Lcom/avira/android/antitheft/wipe/m;

.field private k:Lcom/avira/android/antitheft/wipe/c;

.field private final l:Ljava/util/concurrent/Semaphore;

.field private final m:Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->b:Landroid/content/ContentResolver;

    .line 67
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a:Landroid/content/Context;

    const-class v2, Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->d:Landroid/content/Intent;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->g:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->l:Ljava/util/concurrent/Semaphore;

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 73
    new-instance v0, Lcom/avira/android/antitheft/wipe/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avira/android/antitheft/wipe/f;-><init>(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;B)V

    .line 74
    invoke-virtual {v0}, Lcom/avira/android/antitheft/wipe/f;->start()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    new-instance v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;-><init>(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)V

    iput-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->m:Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_WIPE_JOB_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->m:Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 78
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "RemoteWipe.const"

    const-string v3, "InterruptedException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->c:Landroid/os/Handler;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/avira/android/antitheft/wipe/ATRemoteWipe;
    .locals 2

    .prologue
    .line 146
    const-class v1, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->e:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-direct {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;-><init>()V

    sput-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->e:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    .line 150
    :cond_0
    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->e:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;Lcom/avira/android/antitheft/wipe/c;)Lcom/avira/android/antitheft/wipe/c;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->k:Lcom/avira/android/antitheft/wipe/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Lcom/avira/android/antitheft/wipe/j;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->i:Lcom/avira/android/antitheft/wipe/j;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;Lcom/avira/android/antitheft/wipe/j;)Lcom/avira/android/antitheft/wipe/j;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->i:Lcom/avira/android/antitheft/wipe/j;

    return-object p1
.end method

.method static synthetic a(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;Lcom/avira/android/antitheft/wipe/m;)Lcom/avira/android/antitheft/wipe/m;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->j:Lcom/avira/android/antitheft/wipe/m;

    return-object p1
.end method

.method static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 115
    const-class v1, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    monitor-exit v1

    return-void

    .line 119
    :cond_0
    :try_start_1
    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->h:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->f:Lcom/avira/android/remotecomponents/CommandIntegrator;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Lcom/avira/android/remotecomponents/WipeCommandIntegrator;

    const-string v2, "wipe"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/avira/android/remotecomponents/WipeCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->f:Lcom/avira/android/remotecomponents/CommandIntegrator;

    .line 124
    :cond_1
    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->f:Lcom/avira/android/remotecomponents/CommandIntegrator;

    const-string v2, "statusCode"

    invoke-virtual {v0, v2, p1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->f:Lcom/avira/android/remotecomponents/CommandIntegrator;

    const-string v2, "wipeOption"

    invoke-virtual {v0, v2, p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 128
    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->f:Lcom/avira/android/remotecomponents/CommandIntegrator;

    const-string v2, "failedReason"

    invoke-virtual {v0, v2, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_1
    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->f:Lcom/avira/android/remotecomponents/CommandIntegrator;

    const-string v2, "batteryLevel"

    invoke-static {}, Lcom/avira/android/device/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->f:Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-static {v0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 132
    :cond_2
    :try_start_2
    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->f:Lcom/avira/android/remotecomponents/CommandIntegrator;

    const-string v2, "failedReason"

    invoke-virtual {v0, v2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->b(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->g:Ljava/util/List;

    return-object v0
.end method

.method private static b(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/antitheft/wipe/n;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 191
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 193
    if-nez v0, :cond_1

    .line 226
    :cond_0
    return v5

    .line 197
    :cond_1
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 201
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 202
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_2
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 205
    :cond_3
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 212
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 217
    :catch_0
    move-exception v0

    .line 219
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "RemoteWipe.runParellelWipeTasks"

    const-string v4, "InterruptedException"

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 221
    :catch_1
    move-exception v0

    .line 223
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "RemoteWipe.runParellelWipeTasks"

    const-string v4, "ExecutionException"

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Lcom/avira/android/antitheft/wipe/m;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->j:Lcom/avira/android/antitheft/wipe/m;

    return-object v0
.end method

.method static synthetic d(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->b:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic e(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Lcom/avira/android/antitheft/wipe/c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->k:Lcom/avira/android/antitheft/wipe/c;

    return-object v0
.end method

.method static synthetic f(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->l:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 4

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 161
    sput-object p1, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->f:Lcom/avira/android/remotecomponents/CommandIntegrator;

    .line 162
    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->h:Ljava/util/List;

    .line 166
    :cond_0
    sget-object v0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 168
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    :try_start_1
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 172
    :try_start_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "RemoteWipe.wipeDevice"

    const-string v3, "InterruptedException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    :try_start_3
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :catch_1
    move-exception v0

    .line 176
    :try_start_4
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "RemoteWipe.wipeDevice"

    const-string v3, "NullPointerException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    :try_start_5
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method final a(Ljava/lang/String;Lcom/avira/android/database/m;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 231
    sget-object v0, Lcom/avira/android/database/m;->SimWipe:Lcom/avira/android/database/m;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->i:Lcom/avira/android/antitheft/wipe/j;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->i:Lcom/avira/android/antitheft/wipe/j;

    invoke-virtual {v0, p1, v1}, Lcom/avira/android/antitheft/wipe/j;->a(Ljava/lang/String;Z)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    sget-object v0, Lcom/avira/android/database/m;->StorageWipe:Lcom/avira/android/database/m;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->j:Lcom/avira/android/antitheft/wipe/m;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->j:Lcom/avira/android/antitheft/wipe/m;

    invoke-virtual {v0, p1, v1}, Lcom/avira/android/antitheft/wipe/m;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 239
    :cond_2
    sget-object v0, Lcom/avira/android/database/m;->FactoryReset:Lcom/avira/android/database/m;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->k:Lcom/avira/android/antitheft/wipe/c;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->k:Lcom/avira/android/antitheft/wipe/c;

    invoke-virtual {v0, p1, v1}, Lcom/avira/android/antitheft/wipe/c;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->j:Lcom/avira/android/antitheft/wipe/m;

    invoke-virtual {v0}, Lcom/avira/android/antitheft/wipe/m;->e()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 89
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 90
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->m:Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
