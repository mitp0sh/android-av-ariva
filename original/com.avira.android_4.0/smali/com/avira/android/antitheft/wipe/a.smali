.class final Lcom/avira/android/antitheft/wipe/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;


# direct methods
.method private constructor <init>(Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/a;->a:Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;B)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/avira/android/antitheft/wipe/a;-><init>(Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x9c4

    .line 72
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 75
    invoke-static {}, Lcom/avira/android/antitheft/wipe/n;->c()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 76
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v3, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    sget-object v0, Lcom/avira/android/database/m;->StorageWipe:Lcom/avira/android/database/m;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;)Lcom/avira/android/database/l;

    move-result-object v0

    sget-object v3, Lcom/avira/android/database/l;->InProgress:Lcom/avira/android/database/l;

    if-ne v0, v3, :cond_0

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a()Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    move-result-object v0

    sget-object v3, Lcom/avira/android/database/m;->StorageWipe:Lcom/avira/android/database/m;

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Ljava/lang/String;Lcom/avira/android/database/m;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/avira/android/database/m;->FactoryReset:Lcom/avira/android/database/m;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;)Lcom/avira/android/database/l;

    move-result-object v0

    sget-object v3, Lcom/avira/android/database/l;->InProgress:Lcom/avira/android/database/l;

    if-eq v0, v3, :cond_1

    .line 100
    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/avira/android/antitheft/wipe/b;

    invoke-direct {v1, p0}, Lcom/avira/android/antitheft/wipe/b;-><init>(Lcom/avira/android/antitheft/wipe/a;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :cond_2
    :goto_1
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    const-string v3, "RemoteWipe.formatExternalStorage"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const-string v3, "storage"

    const-string v4, "FAILED"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/avira/android/database/m;->StorageWipe:Lcom/avira/android/database/m;

    sget-object v3, Lcom/avira/android/database/l;->Failed:Lcom/avira/android/database/l;

    invoke-static {v0, v3}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;Lcom/avira/android/database/l;)V

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/avira/android/antitheft/wipe/b;

    invoke-direct {v1, p0}, Lcom/avira/android/antitheft/wipe/b;-><init>(Lcom/avira/android/antitheft/wipe/a;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/avira/android/antitheft/wipe/b;

    invoke-direct {v2, p0}, Lcom/avira/android/antitheft/wipe/b;-><init>(Lcom/avira/android/antitheft/wipe/a;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v0
.end method
