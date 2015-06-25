.class Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final ANALYZER_VERSION:I = 0x1

.field static final ANY_SESSION_FILENAME_FILTER:Ljava/io/FilenameFilter;

.field static final CLS_CRASH_MARKER_FILE_NAME:Ljava/lang/String; = "crash_marker"

.field private static final EVENT_TYPE_CRASH:Ljava/lang/String; = "crash"

.field private static final EVENT_TYPE_LOGGED:Ljava/lang/String; = "error"

.field private static final GENERATOR_FORMAT:Ljava/lang/String; = "Crashlytics Android SDK/%s"

.field static final INITIALIZATION_MARKER_FILE_NAME:Ljava/lang/String; = "initialization_marker"

.field static final INVALID_CLS_CACHE_DIR:Ljava/lang/String; = "invalidClsFiles"

.field static final LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_COMPLETE_SESSIONS_COUNT:I = 0x4

.field private static final MAX_LOCAL_LOGGED_EXCEPTIONS:I = 0x40

.field static final MAX_LOG_SIZE:I = 0x10000

.field static final MAX_OPEN_SESSIONS:I = 0x8

.field private static final SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;
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

.field static final SESSION_APP_TAG:Ljava/lang/String; = "SessionApp"

.field static final SESSION_BEGIN_TAG:Ljava/lang/String; = "BeginSession"

.field static final SESSION_DEVICE_TAG:Ljava/lang/String; = "SessionDevice"

.field static final SESSION_FATAL_TAG:Ljava/lang/String; = "SessionCrash"

.field static final SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

.field private static final SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SESSION_ID_LENGTH:I = 0x23

.field static final SESSION_NON_FATAL_TAG:Ljava/lang/String; = "SessionEvent"

.field static final SESSION_OS_TAG:Ljava/lang/String; = "SessionOS"

.field static final SESSION_USER_TAG:Ljava/lang/String; = "SessionUser"

.field private static final SIGNAL_DEFAULT:Ljava/lang/String; = "0"

.field private static final SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/ByteString;

.field static final SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final crashlytics:Lcom/crashlytics/android/Crashlytics;

.field private final defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private exceptionStack:[Ljava/lang/StackTraceElement;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final filesDir:Ljava/io/File;

.field private final generator:Ljava/lang/String;

.field private final idManager:Lio/fabric/sdk/android/services/b/y;

.field private final initializationMarkerFile:Ljava/io/File;

.field private final isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private logFile:Lio/fabric/sdk/android/services/b/ac;

.field private final maxChainedExceptionsDepth:I

.field private final optionalBuildIdBytes:Lcom/crashlytics/android/ByteString;

.field private final packageName:Lcom/crashlytics/android/ByteString;

.field private powerConnected:Z

.field private final powerConnectedReceiver:Landroid/content/BroadcastReceiver;

.field private final powerDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private final receiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field private stacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private threads:[Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$1;

    invoke-direct {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$1;-><init>()V

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

    .line 145
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$2;

    invoke-direct {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$2;-><init>()V

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    .line 152
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$3;

    invoke-direct {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$3;-><init>()V

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    .line 162
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$4;

    invoke-direct {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$4;-><init>()V

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->ANY_SESSION_FILENAME_FILTER:Ljava/io/FilenameFilter;

    .line 169
    const-string v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    .line 172
    const-string v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;

    .line 194
    const-string v0, "0"

    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/ByteString;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsListener;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lio/fabric/sdk/android/services/b/y;Lcom/crashlytics/android/Crashlytics;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 207
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->receiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 253
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 254
    iput-object p3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 255
    iput-object p5, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/b/y;

    .line 256
    iput-object p6, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    .line 257
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 258
    invoke-virtual {p6}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    .line 259
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    const-string v2, "initialization_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->initializationMarkerFile:Ljava/io/File;

    .line 260
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Crashlytics Android SDK/%s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p6}, Lcom/crashlytics/android/Crashlytics;->getVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->generator:Ljava/lang/String;

    .line 266
    const/16 v0, 0x8

    iput v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->maxChainedExceptionsDepth:I

    .line 269
    invoke-direct {p0, p2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->notifyCrashlyticsListenerOfPreviousCrash(Lcom/crashlytics/android/CrashlyticsListener;)V

    .line 271
    invoke-virtual {p6}, Lcom/crashlytics/android/Crashlytics;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->packageName:Lcom/crashlytics/android/ByteString;

    .line 272
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->optionalBuildIdBytes:Lcom/crashlytics/android/ByteString;

    .line 275
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$5;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$5;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 284
    new-instance v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$6;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$6;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    iput-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 291
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p6}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 295
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->receiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 298
    return-void

    .line 272
    :cond_0
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doCloseSessions()V

    return-void
.end method

.method static synthetic access$102(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Z)Z
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Ljava/io/File;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->initializationMarkerFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->handleUncaughtException(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Lio/fabric/sdk/android/services/b/ac;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->logFile:Lio/fabric/sdk/android/services/b/ac;

    return-object v0
.end method

.method static synthetic access$500(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Z
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->initLogFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doWriteNonFatal(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doOpenSession()V

    return-void
.end method

.method static synthetic access$800(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/Crashlytics;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    return-object v0
.end method

.method static synthetic access$900(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Lcom/crashlytics/android/internal/models/SessionEventData;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeExternalCrashEvent(Lcom/crashlytics/android/internal/models/SessionEventData;)V

    return-void
.end method

.method private closeWithoutRenamingOrLog(Lcom/crashlytics/android/ClsFileOutputStream;)V
    .locals 4

    .prologue
    .line 748
    if-eqz p1, :cond_0

    .line 750
    :try_start_0
    invoke-virtual {p1}, Lcom/crashlytics/android/ClsFileOutputStream;->closeInProgressStream()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 751
    :catch_0
    move-exception v0

    .line 752
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error closing session file stream in the presence of an exception"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private deleteLegacyInvalidCacheDir()V
    .locals 5

    .prologue
    .line 907
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v0

    const-string v2, "invalidClsFiles"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 909
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 912
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 914
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 918
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 920
    :cond_1
    return-void
.end method

.method private deleteSessionPartFilesFor(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 762
    invoke-direct {p0, p1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listSessionPartFilesFor(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 763
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    :cond_0
    return-void
.end method

.method private doCloseSessions()V
    .locals 9

    .prologue
    .line 604
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->trimOpenSessions(I)V

    .line 606
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_2

    .line 611
    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionUser(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getSessionSettingsData()Lio/fabric/sdk/android/services/f/p;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_0

    .line 616
    iget v1, v0, Lio/fabric/sdk/android/services/f/p;->c:I

    .line 618
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 619
    invoke-virtual {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listSessionBeginFiles()[Ljava/io/File;

    move-result-object v2

    .line 621
    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    .line 622
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 623
    invoke-direct {p0, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 625
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Closing session: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v6}, Lio/fabric/sdk/android/q;->b()V

    .line 627
    invoke-direct {p0, v4, v5, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionPartsToSessionFile(Ljava/io/File;Ljava/lang/String;I)V

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 638
    :cond_1
    :goto_1
    return-void

    .line 636
    :cond_2
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    goto :goto_1
.end method

.method private doOpenSession()V
    .locals 5

    .prologue
    .line 588
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 589
    new-instance v1, Lcom/crashlytics/android/CLSUUID;

    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/b/y;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/CLSUUID;-><init>(Lio/fabric/sdk/android/services/b/y;)V

    invoke-virtual {v1}, Lcom/crashlytics/android/CLSUUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Opening an new session with ID "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v2}, Lio/fabric/sdk/android/q;->b()V

    .line 594
    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeBeginSession(Ljava/util/Date;Ljava/lang/String;)V

    .line 595
    invoke-direct {p0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionApp(Ljava/lang/String;)V

    .line 596
    invoke-direct {p0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionOS(Ljava/lang/String;)V

    .line 597
    invoke-direct {p0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionDevice(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method private doWriteNonFatal(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1088
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v8

    .line 1090
    if-eqz v8, :cond_0

    .line 1093
    invoke-static {v8}, Lcom/crashlytics/android/Crashlytics;->recordLoggedExceptionEvent(Ljava/lang/String;)V

    .line 1098
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics is logging non-fatal exception \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" from thread "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 1102
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "SessionEvent"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1106
    new-instance v7, Lcom/crashlytics/android/ClsFileOutputStream;

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    invoke-direct {v7, v1, v0}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    :try_start_1
    invoke-static {v7}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;

    move-result-object v2

    .line 1109
    const-string v5, "error"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionEvent(Ljava/util/Date;Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1115
    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1116
    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v7, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1122
    :goto_0
    const/16 v0, 0x40

    :try_start_2
    invoke-direct {p0, v8, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->trimSessionEventFiles(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1131
    :goto_1
    return-void

    .line 1110
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1111
    :goto_2
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "An error occurred in the non-fatal exception logger"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1113
    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1115
    const-string v0, "Failed to flush to non-fatal file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1116
    const-string v0, "Failed to close non-fatal file output stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 1115
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    const-string v3, "Failed to flush to non-fatal file."

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1116
    const-string v2, "Failed to close non-fatal file output stream."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1123
    :catch_1
    move-exception v0

    .line 1124
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "An error occurred when trimming non-fatal files."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1128
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v3, "Tried to write a non-fatal exception while no session was open."

    invoke-interface {v0, v1, v3, v2}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1115
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1110
    :catch_2
    move-exception v0

    move-object v1, v7

    goto :goto_2
.end method

.method private ensureFileArrayNotNull([Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 794
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/io/File;

    :cond_0
    return-object p1
.end method

.method private executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$12;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$12;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 703
    :goto_0
    return-object v0

    .line 701
    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 703
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$13;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$13;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 733
    :goto_0
    return-object v0

    .line 731
    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 733
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 662
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 663
    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0x4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 669
    :catch_0
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    invoke-interface {v1}, Lio/fabric/sdk/android/q;->b()V

    goto :goto_0

    .line 672
    :catch_1
    move-exception v1

    .line 673
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed to execute task."

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getBinaryImageSize()I
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1821
    const/4 v0, 0x1

    invoke-static {v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1824
    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1825
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->packageName:Lcom/crashlytics/android/ByteString;

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1826
    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->optionalBuildIdBytes:Lcom/crashlytics/android/ByteString;

    if-eqz v1, :cond_0

    .line 1827
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->optionalBuildIdBytes:Lcom/crashlytics/android/ByteString;

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1830
    :cond_0
    return v0
.end method

.method private getCurrentSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 523
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 525
    sget-object v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 526
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeviceIdentifierSize(Lio/fabric/sdk/android/services/b/z;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1787
    const/4 v0, 0x1

    iget v1, p1, Lio/fabric/sdk/android/services/b/z;->a:I

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    .line 1788
    const/4 v1, 0x2

    invoke-static {p2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1790
    return v0
.end method

.method private getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1917
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    .line 1918
    const/4 v1, 0x2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-static {p2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1920
    return v0
.end method

.method private getEventAppExecutionExceptionSize(Ljava/lang/Throwable;I)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1943
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1949
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 1950
    if-eqz v2, :cond_0

    .line 1951
    const/4 v3, 0x3

    invoke-static {v2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1954
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    .line 1955
    invoke-direct {p0, v3, v8}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    .line 1956
    const/4 v6, 0x4

    invoke-static {v6}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v3}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/2addr v3, v0

    .line 1954
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 1962
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 1963
    if-eqz v2, :cond_2

    .line 1964
    iget v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->maxChainedExceptionsDepth:I

    if-ge p2, v3, :cond_3

    .line 1965
    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventAppExecutionExceptionSize(Ljava/lang/Throwable;I)I

    move-result v1

    .line 1967
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1982
    :cond_2
    :goto_1
    return v0

    .line 1973
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 1974
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 1975
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1978
    :cond_4
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private getEventAppExecutionSignalSize()I
    .locals 4

    .prologue
    .line 1986
    const/4 v0, 0x1

    sget-object v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/ByteString;

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1989
    const/4 v1, 0x2

    sget-object v2, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/ByteString;

    invoke-static {v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1990
    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1992
    return v0
.end method

.method private getEventAppExecutionSize(Ljava/lang/Thread;Ljava/lang/Throwable;)I
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1887
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->exceptionStack:[Ljava/lang/StackTraceElement;

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1, v7}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 1890
    invoke-static {v7}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 1893
    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->threads:[Ljava/lang/Thread;

    array-length v4, v1

    move v1, v2

    move v3, v0

    .line 1894
    :goto_0
    if-ge v1, v4, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->threads:[Ljava/lang/Thread;

    aget-object v5, v0, v1

    .line 1896
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->stacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-direct {p0, v5, v0, v2, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 1897
    invoke-static {v7}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v5

    invoke-static {v0}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    .line 1894
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1901
    :cond_0
    invoke-direct {p0, p2, v7}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventAppExecutionExceptionSize(Ljava/lang/Throwable;I)I

    move-result v0

    .line 1902
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    .line 1905
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventAppExecutionSignalSize()I

    move-result v1

    .line 1906
    invoke-static {v8}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1909
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getBinaryImageSize()I

    move-result v1

    .line 1910
    invoke-static {v8}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1913
    return v0
.end method

.method private getEventAppSize(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1859
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventAppExecutionSize(Ljava/lang/Thread;Ljava/lang/Throwable;)I

    move-result v0

    .line 1862
    invoke-static {v3}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 1865
    if-eqz p3, :cond_0

    .line 1866
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 1867
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1869
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v1, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    move v2, v0

    .line 1871
    goto :goto_0

    :cond_0
    move v2, v0

    .line 1875
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_2

    .line 1876
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-eq v0, v4, :cond_3

    move v0, v3

    :goto_1
    invoke-static {v1, v0}, Lcom/crashlytics/android/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 1880
    :cond_2
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    .line 1883
    return v0

    .line 1876
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getEventDeviceSize(FIZIJJ)I
    .locals 3

    .prologue
    .line 1925
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/crashlytics/android/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1928
    const/4 v1, 0x2

    invoke-static {v1, p2}, Lcom/crashlytics/android/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1929
    const/4 v1, 0x3

    invoke-static {v1, p3}, Lcom/crashlytics/android/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1930
    const/4 v1, 0x4

    invoke-static {v1, p4}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1931
    const/4 v1, 0x5

    invoke-static {v1, p5, p6}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1932
    const/4 v1, 0x6

    invoke-static {v1, p7, p8}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1934
    return v0
.end method

.method private getEventLogSize(Lcom/crashlytics/android/ByteString;)I
    .locals 1

    .prologue
    .line 1939
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    return v0
.end method

.method private getFrameSize(Ljava/lang/StackTraceElement;Z)I
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1996
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2000
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2005
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2008
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2009
    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2013
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_3

    .line 2015
    const/4 v3, 0x4

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    move v3, v0

    .line 2017
    :goto_1
    const/4 v4, 0x5

    if-eqz p2, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v4, v0}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v3

    .line 2019
    return v0

    .line 2002
    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2017
    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_1
.end method

.method private static getMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2183
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 2184
    if-nez v0, :cond_0

    .line 2185
    const/4 v0, 0x0

    .line 2188
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "(\r\n|\n|\u000c)"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSessionAppOrgSize()I
    .locals 3

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1769
    const/4 v1, 0x1

    invoke-static {}, Lio/fabric/sdk/android/b;->d()Z

    move-result v2

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/b/j;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1772
    return v0
.end method

.method private getSessionAppSize(Lcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;I)I
    .locals 4

    .prologue
    .line 1752
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1755
    const/4 v1, 0x2

    invoke-static {v1, p2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1756
    const/4 v1, 0x3

    invoke-static {v1, p3}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1757
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionAppOrgSize()I

    move-result v1

    .line 1758
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1760
    const/4 v1, 0x6

    invoke-static {v1, p4}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1761
    const/16 v1, 0xa

    invoke-static {v1, p5}, Lcom/crashlytics/android/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1763
    return v0
.end method

.method private getSessionDeviceSize(ILcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;IJJZLjava/util/Map;ILcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/crashlytics/android/ByteString;",
            "Lcom/crashlytics/android/ByteString;",
            "IJJZ",
            "Ljava/util/Map",
            "<",
            "Lio/fabric/sdk/android/services/b/z;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/crashlytics/android/ByteString;",
            "Lcom/crashlytics/android/ByteString;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1797
    const/4 v1, 0x1

    invoke-static {v1, p2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    .line 1800
    const/4 v2, 0x3

    invoke-static {v2, p1}, Lcom/crashlytics/android/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 1801
    if-nez p3, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 1802
    const/4 v2, 0x5

    invoke-static {v2, p4}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    .line 1803
    const/4 v2, 0x6

    invoke-static {v2, p5, p6}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 1804
    const/4 v2, 0x7

    invoke-static {v2, p7, p8}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    .line 1805
    const/16 v2, 0xa

    move/from16 v0, p9

    invoke-static {v2, v0}, Lcom/crashlytics/android/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 1806
    if-eqz p10, :cond_1

    .line 1807
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 1808
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/fabric/sdk/android/services/b/z;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getDeviceIdentifierSize(Lio/fabric/sdk/android/services/b/z;Ljava/lang/String;)I

    move-result v1

    .line 1809
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    move v3, v1

    .line 1811
    goto :goto_1

    .line 1801
    :cond_0
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1813
    :cond_2
    const/16 v1, 0xc

    move/from16 v0, p11

    invoke-static {v1, v0}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int v2, v3, v1

    .line 1814
    if-nez p12, :cond_3

    const/4 v1, 0x0

    :goto_2
    add-int/2addr v2, v1

    .line 1815
    if-nez p13, :cond_4

    const/4 v1, 0x0

    :goto_3
    add-int/2addr v1, v2

    .line 1817
    return v1

    .line 1814
    :cond_3
    const/16 v1, 0xd

    move-object/from16 v0, p12

    invoke-static {v1, v0}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    goto :goto_2

    .line 1815
    :cond_4
    const/16 v1, 0xe

    move-object/from16 v0, p13

    invoke-static {v1, v0}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    goto :goto_3
.end method

.method private getSessionEventSize(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;JLjava/util/Map;FIZIJJLcom/crashlytics/android/ByteString;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;FIZIJJ",
            "Lcom/crashlytics/android/ByteString;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1837
    const/4 v2, 0x1

    move-wide/from16 v0, p4

    invoke-static {v2, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    .line 1840
    const/4 v3, 0x2

    invoke-static/range {p3 .. p3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1841
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p2, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventAppSize(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)I

    move-result v3

    .line 1842
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object v3, p0

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move-wide/from16 v8, p11

    move-wide/from16 v10, p13

    .line 1844
    invoke-direct/range {v3 .. v11}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventDeviceSize(FIZIJJ)I

    move-result v3

    .line 1846
    const/4 v4, 0x5

    invoke-static {v4}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1849
    if-eqz p15, :cond_0

    .line 1850
    move-object/from16 v0, p15

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventLogSize(Lcom/crashlytics/android/ByteString;)I

    move-result v3

    .line 1851
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1855
    :cond_0
    return v2
.end method

.method private getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 540
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSessionOSSize(Lcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;Z)I
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1776
    const/4 v0, 0x1

    invoke-static {v0, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1779
    const/4 v1, 0x2

    invoke-static {v1, p1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1780
    invoke-static {v2, p2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1781
    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/crashlytics/android/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1783
    return v0
.end method

.method private getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 6

    .prologue
    .line 2024
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    .line 2025
    const/4 v1, 0x2

    invoke-static {v1, p3}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    .line 2027
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    .line 2028
    invoke-direct {p0, v3, p4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    .line 2029
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/crashlytics/android/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/crashlytics/android/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 2027
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2033
    :cond_0
    return v1
.end method

.method private handleUncaughtException(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeFatal(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 346
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doCloseSessions()V

    .line 347
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doOpenSession()V

    .line 349
    invoke-virtual {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->trimSessionFiles()V

    .line 351
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->shouldPromptUserBeforeSendingCrashReports()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->sendSessionReports()V

    .line 354
    :cond_0
    return-void
.end method

.method private initLogFile()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 946
    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v2}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.crashlytics.CollectCustomLogs"

    invoke-static {v2, v3, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 950
    if-nez v2, :cond_0

    .line 951
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    invoke-interface {v1}, Lio/fabric/sdk/android/q;->b()V

    .line 979
    :goto_0
    return v0

    .line 957
    :cond_0
    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->logFile:Lio/fabric/sdk/android/services/b/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not close log file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->logFile:Lio/fabric/sdk/android/services/b/ac;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 959
    const/4 v3, 0x0

    .line 970
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "crashlytics-userlog-"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".temp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 971
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v5}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :try_start_1
    new-instance v3, Lio/fabric/sdk/android/services/b/ac;

    invoke-direct {v3, v2}, Lio/fabric/sdk/android/services/b/ac;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->logFile:Lio/fabric/sdk/android/services/b/ac;

    .line 973
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    .line 979
    goto :goto_0

    .line 974
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 975
    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not create log file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2, v1}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 974
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private listCompleteSessionFiles()[Ljava/io/File;
    .locals 1

    .prologue
    .line 775
    sget-object v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->ensureFileArrayNotNull([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private listSessionPartFilesFor(Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 771
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$SessionPartFileFilter;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$SessionPartFileFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private notifyCrashlyticsListenerOfPreviousCrash(Lcom/crashlytics/android/CrashlyticsListener;)V
    .locals 4

    .prologue
    .line 365
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 366
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "crash_marker"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 372
    if-eqz p1, :cond_0

    .line 374
    :try_start_0
    invoke-interface {p1}, Lcom/crashlytics/android/CrashlyticsListener;->crashlyticsDidDetectCrashDuringPreviousExecution()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendSessionReports()V
    .locals 5

    .prologue
    .line 2091
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listCompleteSessionFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 2095
    new-instance v4, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$20;

    invoke-direct {v4, p0, v3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$20;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/io/File;)V

    invoke-direct {p0, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2091
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2116
    :cond_0
    return-void
.end method

.method private stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;
    .locals 1

    .prologue
    .line 2199
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    goto :goto_0
.end method

.method private trimOpenSessions(I)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 830
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 832
    invoke-virtual {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listSessionBeginFiles()[Ljava/io/File;

    move-result-object v3

    .line 833
    sget-object v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->LARGEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 834
    array-length v1, v3

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v0

    .line 836
    :goto_0
    if-ge v1, v4, :cond_0

    .line 837
    aget-object v5, v3, v1

    invoke-direct {p0, v5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 838
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    :cond_0
    new-instance v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$AnySessionPartFileFilter;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$AnySessionPartFileFilter;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$1;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 843
    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 844
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 845
    sget-object v6, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 847
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 848
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 850
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 851
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Trimming open session file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v6}, Lio/fabric/sdk/android/q;->b()V

    .line 852
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 843
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 855
    :cond_2
    return-void
.end method

.method private trimSessionEventFiles(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 807
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, v2}, Lcom/crashlytics/android/Utils;->capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 809
    return-void
.end method

.method private writeBeginSession(Ljava/util/Date;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1312
    .line 1315
    :try_start_0
    new-instance v2, Lcom/crashlytics/android/ClsFileOutputStream;

    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BeginSession"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1318
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;

    move-result-object v1

    .line 1319
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->generator:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1320
    const/4 v0, 0x2

    invoke-static {p2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1321
    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v1, v0, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1326
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1327
    const-string v0, "Failed to close begin session file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1328
    return-void

    .line 1322
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1323
    :goto_0
    :try_start_2
    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1324
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1326
    :catchall_0
    move-exception v0

    :goto_1
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1327
    const-string v1, "Failed to close begin session file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1326
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 1322
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private writeExternalCrashEvent(Lcom/crashlytics/android/internal/models/SessionEventData;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 470
    .line 473
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v2

    .line 475
    if-eqz v2, :cond_0

    .line 476
    new-instance v1, Lcom/crashlytics/android/ClsFileOutputStream;

    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "SessionCrash"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :try_start_1
    invoke-static {v1}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 479
    :try_start_2
    invoke-static {p1, v0}, Lcom/crashlytics/android/NativeCrashWriter;->writeNativeCrash(Lcom/crashlytics/android/internal/models/SessionEventData;Lcom/crashlytics/android/CodedOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 489
    :goto_0
    const-string v2, "Failed to flush to session begin file."

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 490
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 491
    :goto_1
    return-void

    .line 481
    :cond_0
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Tried to write a native crash while no session was open."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 485
    :goto_2
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "An error occurred in the native crash logger"

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 489
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 490
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 489
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    const-string v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 490
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 489
    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 484
    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method private writeFatal(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 428
    .line 433
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    const-string v3, "crash_marker"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 435
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_0

    .line 440
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->recordFatalExceptionEvent(Ljava/lang/String;)V

    .line 442
    new-instance v7, Lcom/crashlytics/android/ClsFileOutputStream;

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SessionCrash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v1, v0}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :try_start_1
    invoke-static {v7}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;

    move-result-object v2

    .line 444
    const-string v5, "crash"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionEvent(Ljava/util/Date;Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v7

    .line 454
    :goto_0
    const-string v1, "Failed to flush to session begin file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 455
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 456
    :goto_1
    return-void

    .line 446
    :cond_0
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v3, "Tried to write a fatal exception while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v4}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    move-object v7, v2

    .line 450
    :goto_2
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v3, "Fabric"

    const-string v4, "An error occurred in the fatal exception logger"

    invoke-interface {v1, v3, v4, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    invoke-direct {p0, v0, v7}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 454
    const-string v0, "Failed to flush to session begin file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 455
    const-string v0, "Failed to close fatal exception file output stream."

    invoke-static {v7, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    .line 454
    :catchall_0
    move-exception v0

    move-object v7, v2

    :goto_3
    const-string v1, "Failed to flush to session begin file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 455
    const-string v1, "Failed to close fatal exception file output stream."

    invoke-static {v7, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 454
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 449
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private writeFrame(Lcom/crashlytics/android/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1694
    invoke-virtual {p1, p2, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1695
    invoke-direct {p0, p3, p4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1697
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1700
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v4, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 1705
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1708
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1709
    const/4 v2, 0x3

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1714
    :cond_0
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    if-lez v2, :cond_1

    .line 1715
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 1721
    :cond_1
    const/4 v2, 0x5

    if-eqz p4, :cond_3

    :goto_1
    invoke-virtual {p1, v2, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 1722
    return-void

    .line 1702
    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v4, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1721
    goto :goto_1
.end method

.method private writeInitialPartsTo(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1238
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "SessionUser"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v3, "SessionApp"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "SessionOS"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "SessionDevice"

    aput-object v3, v2, v0

    .line 1242
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1243
    new-instance v5, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1246
    array-length v6, v5

    if-nez v6, :cond_0

    .line 1247
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v5

    const-string v6, "Fabric"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t find "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " data for session ID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1242
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1250
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Collecting "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " data for session ID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v6}, Lio/fabric/sdk/android/q;->b()V

    .line 1252
    aget-object v4, v5, v1

    invoke-direct {p0, p1, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/CodedOutputStream;Ljava/io/File;)V

    goto :goto_1

    .line 1255
    :cond_1
    return-void
.end method

.method private writeNonFatalEventsTo(Lcom/crashlytics/android/CodedOutputStream;[Ljava/io/File;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1223
    sget-object v1, Lio/fabric/sdk/android/services/b/l;->FILE_MODIFIED_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1225
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 1227
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Found Non Fatal for session ID %s in %s "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v3}, Lio/fabric/sdk/android/q;->b()V

    .line 1230
    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/CodedOutputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "Error writting non-fatal to session."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1235
    :cond_0
    return-void
.end method

.method private writeSessionApp(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1335
    .line 1338
    :try_start_0
    new-instance v7, Lcom/crashlytics/android/ClsFileOutputStream;

    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SessionApp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1340
    :try_start_1
    invoke-static {v7}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 1342
    :try_start_2
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    .line 1343
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    .line 1344
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    .line 1345
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/b/y;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/y;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v4

    .line 1347
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/s;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/s;->a()I

    move-result v5

    .line 1351
    const/4 v0, 0x7

    const/4 v8, 0x2

    invoke-virtual {v6, v0, v8}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    move-object v0, p0

    .line 1352
    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionAppSize(Lcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1354
    const/4 v0, 0x1

    invoke-virtual {v6, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1355
    const/4 v0, 0x2

    invoke-virtual {v6, v0, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1356
    const/4 v0, 0x3

    invoke-virtual {v6, v0, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1359
    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-virtual {v6, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1360
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionAppOrgSize()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1361
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/j;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 1364
    const/4 v0, 0x6

    invoke-virtual {v6, v0, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1365
    const/16 v0, 0xa

    invoke-virtual {v6, v0, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeEnum(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1370
    const-string v0, "Failed to flush to session app file."

    invoke-static {v6, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1371
    const-string v0, "Failed to close session app file."

    invoke-static {v7, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1372
    return-void

    .line 1366
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1367
    :goto_0
    :try_start_3
    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1368
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1370
    :catchall_0
    move-exception v0

    move-object v6, v1

    move-object v7, v2

    :goto_1
    const-string v1, "Failed to flush to session app file."

    invoke-static {v6, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1371
    const-string v1, "Failed to close session app file."

    invoke-static {v7, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1370
    :catchall_1
    move-exception v0

    move-object v6, v1

    move-object v7, v1

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_1

    .line 1366
    :catch_1
    move-exception v0

    move-object v2, v7

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    goto :goto_0
.end method

.method private writeSessionDevice(Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 1412
    const/4 v4, 0x0

    .line 1413
    const/4 v3, 0x0

    .line 1415
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v2}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1416
    new-instance v18, Lcom/crashlytics/android/ClsFileOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v5}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SessionDevice"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v6}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1418
    :try_start_1
    invoke-static/range {v18 .. v18}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v17

    .line 1420
    :try_start_2
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1422
    invoke-static {}, Lio/fabric/sdk/android/services/b/l;->a()I

    move-result v4

    .line 1424
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v6

    .line 1425
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v15

    .line 1426
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v16

    .line 1428
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    .line 1429
    invoke-static {}, Lio/fabric/sdk/android/services/b/l;->b()J

    move-result-wide v8

    .line 1430
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v12, v3

    mul-long/2addr v10, v12

    .line 1431
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/l;->g(Landroid/content/Context;)Z

    move-result v12

    .line 1433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/b/y;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/b/y;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v5

    .line 1435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->idManager:Lio/fabric/sdk/android/services/b/y;

    invoke-virtual {v3}, Lio/fabric/sdk/android/services/b/y;->g()Ljava/util/Map;

    move-result-object v13

    .line 1437
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/l;->i(Landroid/content/Context;)I

    move-result v14

    .line 1439
    const/16 v2, 0x9

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    move-object/from16 v3, p0

    .line 1441
    invoke-direct/range {v3 .. v16}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionDeviceSize(ILcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;IJJZLjava/util/Map;ILcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1444
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1446
    const/4 v2, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeEnum(II)V

    .line 1447
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1448
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v7}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 1449
    const/4 v2, 0x6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v8, v9}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 1450
    const/4 v2, 0x7

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10, v11}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 1451
    const/16 v2, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v12}, Lcom/crashlytics/android/CodedOutputStream;->writeBool(IZ)V

    .line 1453
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    .line 1454
    const/16 v2, 0xb

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1455
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/services/b/z;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getDeviceIdentifierSize(Lio/fabric/sdk/android/services/b/z;Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1457
    const/4 v3, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/services/b/z;

    iget v2, v2, Lio/fabric/sdk/android/services/b/z;->a:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeEnum(II)V

    .line 1458
    const/4 v3, 0x2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 1468
    :catch_0
    move-exception v2

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    .line 1469
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1470
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1472
    :catchall_0
    move-exception v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_2
    const-string v3, "Failed to flush session device info."

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1473
    const-string v3, "Failed to close session device file."

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 1460
    :cond_0
    const/16 v2, 0xc

    :try_start_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 1462
    if-eqz v15, :cond_1

    .line 1463
    const/16 v2, 0xd

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v15}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1465
    :cond_1
    if-eqz v16, :cond_2

    .line 1466
    const/16 v2, 0xe

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1472
    :cond_2
    const-string v2, "Failed to flush session device info."

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1473
    const-string v2, "Failed to close session device file."

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1474
    return-void

    .line 1472
    :catchall_1
    move-exception v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object/from16 v17, v3

    goto :goto_2

    :catchall_3
    move-exception v2

    goto :goto_2

    .line 1468
    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    move-object/from16 v4, v18

    goto :goto_1
.end method

.method private writeSessionEvent(Ljava/util/Date;Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 21

    .prologue
    .line 1511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v4}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1512
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long v9, v4, v8

    .line 1513
    invoke-static {v7}, Lio/fabric/sdk/android/services/b/l;->c(Landroid/content/Context;)F

    move-result v12

    .line 1514
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnected:Z

    invoke-static {v7, v4}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Z)I

    move-result v13

    .line 1515
    invoke-static {v7}, Lio/fabric/sdk/android/services/b/l;->d(Landroid/content/Context;)Z

    move-result v14

    .line 1516
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v15, v4, Landroid/content/res/Configuration;->orientation:I

    .line 1517
    invoke-static {}, Lio/fabric/sdk/android/services/b/l;->b()J

    move-result-wide v4

    invoke-static {v7}, Lio/fabric/sdk/android/services/b/l;->b(Landroid/content/Context;)J

    move-result-wide v16

    sub-long v16, v4, v16

    .line 1519
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/fabric/sdk/android/services/b/l;->b(Ljava/lang/String;)J

    move-result-wide v18

    .line 1522
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v4}, Lcom/crashlytics/android/Crashlytics;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1524
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->stacks:Ljava/util/List;

    .line 1525
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->exceptionStack:[Ljava/lang/StackTraceElement;

    .line 1527
    if-eqz p6, :cond_0

    .line 1528
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v5

    .line 1529
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Thread;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->threads:[Ljava/lang/Thread;

    .line 1530
    const/4 v4, 0x0

    .line 1531
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v6, v4

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1532
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->threads:[Ljava/lang/Thread;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    aput-object v5, v11, v6

    .line 1533
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->stacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1534
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    .line 1535
    goto :goto_0

    .line 1539
    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Thread;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->threads:[Ljava/lang/Thread;

    .line 1542
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->logFile:Lio/fabric/sdk/android/services/b/ac;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getByteStringForLog(Lio/fabric/sdk/android/services/b/ac;)Lcom/crashlytics/android/ByteString;

    move-result-object v20

    .line 1544
    if-nez v20, :cond_2

    .line 1545
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v4

    invoke-interface {v4}, Lio/fabric/sdk/android/q;->b()V

    .line 1549
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->logFile:Lio/fabric/sdk/android/services/b/ac;

    const-string v5, "There was a problem closing the Crashlytics log file."

    invoke-static {v4, v5}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1550
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->logFile:Lio/fabric/sdk/android/services/b/ac;

    .line 1553
    const-string v4, "com.crashlytics.CollectCustomKeys"

    const/4 v5, 0x1

    invoke-static {v7, v4, v5}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1554
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 1565
    :goto_1
    const/16 v4, 0xa

    const/4 v5, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 1566
    invoke-direct/range {v5 .. v20}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionEventSize(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;JLjava/util/Map;FIZIJJLcom/crashlytics/android/ByteString;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1569
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v9, v10}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 1570
    const/4 v4, 0x2

    invoke-static/range {p5 .. p5}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1572
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionEventApp(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)V

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    .line 1573
    invoke-direct/range {v10 .. v19}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionEventDevice(Lcom/crashlytics/android/CodedOutputStream;FIZIJJ)V

    .line 1575
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionEventLog(Lcom/crashlytics/android/CodedOutputStream;Lcom/crashlytics/android/ByteString;)V

    .line 1576
    return-void

    .line 1556
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v4}, Lcom/crashlytics/android/Crashlytics;->getAttributes()Ljava/util/Map;

    move-result-object v4

    .line 1557
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    .line 1561
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    move-object v11, v4

    goto :goto_1
.end method

.method private writeSessionEventApp(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/CodedOutputStream;",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 1580
    const/4 v0, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1581
    invoke-direct {p0, p2, p3, p4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventAppSize(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1583
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionEventAppExecution(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1585
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1586
    invoke-direct {p0, p1, p4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionEventAppCustomAttributes(Lcom/crashlytics/android/CodedOutputStream;Ljava/util/Map;)V

    .line 1590
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_1

    .line 1592
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->runningAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v2, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeBool(IZ)V

    .line 1596
    :cond_1
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v1}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 1597
    return-void

    .line 1592
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeSessionEventAppCustomAttributes(Lcom/crashlytics/android/CodedOutputStream;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/CodedOutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 1635
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1636
    invoke-virtual {p1, v4, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1637
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1640
    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1641
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1642
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    goto :goto_0

    .line 1644
    :cond_1
    return-void
.end method

.method private writeSessionEventAppExecution(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    .line 1601
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1602
    invoke-direct {p0, p2, p3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventAppExecutionSize(Ljava/lang/Thread;Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1604
    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->exceptionStack:[Ljava/lang/StackTraceElement;

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeThread(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 1608
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->threads:[Ljava/lang/Thread;

    array-length v7, v0

    .line 1609
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 1610
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->threads:[Ljava/lang/Thread;

    aget-object v2, v0, v6

    .line 1611
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->stacks:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeThread(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 1609
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1614
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeSessionEventAppExecutionException(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Throwable;II)V

    .line 1616
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1617
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventAppExecutionSignalSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1618
    const/4 v0, 0x1

    sget-object v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1619
    const/4 v0, 0x2

    sget-object v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1620
    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 1622
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1623
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getBinaryImageSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1624
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 1625
    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 1626
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->packageName:Lcom/crashlytics/android/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1627
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->optionalBuildIdBytes:Lcom/crashlytics/android/ByteString;

    if-eqz v0, :cond_1

    .line 1628
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->optionalBuildIdBytes:Lcom/crashlytics/android/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1630
    :cond_1
    return-void
.end method

.method private writeSessionEventAppExecutionException(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Throwable;II)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 1648
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p1, p4, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1649
    invoke-direct {p0, p2, v6}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventAppExecutionExceptionSize(Ljava/lang/Throwable;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1651
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1652
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 1653
    if-eqz v1, :cond_0

    .line 1654
    const/4 v2, 0x3

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1657
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 1658
    const/4 v5, 0x4

    invoke-direct {p0, p1, v5, v4, v6}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeFrame(Lcom/crashlytics/android/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V

    .line 1657
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1661
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 1662
    if-eqz p2, :cond_4

    .line 1663
    iget v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->maxChainedExceptionsDepth:I

    if-ge p3, v1, :cond_2

    .line 1664
    add-int/lit8 p3, p3, 0x1

    const/4 p4, 0x6

    goto :goto_0

    .line 1669
    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    .line 1670
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 1671
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1673
    :cond_3
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 1676
    :cond_4
    return-void
.end method

.method private writeSessionEventDevice(Lcom/crashlytics/android/CodedOutputStream;FIZIJJ)V
    .locals 12

    .prologue
    .line 1727
    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    move-object v3, p0

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 1728
    invoke-direct/range {v3 .. v11}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventDeviceSize(FIZIJJ)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1730
    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2}, Lcom/crashlytics/android/CodedOutputStream;->writeFloat(IF)V

    .line 1731
    const/4 v2, 0x2

    invoke-virtual {p1, v2, p3}, Lcom/crashlytics/android/CodedOutputStream;->writeSInt32(II)V

    .line 1732
    const/4 v2, 0x3

    move/from16 v0, p4

    invoke-virtual {p1, v2, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeBool(IZ)V

    .line 1733
    const/4 v2, 0x4

    move/from16 v0, p5

    invoke-virtual {p1, v2, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 1734
    const/4 v2, 0x5

    move-wide/from16 v0, p6

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 1735
    const/4 v2, 0x6

    move-wide/from16 v0, p8

    invoke-virtual {p1, v2, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 1736
    return-void
.end method

.method private writeSessionEventLog(Lcom/crashlytics/android/CodedOutputStream;Lcom/crashlytics/android/ByteString;)V
    .locals 2

    .prologue
    .line 1739
    if-eqz p2, :cond_0

    .line 1740
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1741
    invoke-direct {p0, p2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getEventLogSize(Lcom/crashlytics/android/ByteString;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1742
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1744
    :cond_0
    return-void
.end method

.method private writeSessionOS(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1379
    .line 1383
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1384
    new-instance v2, Lcom/crashlytics/android/ClsFileOutputStream;

    iget-object v3, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v3}, Lcom/crashlytics/android/Crashlytics;->getSdkDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SessionOS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1386
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;

    move-result-object v1

    .line 1388
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v3}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v3

    .line 1389
    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v4

    .line 1390
    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->h(Landroid/content/Context;)Z

    move-result v0

    .line 1392
    const/16 v5, 0x8

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1393
    invoke-direct {p0, v3, v4, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionOSSize(Lcom/crashlytics/android/ByteString;Lcom/crashlytics/android/ByteString;Z)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1394
    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-virtual {v1, v5, v6}, Lcom/crashlytics/android/CodedOutputStream;->writeEnum(II)V

    .line 1395
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1396
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1397
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeBool(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1402
    const-string v0, "Failed to flush to session OS file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1403
    const-string v0, "Failed to close session OS file."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1404
    return-void

    .line 1398
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 1399
    :goto_0
    :try_start_2
    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1400
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1402
    :catchall_0
    move-exception v0

    :goto_1
    const-string v3, "Failed to flush to session OS file."

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1403
    const-string v1, "Failed to close session OS file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1402
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 1398
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private writeSessionPartsToSessionFile(Ljava/io/File;Ljava/lang/String;I)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1140
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Collecting session parts for ID "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 1142
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "SessionCrash"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    .line 1144
    if-eqz v6, :cond_3

    array-length v0, v6

    if-lez v0, :cond_3

    move v0, v1

    .line 1145
    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Session %s has fatal exception: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p2, v8, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v3}, Lio/fabric/sdk/android/q;->b()V

    .line 1148
    new-instance v3, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "SessionEvent"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1150
    if-eqz v5, :cond_4

    array-length v3, v5

    if-lez v3, :cond_4

    move v3, v1

    .line 1151
    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Session %s has non-fatal exceptions: %s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p2, v10, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v1

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v7}, Lio/fabric/sdk/android/q;->b()V

    .line 1154
    if-nez v0, :cond_0

    if-eqz v3, :cond_5

    .line 1157
    :cond_0
    :try_start_0
    new-instance v2, Lcom/crashlytics/android/ClsFileOutputStream;

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    invoke-direct {v2, v1, p2}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    :try_start_1
    invoke-static {v2}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1163
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Collecting SessionStart data for session ID "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v4}, Lio/fabric/sdk/android/q;->b()V

    .line 1165
    invoke-direct {p0, v1, p1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/CodedOutputStream;Ljava/io/File;)V

    .line 1167
    const/4 v4, 0x4

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v1, v4, v8, v9}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt64(IJ)V

    .line 1168
    const/4 v4, 0x5

    invoke-virtual {v1, v4, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeBool(IZ)V

    .line 1170
    invoke-direct {p0, v1, p2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeInitialPartsTo(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/String;)V

    .line 1172
    if-eqz v3, :cond_1

    .line 1173
    array-length v3, v5

    if-le v3, p3, :cond_6

    .line 1174
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Trimming down to %d logged exceptions."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v3}, Lio/fabric/sdk/android/q;->b()V

    .line 1177
    invoke-direct {p0, p2, p3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->trimSessionEventFiles(Ljava/lang/String;I)V

    .line 1178
    new-instance v3, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SessionEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1182
    :goto_2
    invoke-direct {p0, v1, v3, p2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeNonFatalEventsTo(Lcom/crashlytics/android/CodedOutputStream;[Ljava/io/File;Ljava/lang/String;)V

    .line 1185
    :cond_1
    if-eqz v0, :cond_2

    .line 1186
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeToCosFromFile(Lcom/crashlytics/android/CodedOutputStream;Ljava/io/File;)V

    .line 1189
    :cond_2
    const/16 v0, 0xb

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 1191
    const/16 v0, 0xc

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeEnum(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1201
    const-string v0, "Error flushing session file stream"

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1203
    const-string v0, "Failed to close CLS file"

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1217
    :goto_3
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing session part files for ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 1218
    invoke-direct {p0, p2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->deleteSessionPartFilesFor(Ljava/lang/String;)V

    .line 1219
    return-void

    :cond_3
    move v0, v2

    .line 1144
    goto/16 :goto_0

    :cond_4
    move v3, v2

    .line 1150
    goto/16 :goto_1

    .line 1192
    :catch_0
    move-exception v0

    move-object v1, v4

    .line 1193
    :goto_4
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to write session file for session ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1195
    invoke-direct {p0, v0, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1198
    const-string v0, "Error flushing session file stream"

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1203
    invoke-direct {p0, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->closeWithoutRenamingOrLog(Lcom/crashlytics/android/ClsFileOutputStream;)V

    goto :goto_3

    .line 1210
    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    :goto_5
    const-string v3, "Error flushing session file stream"

    invoke-static {v1, v3}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1203
    const-string v1, "Failed to close CLS file"

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1213
    :cond_5
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No events present for session ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    goto :goto_3

    .line 1210
    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v4

    goto :goto_5

    .line 1192
    :catch_1
    move-exception v0

    move-object v1, v4

    move-object v4, v2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v4, v2

    goto :goto_4

    :cond_6
    move-object v3, v5

    goto/16 :goto_2
.end method

.method private writeSessionUser(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1261
    .line 1264
    :try_start_0
    new-instance v3, Lcom/crashlytics/android/ClsFileOutputStream;

    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "SessionUser"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/crashlytics/android/ClsFileOutputStream;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1265
    :try_start_1
    invoke-static {v3}, Lcom/crashlytics/android/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/crashlytics/android/CodedOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 1267
    :try_start_2
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getUserIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1268
    iget-object v4, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v4}, Lcom/crashlytics/android/Crashlytics;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 1269
    iget-object v5, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v5}, Lcom/crashlytics/android/Crashlytics;->getUserEmail()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v5

    .line 1272
    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 1303
    const-string v0, "Failed to flush session user file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1304
    const-string v0, "Failed to close session user file."

    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1305
    :goto_0
    return-void

    .line 1277
    :cond_0
    if-nez v0, :cond_1

    :try_start_3
    const-string v0, ""

    :cond_1
    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v6

    .line 1278
    if-nez v4, :cond_6

    move-object v4, v2

    .line 1279
    :goto_1
    if-nez v5, :cond_7

    .line 1281
    :goto_2
    const/4 v0, 0x1

    invoke-static {v0, v6}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1283
    if-eqz v4, :cond_2

    .line 1284
    const/4 v5, 0x2

    invoke-static {v5, v4}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v5

    add-int/2addr v0, v5

    .line 1286
    :cond_2
    if-eqz v2, :cond_3

    .line 1287
    const/4 v5, 0x3

    invoke-static {v5, v2}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v5

    add-int/2addr v0, v5

    .line 1290
    :cond_3
    const/4 v5, 0x6

    const/4 v7, 0x2

    invoke-virtual {v1, v5, v7}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1291
    invoke-virtual {v1, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1292
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v6}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1293
    if-eqz v4, :cond_4

    .line 1294
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v4}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1296
    :cond_4
    if-eqz v2, :cond_5

    .line 1297
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1303
    :cond_5
    const-string v0, "Failed to flush session user file."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1304
    const-string v0, "Failed to close session user file."

    invoke-static {v3, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 1278
    :cond_6
    :try_start_4
    invoke-static {v4}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 1279
    :cond_7
    invoke-static {v5}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v2

    goto :goto_2

    .line 1299
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1300
    :goto_3
    :try_start_5
    invoke-direct {p0, v0, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1301
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1303
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_4
    const-string v2, "Failed to flush session user file."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 1304
    const-string v1, "Failed to close session user file."

    invoke-static {v3, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1303
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 1299
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method private writeStackTrace(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    .line 2142
    const/4 v2, 0x0

    .line 2144
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2145
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeStackTrace(Ljava/lang/Throwable;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2149
    const-string v0, "Failed to close stack trace writer."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 2150
    :goto_0
    return-void

    .line 2146
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2147
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed to create PrintWriter"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2149
    const-string v0, "Failed to close stack trace writer."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "Failed to close stack trace writer."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 2146
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private writeStackTrace(Ljava/lang/Throwable;Ljava/io/Writer;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2155
    const/4 v0, 0x1

    move v3, v0

    .line 2157
    :goto_0
    if-eqz p1, :cond_3

    .line 2158
    :try_start_0
    invoke-static {p1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 2159
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 2161
    :goto_1
    if-eqz v3, :cond_1

    const-string v0, ""

    .line 2162
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2166
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 2167
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\tat "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2166
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2159
    :cond_0
    const-string v0, ""

    move-object v2, v0

    goto :goto_1

    .line 2161
    :cond_1
    const-string v0, "Caused by: "

    goto :goto_2

    .line 2170
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    move v3, v1

    .line 2171
    goto :goto_0

    .line 2172
    :catch_0
    move-exception v0

    .line 2173
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Could not write stack trace"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2175
    :cond_3
    return-void
.end method

.method private writeStackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 2129
    const/4 v2, 0x0

    .line 2131
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2133
    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeStackTrace(Ljava/lang/Throwable;Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2137
    const-string v0, "Failed to close stack trace writer."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 2138
    :goto_0
    return-void

    .line 2134
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2135
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed to create PrintWriter"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2137
    const-string v0, "Failed to close stack trace writer."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "Failed to close stack trace writer."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 2134
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private writeStackTraceIfNotNull(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 2119
    if-eqz p2, :cond_0

    .line 2120
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeStackTrace(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 2122
    :cond_0
    return-void
.end method

.method private writeThread(Lcom/crashlytics/android/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1681
    invoke-virtual {p1, v1, v2}, Lcom/crashlytics/android/CodedOutputStream;->writeTag(II)V

    .line 1682
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    .line 1683
    invoke-virtual {p1, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeRawVarint32(I)V

    .line 1684
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 1685
    invoke-virtual {p1, v2, p4}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 1687
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p3, v0

    .line 1688
    const/4 v3, 0x3

    invoke-direct {p0, p1, v3, v2, p5}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeFrame(Lcom/crashlytics/android/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V

    .line 1687
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1690
    :cond_0
    return-void
.end method

.method private writeToCosFromFile(Lcom/crashlytics/android/CodedOutputStream;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1481
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1483
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1484
    long-to-int v0, v0

    new-array v3, v0, [B

    .line 1489
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1491
    const/4 v0, 0x0

    .line 1494
    :goto_0
    :try_start_1
    array-length v2, v3

    if-ge v0, v2, :cond_0

    array-length v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v0, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-ltz v2, :cond_0

    .line 1496
    add-int/2addr v0, v2

    goto :goto_0

    .line 1499
    :cond_0
    const-string v0, "Failed to close file input stream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 1502
    invoke-virtual {p1, v3}, Lcom/crashlytics/android/CodedOutputStream;->writeRawBytes([B)V

    .line 1507
    :goto_1
    return-void

    .line 1499
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    const-string v2, "Failed to close file input stream."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 1504
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tried to include a file that doesn\'t exist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1499
    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method cleanInvalidTempFiles()V
    .locals 1

    .prologue
    .line 861
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 868
    return-void
.end method

.method didPreviousInitializationComplete()Z
    .locals 1

    .prologue
    .line 2078
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$19;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$19;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method doCleanInvalidTempFiles([Ljava/io/File;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 876
    invoke-direct {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->deleteLegacyInvalidCacheDir()V

    .line 881
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 882
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found invalid session part file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v4}, Lio/fabric/sdk/android/q;->b()V

    .line 884
    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 885
    new-instance v4, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$15;

    invoke-direct {v4, p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$15;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/lang/String;)V

    .line 892
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Deleting all part files for invalid session: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v5}, Lio/fabric/sdk/android/q;->b()V

    .line 894
    invoke-direct {p0, v4}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 895
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Deleting session file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v7}, Lio/fabric/sdk/android/q;->b()V

    .line 896
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 894
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 881
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 899
    :cond_1
    return-void
.end method

.method doWriteToLog(Lio/fabric/sdk/android/services/b/ac;IJLjava/lang/String;)V
    .locals 7

    .prologue
    .line 993
    if-nez p1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    if-nez p5, :cond_3

    .line 997
    const-string v0, "null"

    .line 1017
    :goto_1
    :try_start_0
    div-int/lit8 v1, p2, 0x4

    .line 1019
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 1020
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    :cond_2
    const-string v1, "\r"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %s%n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1029
    invoke-virtual {p1, v0}, Lio/fabric/sdk/android/services/b/ac;->a([B)V

    .line 1032
    :goto_2
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/b/ac;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/b/ac;->a()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 1033
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/b/ac;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "There was a problem writing to the Crashlytics log."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move-object v0, p5

    goto :goto_1
.end method

.method ensureOpenSessionExists()V
    .locals 1

    .prologue
    .line 502
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$10;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$10;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 511
    return-void
.end method

.method finalizeSessions()Z
    .locals 1

    .prologue
    .line 563
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$11;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$11;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method getByteStringForLog(Lio/fabric/sdk/android/services/b/ac;)Lcom/crashlytics/android/ByteString;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1049
    if-nez p1, :cond_0

    .line 1050
    const/4 v0, 0x0

    .line 1077
    :goto_0
    return-object v0

    .line 1056
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    aput v6, v1, v6

    .line 1058
    invoke-virtual {p1}, Lio/fabric/sdk/android/services/b/ac;->a()I

    move-result v0

    new-array v2, v0, [B

    .line 1061
    :try_start_0
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$16;

    invoke-direct {v0, p0, v2, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$16;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;[B[I)V

    invoke-virtual {p1, v0}, Lio/fabric/sdk/android/services/b/ac;->a(Lio/fabric/sdk/android/services/b/ag;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    :goto_1
    aget v0, v1, v6

    invoke-static {v2, v6, v0}, Lcom/crashlytics/android/ByteString;->copyFrom([BII)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    goto :goto_0

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "A problem occurred while reading the Crashlytics log file."

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method getLogFile()Lio/fabric/sdk/android/services/b/ac;
    .locals 1

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->logFile:Lio/fabric/sdk/android/services/b/ac;

    return-object v0
.end method

.method hasOpenSession()Z
    .locals 1

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listSessionBeginFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHandlingException()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method listSessionBeginFiles()[Ljava/io/File;
    .locals 2

    .prologue
    .line 779
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;

    const-string v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$FileNameContainsFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method markInitializationComplete()V
    .locals 1

    .prologue
    .line 2060
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$18;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$18;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 2075
    return-void
.end method

.method markInitializationStarted()V
    .locals 1

    .prologue
    .line 2044
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$17;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$17;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 2054
    return-void
.end method

.method trimSessionFiles()V
    .locals 4

    .prologue
    .line 822
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->filesDir:Ljava/io/File;

    sget-object v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SESSION_FILE_FILTER:Ljava/io/FilenameFilter;

    const/4 v2, 0x4

    sget-object v3, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SMALLEST_FILE_NAME_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/Utils;->capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 824
    return-void
.end method

.method public declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Crashlytics is handling uncaught exception \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 311
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->receiversRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 313
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 320
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 321
    new-instance v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$7;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executeSyncLoggingException(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 335
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 336
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    :goto_0
    monitor-exit p0

    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "An error occurred in the uncaught exception handler"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 332
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 335
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 336
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 332
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    invoke-interface {v1}, Lio/fabric/sdk/android/q;->b()V

    .line 335
    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 336
    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method writeNonFatalException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 412
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 414
    new-instance v1, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$9;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$9;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executeAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 422
    return-void
.end method

.method writeToLog(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 392
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;-><init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->executeAsync(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 404
    return-void
.end method
