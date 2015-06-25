.class public Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final FILTER_DATA_SCHAME:Ljava/lang/String; = "file"


# instance fields
.field private a:Lcom/avira/android/antitheft/wipe/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    new-instance v0, Lcom/avira/android/antitheft/wipe/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avira/android/antitheft/wipe/a;-><init>(Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;B)V

    iput-object v0, p0, Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;->a:Lcom/avira/android/antitheft/wipe/a;

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 44
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;->a:Lcom/avira/android/antitheft/wipe/a;

    invoke-virtual {p0, v1, v0}, Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;->a:Lcom/avira/android/antitheft/wipe/a;

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/wipe/ATExternalStorageWatcherService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 62
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
