.class final Lio/fabric/sdk/android/services/b/x;
.super Lio/fabric/sdk/android/services/b/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/ExecutorService;

.field final synthetic c:J

.field final synthetic d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/TimeUnit;)V
    .locals 2

    .prologue
    .line 63
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/x;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/fabric/sdk/android/services/b/x;->b:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x2

    iput-wide v0, p0, Lio/fabric/sdk/android/services/b/x;->c:J

    iput-object p3, p0, Lio/fabric/sdk/android/services/b/x;->d:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 6

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Executing shutdown hook for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/fabric/sdk/android/services/b/x;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 68
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/x;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 69
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/x;->b:Ljava/util/concurrent/ExecutorService;

    iget-wide v2, p0, Lio/fabric/sdk/android/services/b/x;->c:J

    iget-object v1, p0, Lio/fabric/sdk/android/services/b/x;->d:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/fabric/sdk/android/services/b/x;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not shut down in the allocated time. Requesting immediate shutdown."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 72
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/x;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/fabric/sdk/android/services/b/x;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 79
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/x;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method
