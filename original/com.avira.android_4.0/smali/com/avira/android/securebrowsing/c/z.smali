.class public final Lcom/avira/android/securebrowsing/c/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SESSION_EXPIRY:I = 0x12c


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/d;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/a/a/d;->a(Ljava/util/concurrent/TimeUnit;)Lcom/a/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/d;->a()Lcom/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/z;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    .line 27
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 111
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/z;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 120
    :goto_0
    return v0

    .line 118
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 61
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/z;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 62
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 69
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 86
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/z;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 96
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 87
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/z;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    move v0, v1

    .line 96
    goto :goto_1
.end method
