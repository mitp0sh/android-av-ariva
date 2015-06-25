.class final Lcom/avira/android/antitheft/wipe/e;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Z

.field public c:Z

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/antitheft/wipe/n;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;


# direct methods
.method private constructor <init>(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 384
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/e;->e:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 386
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antitheft/wipe/e;->a:Ljava/lang/Object;

    .line 387
    iput-boolean v1, p0, Lcom/avira/android/antitheft/wipe/e;->b:Z

    .line 388
    iput-boolean v1, p0, Lcom/avira/android/antitheft/wipe/e;->c:Z

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antitheft/wipe/e;->d:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;B)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lcom/avira/android/antitheft/wipe/e;-><init>(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 394
    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/e;->e:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/e;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avira/android/antitheft/wipe/e;->c:Z

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/antitheft/wipe/e;->b:Z

    .line 398
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/e;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 399
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
