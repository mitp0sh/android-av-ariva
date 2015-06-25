.class final Lcom/avira/android/antitheft/wipe/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;


# direct methods
.method private constructor <init>(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;B)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/avira/android/antitheft/wipe/f;-><init>(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 308
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 310
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    new-instance v1, Lcom/avira/android/antitheft/wipe/g;

    invoke-direct {v1, p0}, Lcom/avira/android/antitheft/wipe/g;-><init>(Lcom/avira/android/antitheft/wipe/f;)V

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;Landroid/os/Handler;)Landroid/os/Handler;

    .line 376
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->f(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 377
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 378
    return-void
.end method
