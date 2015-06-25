.class public Lcom/avira/android/antivirus/Antivirus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_SCAN_STARTED:Ljava/lang/String; = "com.avira.android.ACTION_SCAN_STARTED"

.field private static final BACKUP:Ljava/lang/String; = "backup"

.field public static final COMPONENT_NAME_SIDEGRADE:Ljava/lang/String; = "antivirus2"

.field private static final ENGINE_COMPONENTS:[Ljava/lang/String;

.field private static final ENGINE_COMPONENTS_SIDEGRADE:[Ljava/lang/String;

.field public static final ENGINE_SCAN_COMPLETED_TAG:Ljava/lang/String; = "engine_scan_completed"

.field private static final JELLY_BEAN_VIRTUAL_USER_EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/emulated"

.field private static final MINIMUM_FOLDER_PARTITION_FOR_DEMAND_SCAN_TASK:I = 0x23

.field public static final SCAN_PROGRESS_TAG:Ljava/lang/String; = "scan_progress"

.field private static final SDCARD_APP_PATH:Ljava/lang/String; = "/mnt/asec"

.field private static final TAG:Ljava/lang/String; = "AV"

.field public static final TIME_REMAINING_TAG:Ljava/lang/String; = "time_remaining"

.field private static mInstallPath:Ljava/lang/String;

.field private static mInstallPathSidegrade:Ljava/lang/String;

.field private static sManualScanner:Lcom/avira/android/antivirus/c;


# instance fields
.field private mAccessScanContextPointer:J

.field private final mAccessScanThreadExecutor:Lcom/avira/android/antivirus/z;

.field private final mAccessScannerRunnableQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/avira/android/antivirus/bk;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackupPath:Ljava/lang/String;

.field private mBytesScanned:J

.field private mBytesToScan:J

.field private mCurrentScanningTime:J

.field private mDemandScanContextPointer:J

.field private final mDemandScanThreadExecutor:Lcom/avira/android/antivirus/z;

.field private final mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

.field private volatile mIsHalting:Z

.field private final mManualScanAbort:Ljava/lang/Runnable;

.field private mPreviousEstimatedTime:J

.field private final mScanNotificationHelper:Lcom/avira/android/antivirus/bg;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mUpdateSettingsWhenIdle:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "antivirus"

    aput-object v1, v0, v2

    sput-object v0, Lcom/avira/android/antivirus/Antivirus;->ENGINE_COMPONENTS:[Ljava/lang/String;

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "antivirus2"

    aput-object v1, v0, v2

    sput-object v0, Lcom/avira/android/antivirus/Antivirus;->ENGINE_COMPONENTS_SIDEGRADE:[Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/antivirus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antivirus/Antivirus;->mInstallPath:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/antivirus2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antivirus/Antivirus;->mInstallPathSidegrade:Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/avira/android/antivirus/Antivirus;->extractMavapiComponents()V

    .line 189
    :try_start_0
    const-string v0, "antivirus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    sget-object v0, Lcom/avira/android/j;->LIBRARY_ANTIVIRUS_FULL_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mBackupPath:Ljava/lang/String;

    .line 89
    iput-boolean v1, p0, Lcom/avira/android/antivirus/Antivirus;->mUpdateSettingsWhenIdle:Z

    .line 363
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->initializeEngine()V

    .line 364
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mAccessScannerRunnableQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 365
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 366
    invoke-virtual {p0, v1}, Lcom/avira/android/antivirus/Antivirus;->setIsHalting(Z)V

    .line 367
    new-instance v0, Lcom/avira/android/antivirus/z;

    invoke-direct {v0}, Lcom/avira/android/antivirus/z;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mAccessScanThreadExecutor:Lcom/avira/android/antivirus/z;

    .line 368
    new-instance v0, Lcom/avira/android/antivirus/z;

    invoke-direct {v0, v1}, Lcom/avira/android/antivirus/z;-><init>(B)V

    iput-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScanThreadExecutor:Lcom/avira/android/antivirus/z;

    .line 369
    new-instance v0, Lcom/avira/android/antivirus/c;

    invoke-direct {v0, p0}, Lcom/avira/android/antivirus/c;-><init>(Lcom/avira/android/antivirus/Antivirus;)V

    sput-object v0, Lcom/avira/android/antivirus/Antivirus;->sManualScanner:Lcom/avira/android/antivirus/c;

    .line 370
    sget-object v0, Lcom/avira/android/antivirus/Antivirus;->sManualScanner:Lcom/avira/android/antivirus/c;

    iput-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    .line 371
    new-instance v0, Lcom/avira/android/antivirus/a;

    invoke-direct {v0, p0}, Lcom/avira/android/antivirus/a;-><init>(Lcom/avira/android/antivirus/Antivirus;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mManualScanAbort:Ljava/lang/Runnable;

    .line 382
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    .line 383
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "av_settings_adware"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    invoke-static {v0}, Lcom/avira/android/antivirus/s;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/antivirus/s;->a(Landroid/content/Context;Ljava/util/List;)Z

    .line 388
    :cond_0
    new-instance v1, Lcom/avira/android/antivirus/bg;

    invoke-direct {v1, v0}, Lcom/avira/android/antivirus/bg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/avira/android/antivirus/Antivirus;->mScanNotificationHelper:Lcom/avira/android/antivirus/bg;

    .line 390
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "antivirus"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 392
    return-void
.end method

.method private native abortScanning(J)I
.end method

.method static synthetic access$000(Lcom/avira/android/antivirus/Antivirus;)J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScanContextPointer:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/avira/android/antivirus/Antivirus;J)I
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/avira/android/antivirus/Antivirus;->abortScanning(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/avira/android/antivirus/Antivirus;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/avira/android/antivirus/Antivirus;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mAccessScannerRunnableQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/avira/android/antivirus/Antivirus;)J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mAccessScanContextPointer:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/avira/android/antivirus/Antivirus;Ljava/lang/String;J)I
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/avira/android/antivirus/Antivirus;->scan(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/avira/android/antivirus/Antivirus;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/avira/android/antivirus/Antivirus;->mUpdateSettingsWhenIdle:Z

    return v0
.end method

.method static synthetic access$700(Lcom/avira/android/antivirus/Antivirus;)Lcom/avira/android/antivirus/bg;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mScanNotificationHelper:Lcom/avira/android/antivirus/bg;

    return-object v0
.end method

.method static synthetic access$800(Lcom/avira/android/antivirus/Antivirus;)J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mCurrentScanningTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/avira/android/antivirus/Antivirus;J)J
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/avira/android/antivirus/Antivirus;->mCurrentScanningTime:J

    return-wide p1
.end method

.method static synthetic access$814(Lcom/avira/android/antivirus/Antivirus;J)J
    .locals 3

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mCurrentScanningTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mCurrentScanningTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/avira/android/antivirus/Antivirus;)J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mPreviousEstimatedTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/avira/android/antivirus/Antivirus;J)J
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/avira/android/antivirus/Antivirus;->mPreviousEstimatedTime:J

    return-wide p1
.end method

.method static synthetic access$922(Lcom/avira/android/antivirus/Antivirus;J)J
    .locals 3

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mPreviousEstimatedTime:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mPreviousEstimatedTime:J

    return-wide v0
.end method

.method private baseScannerCallBack(ILjava/lang/String;Lcom/avira/android/antivirus/data/ScannerCallbackData;Lcom/avira/android/antivirus/bk;Lcom/avira/android/antivirus/e;)V
    .locals 2

    .prologue
    .line 533
    invoke-virtual {p4}, Lcom/avira/android/antivirus/bk;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/ScannerCallbackData;

    .line 534
    if-nez v0, :cond_1

    .line 540
    sget-object v0, Lcom/avira/android/antivirus/e;->ON_ACCESS:Lcom/avira/android/antivirus/e;

    if-ne p5, v0, :cond_2

    .line 542
    if-eqz p3, :cond_0

    if-nez p1, :cond_0

    .line 544
    invoke-virtual {p4}, Lcom/avira/android/antivirus/bk;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_0
    :goto_0
    invoke-virtual {p4, p1, p3}, Lcom/avira/android/antivirus/bk;->a(ILcom/avira/android/antivirus/data/ScannerCallbackData;)V

    .line 563
    :cond_1
    return-void

    .line 547
    :cond_2
    sget-object v0, Lcom/avira/android/antivirus/e;->ON_DEMAND:Lcom/avira/android/antivirus/e;

    if-ne p5, v0, :cond_0

    .line 549
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 551
    invoke-static {}, Lcom/avira/android/a/c;->a()Lcom/avira/android/a/c;

    move-result-object v0

    invoke-virtual {p3}, Lcom/avira/android/antivirus/data/ScannerCallbackData;->getFileInfo()Lcom/avira/android/antivirus/data/ScannedFileInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/antivirus/data/ScannedFileInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 553
    invoke-virtual {p4}, Lcom/avira/android/antivirus/bk;->j()V

    goto :goto_0

    .line 557
    :cond_3
    invoke-virtual {p4}, Lcom/avira/android/antivirus/bk;->k()V

    goto :goto_0
.end method

.method public static extractMavapiComponents()V
    .locals 4

    .prologue
    .line 202
    sget-object v1, Lcom/avira/android/antivirus/Antivirus;->ENGINE_COMPONENTS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 204
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {v3}, Lcom/avira/android/ApplicationService;->a(Ljava/lang/String;)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method public static extractMavapiComponentsForSidegrade()V
    .locals 5

    .prologue
    .line 213
    sget-object v1, Lcom/avira/android/antivirus/Antivirus;->ENGINE_COMPONENTS_SIDEGRADE:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 215
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    const-string v4, "antivirus"

    invoke-static {v4, v3}, Lcom/avira/android/ApplicationService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method

.method private generateScanResultLog(Ljava/lang/String;JILjava/util/ArrayList;I)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->getOnDemandEngineVersion()Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->getOnDemandVdfVersion()Ljava/lang/String;

    move-result-object v3

    .line 626
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->getOnDemandVdfSignatureDate()Ljava/lang/String;

    move-result-object v4

    .line 632
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-wide v6, p2

    move/from16 v9, p4

    :goto_0
    move-object v1, p1

    move-object/from16 v5, p5

    move/from16 v8, p6

    .line 648
    invoke-static/range {v1 .. v10}, Lcom/avira/android/antivirus/bh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;JIII)Z

    .line 650
    return-void

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->getOnDemandScanEndTime()J

    move-result-wide v6

    .line 644
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->getNumberOfFileScanFromOnDemandScan()I

    move-result v9

    .line 645
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->getManualScanResults()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v10

    goto :goto_0
.end method

.method private generateScanResultLog(Ljava/util/ArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 603
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/avira/android/antivirus/Antivirus;->generateScanResultLog(Ljava/lang/String;JILjava/util/ArrayList;I)V

    .line 604
    return-void
.end method

.method public static getAntivirusComponentInstallPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/avira/android/antivirus/Antivirus;->mInstallPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getAntivirusComponentInstallPathSidegrade()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/avira/android/antivirus/Antivirus;->mInstallPathSidegrade:Ljava/lang/String;

    return-object v0
.end method

.method private native getEngineVersion(J)Ljava/lang/String;
.end method

.method private native getVDFSignatureDate(J)Ljava/lang/String;
.end method

.method private native getVDFVersion(J)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized initialize()I
.end method

.method private native loadJavaClassToJNI()V
.end method

.method public static native nativeCrashTest()V
.end method

.method private native registerAccessScanner(I)J
.end method

.method private native registerDemandScanner(I)J
.end method

.method private native scan(Ljava/lang/String;J)I
.end method

.method private native scanList([Ljava/lang/String;J)I
.end method


# virtual methods
.method public declared-synchronized abortCurrentScan()V
    .locals 1

    .prologue
    .line 567
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/Antivirus;->setIsHalting(Z)V

    .line 568
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mScanNotificationHelper:Lcom/avira/android/antivirus/bg;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/bg;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit p0

    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->terminateMavapiAndInstance()V

    .line 575
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 576
    return-void
.end method

.method public getAccessScanThreadExecutor()Lcom/avira/android/antivirus/z;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mAccessScanThreadExecutor:Lcom/avira/android/antivirus/z;

    return-object v0
.end method

.method public getBytesScanned()J
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/avira/android/antivirus/Antivirus;->sManualScanner:Lcom/avira/android/antivirus/c;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/c;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDemandScanThreadExecutor()Lcom/avira/android/antivirus/z;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScanThreadExecutor:Lcom/avira/android/antivirus/z;

    return-object v0
.end method

.method public getManualScanResults()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    iget-object v1, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    if-eqz v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/bk;->i()Ljava/util/HashMap;

    move-result-object v0

    .line 313
    :cond_0
    return-object v0
.end method

.method public getManualScanResultsWithFileExistCheck()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->getManualScanResults()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 326
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 327
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->getManualScanResults()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 328
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 329
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 330
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    invoke-static {v0}, Lcom/avira/android/utilities/i;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 334
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 338
    :cond_2
    return-object v0
.end method

.method public getNumberOfAppScanFromOnDemandScan()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/bk;->l()I

    move-result v0

    return v0
.end method

.method public getNumberOfFileScanFromOnDemandScan()I
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/bk;->m()I

    move-result v0

    return v0
.end method

.method public getOnDemandEngineVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 664
    iget-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScanContextPointer:J

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Antivirus;->getEngineVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnDemandScanCurrentCompletedTaskCount()I
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/avira/android/antivirus/Antivirus;->sManualScanner:Lcom/avira/android/antivirus/c;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/c;->e()I

    move-result v0

    return v0
.end method

.method public getOnDemandScanEndTime()J
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/bk;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOnDemandScanStartTime()J
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/bk;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOnDemandTotalNumberOfScanTask()I
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/avira/android/antivirus/Antivirus;->sManualScanner:Lcom/avira/android/antivirus/c;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/c;->b()I

    move-result v0

    return v0
.end method

.method public getOnDemandVdfSignatureDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 659
    iget-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScanContextPointer:J

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Antivirus;->getVDFSignatureDate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnDemandVdfVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 590
    iget-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScanContextPointer:J

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/Antivirus;->getVDFVersion(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytesToScan()J
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/avira/android/antivirus/Antivirus;->sManualScanner:Lcom/avira/android/antivirus/c;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/c;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public initializeEngine()V
    .locals 5

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/avira/android/antivirus/Antivirus;->initialize()I

    move-result v0

    .line 399
    if-eqz v0, :cond_1

    .line 401
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "AV"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to initialize scan engine - Error = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mBackupPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avira/android/utilities/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 405
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    const-string v1, "AV"

    const-string v2, "Rolling to backup"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->terminateMavapiAndInstance()V

    .line 410
    sget-boolean v0, Lcom/avira/android/debug/f;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "AV"

    const-string v1, "revert to backup"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_0
    sget-object v0, Lcom/avira/android/antivirus/Antivirus;->mInstallPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avira/android/utilities/i;->c(Ljava/lang/String;)Z

    .line 417
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mBackupPath:Ljava/lang/String;

    sget-object v1, Lcom/avira/android/antivirus/Antivirus;->mInstallPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avira/android/utilities/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/avira/android/antivirus/Antivirus;->initialize()I

    move-result v0

    .line 419
    if-eqz v0, :cond_2

    .line 421
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initialize engine failed. Error code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mBackupPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/avira/android/utilities/i;->c(Ljava/lang/String;)Z

    .line 431
    :cond_2
    invoke-direct {p0}, Lcom/avira/android/antivirus/Antivirus;->loadJavaClassToJNI()V

    .line 435
    invoke-static {}, Lcom/avira/android/antivirus/s;->a()Z

    move-result v0

    .line 436
    invoke-static {}, Lcom/avira/android/antivirus/s;->b()Z

    move-result v1

    .line 438
    invoke-static {v0, v1}, Lcom/avira/android/antivirus/v;->a(ZZ)I

    move-result v0

    .line 439
    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/Antivirus;->setPrefixOption(I)V

    .line 441
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->registerDemandAndAccessScannerContext()V

    .line 442
    return-void
.end method

.method public isDemandScanRunning()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScanThreadExecutor:Lcom/avira/android/antivirus/z;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/z;->a()Z

    move-result v0

    return v0
.end method

.method public isHalting()Z
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/avira/android/antivirus/Antivirus;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 134
    iget-boolean v0, p0, Lcom/avira/android/antivirus/Antivirus;->mIsHalting:Z

    .line 136
    iget-object v1, p0, Lcom/avira/android/antivirus/Antivirus;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAccessScannerCallBack(ILjava/lang/String;Lcom/avira/android/antivirus/data/ScannerCallbackData;)V
    .locals 6

    .prologue
    .line 527
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mAccessScannerRunnableQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/avira/android/antivirus/bk;

    sget-object v5, Lcom/avira/android/antivirus/e;->ON_ACCESS:Lcom/avira/android/antivirus/e;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/avira/android/antivirus/Antivirus;->baseScannerCallBack(ILjava/lang/String;Lcom/avira/android/antivirus/data/ScannerCallbackData;Lcom/avira/android/antivirus/bk;Lcom/avira/android/antivirus/e;)V

    .line 528
    return-void
.end method

.method public declared-synchronized onDemandScannerCallBack(ILjava/lang/String;Lcom/avira/android/antivirus/data/ScannerCallbackData;)V
    .locals 6

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->isHalting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mManualScanAbort:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 522
    :cond_0
    iget-object v4, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    sget-object v5, Lcom/avira/android/antivirus/e;->ON_DEMAND:Lcom/avira/android/antivirus/e;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/avira/android/antivirus/Antivirus;->baseScannerCallBack(ILjava/lang/String;Lcom/avira/android/antivirus/data/ScannerCallbackData;Lcom/avira/android/antivirus/bk;Lcom/avira/android/antivirus/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putScanResultToDemandScanCallbackDataFromEngine(Ljava/lang/String;Ljava/lang/String;II)Lcom/avira/android/antivirus/data/ScannerCallbackData;
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/bk;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/ScannerCallbackData;

    .line 508
    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lcom/avira/android/antivirus/data/ScannerCallbackData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/avira/android/antivirus/data/ScannerCallbackData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 511
    iget-object v1, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    invoke-virtual {v1}, Lcom/avira/android/antivirus/bk;->i()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :cond_0
    return-object v0
.end method

.method public reInitializeEngine(I)V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/avira/android/antivirus/Antivirus;->initialize()I

    .line 448
    invoke-direct {p0}, Lcom/avira/android/antivirus/Antivirus;->loadJavaClassToJNI()V

    .line 450
    invoke-virtual {p0, p1}, Lcom/avira/android/antivirus/Antivirus;->setPrefixOption(I)V

    .line 452
    invoke-virtual {p0}, Lcom/avira/android/antivirus/Antivirus;->registerDemandAndAccessScannerContext()V

    .line 453
    return-void
.end method

.method public declared-synchronized registerDemandAndAccessScannerContext()V
    .locals 4

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/avira/android/antivirus/af;->b()I

    move-result v0

    .line 459
    invoke-direct {p0, v0}, Lcom/avira/android/antivirus/Antivirus;->registerDemandScanner(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScanContextPointer:J

    .line 460
    invoke-direct {p0, v0}, Lcom/avira/android/antivirus/Antivirus;->registerAccessScanner(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mAccessScanContextPointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanFile(Landroid/os/Handler;Lcom/avira/android/antivirus/e;)V
    .locals 1

    .prologue
    .line 496
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/avira/android/antivirus/Antivirus;->scanFile(Landroid/os/Handler;Lcom/avira/android/antivirus/e;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanFile(Landroid/os/Handler;Lcom/avira/android/antivirus/e;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/avira/android/antivirus/e;->ON_DEMAND:Lcom/avira/android/antivirus/e;

    if-ne p2, v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScanThreadExecutor:Lcom/avira/android/antivirus/z;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "AV"

    const-string v1, "Existing Manual Scan running - Aborting request."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :goto_0
    monitor-exit p0

    return-void

    .line 474
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "AV"

    const-string v1, "Submitting manual scan request."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/Antivirus;->setIsHalting(Z)V

    .line 478
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    invoke-virtual {v0, p1}, Lcom/avira/android/antivirus/bk;->a(Landroid/os/Handler;)V

    .line 480
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/bk;->h()V

    .line 482
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScanThreadExecutor:Lcom/avira/android/antivirus/z;

    iget-object v1, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScannerRunnable:Lcom/avira/android/antivirus/bk;

    invoke-virtual {v0, v1}, Lcom/avira/android/antivirus/z;->a(Ljava/lang/Runnable;)V

    .line 484
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "AV"

    const-string v1, "Submitted manual scan request successfully."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 488
    :cond_1
    :try_start_2
    new-instance v0, Lcom/avira/android/antivirus/b;

    invoke-direct {v0, p0, p3}, Lcom/avira/android/antivirus/b;-><init>(Lcom/avira/android/antivirus/Antivirus;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, p1}, Lcom/avira/android/antivirus/bk;->a(Landroid/os/Handler;)V

    .line 490
    iget-object v1, p0, Lcom/avira/android/antivirus/Antivirus;->mAccessScanThreadExecutor:Lcom/avira/android/antivirus/z;

    invoke-virtual {v1, v0}, Lcom/avira/android/antivirus/z;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setIsHalting(Z)V
    .locals 1

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 112
    iput-boolean p1, p0, Lcom/avira/android/antivirus/Antivirus;->mIsHalting:Z

    .line 114
    iget-object v0, p0, Lcom/avira/android/antivirus/Antivirus;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setOnDemandScanPostbackHandler(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/avira/android/antivirus/Antivirus;->sManualScanner:Lcom/avira/android/antivirus/c;

    invoke-virtual {v0, p1}, Lcom/avira/android/antivirus/c;->a(Landroid/os/Handler;)V

    .line 229
    return-void
.end method

.method public native setPrefixOption(I)V
.end method

.method public synchronized native declared-synchronized terminate(JJ)I
.end method

.method public terminateMavapiAndInstance()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 580
    iget-wide v0, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScanContextPointer:J

    iget-wide v2, p0, Lcom/avira/android/antivirus/Antivirus;->mAccessScanContextPointer:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/avira/android/antivirus/Antivirus;->terminate(JJ)I

    move-result v0

    .line 581
    if-nez v0, :cond_0

    .line 583
    iput-wide v4, p0, Lcom/avira/android/antivirus/Antivirus;->mDemandScanContextPointer:J

    .line 584
    iput-wide v4, p0, Lcom/avira/android/antivirus/Antivirus;->mAccessScanContextPointer:J

    .line 586
    :cond_0
    return-void
.end method

.method public updateScanEngineSettings()V
    .locals 4

    .prologue
    .line 674
    :try_start_0
    sget-object v0, Lcom/avira/android/antivirus/Antivirus;->sManualScanner:Lcom/avira/android/antivirus/c;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "av_settings_adware"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 678
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-string v2, "av_settings_pua"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 680
    invoke-static {v0, v1}, Lcom/avira/android/antivirus/v;->a(ZZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/Antivirus;->reInitializeEngine(I)V

    .line 681
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "AV"

    const-string v1, "antivirus settings updated"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :goto_0
    return-void

    .line 685
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/antivirus/Antivirus;->mUpdateSettingsWhenIdle:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 690
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v1, "AV"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
