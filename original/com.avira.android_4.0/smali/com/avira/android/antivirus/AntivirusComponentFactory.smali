.class public Lcom/avira/android/antivirus/AntivirusComponentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static a:Lcom/avira/android/antivirus/Updater;

.field private static b:Lcom/avira/android/antivirus/Antivirus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-object v0, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a:Lcom/avira/android/antivirus/Updater;

    .line 13
    sput-object v0, Lcom/avira/android/antivirus/AntivirusComponentFactory;->b:Lcom/avira/android/antivirus/Antivirus;

    .line 14
    const-class v0, Lcom/avira/android/antivirus/AntivirusComponentFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antivirus/AntivirusComponentFactory;->TAG:Ljava/lang/String;

    .line 59
    :try_start_0
    const-string v0, "antivirus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    const-string v0, "antivirus"

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    :catch_0
    move-exception v0

    .line 65
    :try_start_1
    sget-object v0, Lcom/avira/android/j;->LIBRARY_ANTIVIRUS_FULL_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 69
    sget-object v1, Lcom/avira/android/antivirus/AntivirusComponentFactory;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load native av lib"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static declared-synchronized a()Lcom/avira/android/antivirus/Antivirus;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lcom/avira/android/antivirus/AntivirusComponentFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/antivirus/AntivirusComponentFactory;->b:Lcom/avira/android/antivirus/Antivirus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 22
    :try_start_1
    new-instance v0, Lcom/avira/android/antivirus/Antivirus;

    invoke-direct {v0}, Lcom/avira/android/antivirus/Antivirus;-><init>()V

    sput-object v0, Lcom/avira/android/antivirus/AntivirusComponentFactory;->b:Lcom/avira/android/antivirus/Antivirus;
    :try_end_1
    .catch Ljava/io/InvalidObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/avira/android/antivirus/AntivirusComponentFactory;->b:Lcom/avira/android/antivirus/Antivirus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 29
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/avira/android/antivirus/UpdateServerConfiguration;)V
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/avira/android/antivirus/AntivirusComponentFactory;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/avira/android/antivirus/Updater;

    invoke-direct {v0, p0}, Lcom/avira/android/antivirus/Updater;-><init>(Lcom/avira/android/antivirus/UpdateServerConfiguration;)V

    sput-object v0, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a:Lcom/avira/android/antivirus/Updater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v1

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 81
    const-class v1, Lcom/avira/android/antivirus/AntivirusComponentFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->setEngineResourcePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    monitor-exit v1

    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 85
    :try_start_1
    sget-object v2, Lcom/avira/android/antivirus/AntivirusComponentFactory;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call native function"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lcom/avira/android/antivirus/h;
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/avira/android/antivirus/AntivirusComponentFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a:Lcom/avira/android/antivirus/Updater;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/avira/android/antivirus/Updater;

    invoke-direct {v0}, Lcom/avira/android/antivirus/Updater;-><init>()V

    sput-object v0, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a:Lcom/avira/android/antivirus/Updater;

    .line 42
    :cond_0
    sget-object v0, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a:Lcom/avira/android/antivirus/Updater;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native setEngineResourcePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
