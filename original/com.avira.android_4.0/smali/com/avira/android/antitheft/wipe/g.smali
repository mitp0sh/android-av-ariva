.class final Lcom/avira/android/antitheft/wipe/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/wipe/f;


# direct methods
.method constructor <init>(Lcom/avira/android/antitheft/wipe/f;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 315
    sget-object v0, Lcom/avira/android/database/m;->SimWipe:Lcom/avira/android/database/m;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;)Lcom/avira/android/database/l;

    move-result-object v0

    sget-object v1, Lcom/avira/android/database/l;->InProgress:Lcom/avira/android/database/l;

    if-ne v0, v1, :cond_1

    .line 317
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Lcom/avira/android/antitheft/wipe/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    new-instance v1, Lcom/avira/android/antitheft/wipe/j;

    iget-object v3, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v3, v3, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v3}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->d(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/avira/android/antitheft/wipe/j;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;Lcom/avira/android/antitheft/wipe/j;)Lcom/avira/android/antitheft/wipe/j;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->b(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v1, v1, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v1}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Lcom/avira/android/antitheft/wipe/j;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_1
    sget-object v0, Lcom/avira/android/database/m;->StorageWipe:Lcom/avira/android/database/m;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;)Lcom/avira/android/database/l;

    move-result-object v0

    sget-object v1, Lcom/avira/android/database/l;->InProgress:Lcom/avira/android/database/l;

    if-ne v0, v1, :cond_3

    .line 325
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->c(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Lcom/avira/android/antitheft/wipe/m;

    move-result-object v0

    if-nez v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    new-instance v1, Lcom/avira/android/antitheft/wipe/m;

    invoke-direct {v1}, Lcom/avira/android/antitheft/wipe/m;-><init>()V

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;Lcom/avira/android/antitheft/wipe/m;)Lcom/avira/android/antitheft/wipe/m;

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->b(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v1, v1, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v1}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->c(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Lcom/avira/android/antitheft/wipe/m;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->b(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_7

    move v1, v2

    .line 335
    :goto_0
    if-gtz v1, :cond_7

    .line 337
    new-instance v3, Lcom/avira/android/antitheft/wipe/e;

    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-direct {v3, v0, v2}, Lcom/avira/android/antitheft/wipe/e;-><init>(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;B)V

    .line 338
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->b(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antitheft/wipe/n;

    .line 340
    iget-object v5, v3, Lcom/avira/android/antitheft/wipe/e;->d:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 342
    :cond_4
    iget-object v4, v3, Lcom/avira/android/antitheft/wipe/e;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 344
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v3, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :goto_2
    :try_start_1
    iget-boolean v0, v3, Lcom/avira/android/antitheft/wipe/e;->b:Z

    if-nez v0, :cond_6

    .line 349
    iget-object v0, v3, Lcom/avira/android/antitheft/wipe/e;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 357
    :catch_0
    move-exception v0

    .line 359
    :try_start_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v3

    const-string v5, "RemoteWipe.WipeDeviceLooperThread.run"

    const-string v6, "InterruptedException"

    invoke-virtual {v3, v5, v6, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move v0, v1

    .line 362
    :goto_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 352
    :cond_6
    :try_start_3
    iget-boolean v0, v3, Lcom/avira/android/antitheft/wipe/e;->c:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    .line 354
    const/4 v0, 0x2

    goto :goto_3

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 365
    :cond_7
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->b(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/avira/android/database/m;->FactoryReset:Lcom/avira/android/database/m;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;)Lcom/avira/android/database/l;

    move-result-object v0

    sget-object v1, Lcom/avira/android/database/l;->InProgress:Lcom/avira/android/database/l;

    if-ne v0, v1, :cond_9

    .line 368
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->e(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Lcom/avira/android/antitheft/wipe/c;

    move-result-object v0

    if-nez v0, :cond_8

    .line 370
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    new-instance v1, Lcom/avira/android/antitheft/wipe/c;

    invoke-direct {v1}, Lcom/avira/android/antitheft/wipe/c;-><init>()V

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;Lcom/avira/android/antitheft/wipe/c;)Lcom/avira/android/antitheft/wipe/c;

    .line 372
    :cond_8
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/g;->a:Lcom/avira/android/antitheft/wipe/f;

    iget-object v0, v0, Lcom/avira/android/antitheft/wipe/f;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->e(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Lcom/avira/android/antitheft/wipe/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antitheft/wipe/c;->a()Ljava/lang/Boolean;

    .line 374
    :cond_9
    return-void
.end method
