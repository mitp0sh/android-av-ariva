.class public final Lio/fabric/sdk/android/services/b/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TERMINATION_TIMEOUT:J = 0x2L


# direct methods
.method public static a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lio/fabric/sdk/android/services/b/u;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 24
    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/b/u;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 25
    return-object v0
.end method

.method private static final a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 5

    .prologue
    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lio/fabric/sdk/android/services/b/x;

    invoke-direct {v3, p0, p1, v0}, Lio/fabric/sdk/android/services/b/x;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/TimeUnit;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Crashlytics Shutdown Hook for "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 59
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lio/fabric/sdk/android/services/b/u;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 30
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 32
    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/b/u;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 33
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 39
    new-instance v1, Lio/fabric/sdk/android/services/b/v;

    invoke-direct {v1, p0, v0}, Lio/fabric/sdk/android/services/b/v;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v1
.end method
