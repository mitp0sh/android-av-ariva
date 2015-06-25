.class Lcom/avira/android/antivirus/Updater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/antivirus/h;


# static fields
.field private static final BACKUP:Ljava/lang/String; = "backup"

.field private static final MAVUPDATE_E_PROCESS_COPY_FILE:I = 0x45

.field private static final MAVUPDATE_E_ROLLBACK_PERFORMED:I = 0x4f

.field private static final MAVUPDATE_S_OK:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UPDTR"

.field public static final mUpdateLink1:Ljava/lang/String; = "http://professional.avira-update.com/update/"

.field public static final mUpdateLink2:Ljava/lang/String; = "http://professional.avira-update.net/update/"

.field public static final mUpdateLink3:Ljava/lang/String; = "http://62.146.210.32/update/"


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/avira/android/antivirus/bn;

.field private c:Lcom/avira/android/antivirus/bm;

.field private d:Lcom/avira/android/antivirus/UpdateServerConfiguration;

.field private e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/avira/android/antivirus/bl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 645
    :try_start_0
    const-string v0, "antivirus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 651
    :try_start_1
    sget-object v0, Lcom/avira/android/j;->LIBRARY_ANTIVIRUS_FULL_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 653
    :catch_1
    move-exception v0

    .line 655
    const-string v1, "UPDTR"

    const-string v2, "Unable to load native av lib"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/avira/android/antivirus/Updater;->d()Lcom/avira/android/antivirus/UpdateServerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/Updater;->d:Lcom/avira/android/antivirus/UpdateServerConfiguration;

    .line 47
    invoke-static {}, Lcom/avira/android/antivirus/Updater;->d()Lcom/avira/android/antivirus/UpdateServerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/Updater;->d:Lcom/avira/android/antivirus/UpdateServerConfiguration;

    .line 48
    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->e()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/avira/android/antivirus/UpdateServerConfiguration;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/avira/android/antivirus/Updater;->d()Lcom/avira/android/antivirus/UpdateServerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/Updater;->d:Lcom/avira/android/antivirus/UpdateServerConfiguration;

    .line 59
    iput-object p1, p0, Lcom/avira/android/antivirus/Updater;->d:Lcom/avira/android/antivirus/UpdateServerConfiguration;

    .line 60
    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->e()V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/avira/android/antivirus/Antivirus;)V
    .locals 0

    .prologue
    .line 25
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->abortCurrentScan()V

    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->terminateMavapiAndInstance()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avira/android/antivirus/Updater;)V
    .locals 4

    .prologue
    .line 25
    const-string v0, "UPDTR"

    const-string v1, "Begin Update Components extraction task"

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/antivirus/be;->b()V

    sget-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IN_PROGRESS:Lcom/avira/android/antivirus/ae;

    invoke-static {}, Lcom/avira/android/antivirus/af;->c()Lcom/avira/android/antivirus/ae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/antivirus/ae;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UPDTR"

    const-string v1, "Another mavapi Update Detected. Aborted update task."

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IN_PROGRESS:Lcom/avira/android/antivirus/ae;

    invoke-static {v0}, Lcom/avira/android/antivirus/af;->a(Lcom/avira/android/antivirus/ae;)V

    invoke-static {}, Lcom/avira/android/antivirus/af;->f()Z

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avira/android/antivirus/Updater;->setBackUpPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/Updater;->d:Lcom/avira/android/antivirus/UpdateServerConfiguration;

    invoke-direct {p0, v0}, Lcom/avira/android/antivirus/Updater;->setServerSettings(Lcom/avira/android/antivirus/UpdateServerConfiguration;)V

    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->initialize()I

    move-result v0

    const-string v1, "UPDTR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update engine initialization result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/avira/android/antivirus/Updater;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v0, "UPDTR"

    const-string v1, "Performing update check and download..."

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->downloadUpdate()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UPDTR"

    const-string v1, "Download Successful..."

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/Updater;->c:Lcom/avira/android/antivirus/bm;

    invoke-static {v0}, Lcom/avira/android/antivirus/z;->a(Lcom/avira/android/antivirus/aa;)V

    goto :goto_0

    :cond_1
    const-string v0, "UPDTR"

    const-string v1, "Download Failed. Performing Cleanup."

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/utilities/x;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UPDTR"

    const-string v1, "No network connectivity."

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/avira/android/antivirus/be;->a()V

    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->uninitialize()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/utilities/i;->c(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->g()Z

    sget-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    invoke-static {v0}, Lcom/avira/android/antivirus/af;->a(Lcom/avira/android/antivirus/ae;)V

    invoke-static {}, Lcom/avira/android/antivirus/Updater;->h()V

    goto :goto_0

    :cond_3
    const-string v0, "UPDTR"

    const-string v1, "Updater Initialization FAILED. Performing Cleanup."

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/antivirus/be;->a()V

    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->g()Z

    sget-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    invoke-static {v0}, Lcom/avira/android/antivirus/af;->a(Lcom/avira/android/antivirus/ae;)V

    invoke-static {}, Lcom/avira/android/antivirus/Updater;->h()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->installUpdate()I

    move-result v0

    const/16 v1, 0x45

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "UPDTR"

    const-string v1, "Error in Installation"

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/avira/android/utilities/i;->c(Ljava/lang/String;)Z

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/utilities/i;->c(Ljava/lang/String;)Z

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error in Installation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error in Installation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/avira/android/antivirus/Updater;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {p1, p2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avira/android/antivirus/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/avira/android/antivirus/Updater;->f()V

    return-void
.end method

.method static synthetic b(Lcom/avira/android/antivirus/Antivirus;)V
    .locals 0

    .prologue
    .line 25
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->initializeEngine()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    goto :goto_0
.end method

.method static synthetic b(Lcom/avira/android/antivirus/Updater;)V
    .locals 4

    .prologue
    .line 25
    const-string v0, "UPDTR"

    const-string v1, "Begin update task"

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/avira/android/antivirus/be;->b()V

    sget-object v1, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IN_PROGRESS:Lcom/avira/android/antivirus/ae;

    invoke-static {}, Lcom/avira/android/antivirus/af;->c()Lcom/avira/android/antivirus/ae;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avira/android/antivirus/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "UPDTR"

    const-string v1, "Another mavapi Update Detected. Aborted update task."

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IN_PROGRESS:Lcom/avira/android/antivirus/ae;

    invoke-static {v1}, Lcom/avira/android/antivirus/af;->a(Lcom/avira/android/antivirus/ae;)V

    invoke-direct {p0, v0}, Lcom/avira/android/antivirus/Updater;->setBackUpPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/Updater;->d:Lcom/avira/android/antivirus/UpdateServerConfiguration;

    invoke-direct {p0, v0}, Lcom/avira/android/antivirus/Updater;->setServerSettings(Lcom/avira/android/antivirus/UpdateServerConfiguration;)V

    invoke-static {}, Lcom/avira/android/antivirus/Updater;->f()V

    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->initialize()I

    move-result v0

    const-string v1, "UPDTR"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update engine initialization result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->downloadUpdate()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UPDTR"

    const-string v1, "Download successful"

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/Updater;->c:Lcom/avira/android/antivirus/bm;

    invoke-static {v0}, Lcom/avira/android/antivirus/z;->a(Lcom/avira/android/antivirus/aa;)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, "UPDTR"

    const-string v1, "No download(s) available."

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->uninitialize()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/utilities/i;->c(Ljava/lang/String;)Z

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->y()V

    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->b()V

    sget-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    invoke-static {v0}, Lcom/avira/android/antivirus/af;->a(Lcom/avira/android/antivirus/ae;)V

    goto :goto_0

    :cond_2
    const-string v0, "UPDTR"

    const-string v1, "Check or download(s) failed."

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/utilities/x;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "UPDTR"

    const-string v1, "No network connectivity."

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/avira/android/antivirus/be;->a()V

    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->uninitialize()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/utilities/i;->c(Ljava/lang/String;)Z

    sget-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    invoke-static {v0}, Lcom/avira/android/antivirus/af;->a(Lcom/avira/android/antivirus/ae;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "UPDTR"

    const-string v1, "Initialization FAILED. Performing Cleanup."

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/antivirus/be;->a()V

    sget-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    invoke-static {v0}, Lcom/avira/android/antivirus/af;->a(Lcom/avira/android/antivirus/ae;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avira/android/antivirus/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/avira/android/antivirus/Updater;->h()V

    return-void
.end method

.method static synthetic c(Lcom/avira/android/antivirus/Updater;)V
    .locals 4

    .prologue
    .line 25
    const-string v0, "UPDTR"

    const-string v1, "backup installation folder.... "

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/antivirus/Antivirus;->getAntivirusComponentInstallPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/avira/android/antivirus/Antivirus;->getAntivirusComponentInstallPathSidegrade()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avira/android/utilities/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "UPDTR"

    const-string v3, "clearing installation folder.... "

    invoke-direct {p0, v2, v3}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avira/android/utilities/i;->c(Ljava/lang/String;)Z

    const-string v2, "UPDTR"

    const-string v3, "move files in sidegrade folder to installation folder.... "

    invoke-direct {p0, v2, v3}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/avira/android/utilities/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UPDTR"

    const-string v1, "Setting scan Engine Resource path back to installation folder.... "

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/antivirus/Updater;->f()V

    return-void
.end method

.method static synthetic c(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/avira/android/antivirus/Updater;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {p1, p2}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/avira/android/antivirus/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static d()Lcom/avira/android/antivirus/UpdateServerConfiguration;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/avira/android/antivirus/UpdateServerConfiguration;

    const-string v1, "http://professional.avira-update.com/update/,http://professional.avira-update.net/update/,http://62.146.210.32/update/"

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/antivirus/UpdateServerConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic d(Lcom/avira/android/antivirus/Updater;)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avira/android/antivirus/Updater;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/bl;

    invoke-interface {v0}, Lcom/avira/android/antivirus/bl;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private native downloadUpdate()I
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    new-instance v0, Lcom/avira/android/antivirus/bn;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/antivirus/bn;-><init>(Lcom/avira/android/antivirus/Updater;B)V

    iput-object v0, p0, Lcom/avira/android/antivirus/Updater;->b:Lcom/avira/android/antivirus/bn;

    .line 80
    new-instance v0, Lcom/avira/android/antivirus/bm;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/antivirus/bm;-><init>(Lcom/avira/android/antivirus/Updater;B)V

    iput-object v0, p0, Lcom/avira/android/antivirus/Updater;->c:Lcom/avira/android/antivirus/bm;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/Updater;->e:Ljava/util/HashSet;

    .line 82
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/Updater;->a:Ljava/util/concurrent/ExecutorService;

    .line 83
    return-void
.end method

.method static synthetic e(Lcom/avira/android/antivirus/Updater;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->uninitialize()V

    return-void
.end method

.method private static f()V
    .locals 4

    .prologue
    .line 293
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

    .line 296
    return-void
.end method

.method static synthetic f(Lcom/avira/android/antivirus/Updater;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avira/android/antivirus/Updater;->g()Z

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 609
    invoke-static {}, Lcom/avira/android/antivirus/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const-string v0, "UPDTR"

    const-string v1, "Empty and Delete sidegrade folder.... "

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Updater;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-static {}, Lcom/avira/android/antivirus/Antivirus;->getAntivirusComponentInstallPathSidegrade()Ljava/lang/String;

    move-result-object v0

    .line 615
    invoke-static {v0}, Lcom/avira/android/utilities/i;->d(Ljava/lang/String;)Z

    move-result v0

    .line 618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static h()V
    .locals 2

    .prologue
    .line 665
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.ACTION_UPDATER_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 666
    return-void
.end method

.method private native initialize()I
.end method

.method private native installUpdate()I
.end method

.method private native setBackUpPath(Ljava/lang/String;)V
.end method

.method private native setServerSettings(Lcom/avira/android/antivirus/UpdateServerConfiguration;)V
.end method

.method private native uninitialize()V
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/avira/android/antivirus/Updater;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/avira/android/antivirus/Updater;->b:Lcom/avira/android/antivirus/bn;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 120
    return-void
.end method

.method public final a(Lcom/avira/android/antivirus/bl;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/avira/android/antivirus/Updater;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public final b(Lcom/avira/android/antivirus/bl;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/avira/android/antivirus/Updater;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method
