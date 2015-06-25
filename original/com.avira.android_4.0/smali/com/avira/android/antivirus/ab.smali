.class final Lcom/avira/android/antivirus/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/z;

.field private b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/z;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/avira/android/antivirus/ab;->a:Lcom/avira/android/antivirus/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/avira/android/antivirus/ab;->b:Ljava/lang/Runnable;

    .line 192
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/avira/android/antivirus/ab;->a:Lcom/avira/android/antivirus/z;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antivirus/ab;->a:Lcom/avira/android/antivirus/z;

    invoke-static {v0}, Lcom/avira/android/antivirus/z;->a(Lcom/avira/android/antivirus/z;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 203
    iget-object v0, p0, Lcom/avira/android/antivirus/ab;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 205
    iget-object v0, p0, Lcom/avira/android/antivirus/ab;->a:Lcom/avira/android/antivirus/z;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/avira/android/antivirus/z;->a(Z)V

    .line 207
    invoke-static {}, Lcom/avira/android/antivirus/z;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 209
    invoke-static {}, Lcom/avira/android/antivirus/z;->b()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 213
    :try_start_1
    invoke-static {}, Lcom/avira/android/antivirus/z;->d()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 216
    invoke-static {}, Lcom/avira/android/antivirus/z;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 218
    invoke-static {}, Lcom/avira/android/antivirus/z;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/aa;

    invoke-interface {v0}, Lcom/avira/android/antivirus/aa;->a()V

    .line 223
    :cond_0
    invoke-static {}, Lcom/avira/android/antivirus/z;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 226
    :cond_1
    invoke-static {}, Lcom/avira/android/antivirus/z;->e()V

    .line 228
    invoke-static {}, Lcom/avira/android/antivirus/z;->d()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/avira/android/antivirus/ab;->a:Lcom/avira/android/antivirus/z;

    invoke-static {v0}, Lcom/avira/android/antivirus/z;->b(Lcom/avira/android/antivirus/z;)V

    .line 238
    iget-object v0, p0, Lcom/avira/android/antivirus/ab;->a:Lcom/avira/android/antivirus/z;

    invoke-static {v0}, Lcom/avira/android/antivirus/z;->a(Lcom/avira/android/antivirus/z;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
