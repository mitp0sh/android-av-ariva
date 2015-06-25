.class public Lcom/crashlytics/android/Crashlytics;
.super Lio/fabric/sdk/android/k;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/k",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/fabric/sdk/android/l;"
    }
.end annotation

.annotation runtime Lio/fabric/sdk/android/services/concurrency/m;
    a = {
        Lcom/crashlytics/android/internal/CrashEventDataProvider;
    }
.end annotation


# static fields
.field static final CLS_DEFAULT_PROCESS_DELAY:F = 1.0f

.field static final COLLECT_CUSTOM_KEYS:Ljava/lang/String; = "com.crashlytics.CollectCustomKeys"

.field static final COLLECT_CUSTOM_LOGS:Ljava/lang/String; = "com.crashlytics.CollectCustomLogs"

.field static final CRASHLYTICS_API_ENDPOINT:Ljava/lang/String; = "com.crashlytics.ApiEndpoint"

.field static final CRASHLYTICS_REQUIRE_BUILD_ID:Ljava/lang/String; = "com.crashlytics.RequireBuildId"

.field static final CRASHLYTICS_REQUIRE_BUILD_ID_DEFAULT:Z = true

.field static final DEFAULT_MAIN_HANDLER_TIMEOUT_SEC:I = 0x4

.field static final MAX_ATTRIBUTES:I = 0x40

.field static final MAX_ATTRIBUTE_SIZE:I = 0x400

.field private static final PREF_ALWAYS_SEND_REPORTS_KEY:Ljava/lang/String; = "always_send_reports_opt_in"

.field private static final SHOULD_PROMPT_BEFORE_SENDING_REPORTS_DEFAULT:Z = false

.field public static final TAG:Ljava/lang/String; = "Fabric"


# instance fields
.field private final attributes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buildId:Ljava/lang/String;

.field private final crashHandlerExecutor:Ljava/util/concurrent/ExecutorService;

.field private delay:F

.field private disabled:Z

.field private externalCrashEventDataProvider:Lcom/crashlytics/android/internal/CrashEventDataProvider;

.field private handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

.field private httpRequestFactory:Lio/fabric/sdk/android/services/d/m;

.field private installerPackageName:Ljava/lang/String;

.field private final kits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/k",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private listener:Lcom/crashlytics/android/CrashlyticsListener;

.field private packageName:Ljava/lang/String;

.field private final pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

.field private final startTime:J

.field private userEmail:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/crashlytics/android/Crashlytics;-><init>(FLcom/crashlytics/android/CrashlyticsListener;Lcom/crashlytics/android/PinningInfoProvider;Z)V

    .line 198
    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/CrashlyticsListener;Lcom/crashlytics/android/PinningInfoProvider;Z)V
    .locals 6

    .prologue
    .line 202
    const-string v0, "Crashlytics Exception Handler"

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/u;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/Crashlytics;-><init>(FLcom/crashlytics/android/CrashlyticsListener;Lcom/crashlytics/android/PinningInfoProvider;ZLjava/util/concurrent/ExecutorService;)V

    .line 204
    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/CrashlyticsListener;Lcom/crashlytics/android/PinningInfoProvider;ZLjava/util/concurrent/ExecutorService;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0}, Lio/fabric/sdk/android/k;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->userId:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->userEmail:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->userName:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/Crashlytics;->startTime:J

    .line 214
    iput p1, p0, Lcom/crashlytics/android/Crashlytics;->delay:F

    .line 215
    iput-object p2, p0, Lcom/crashlytics/android/Crashlytics;->listener:Lcom/crashlytics/android/CrashlyticsListener;

    .line 216
    iput-object p3, p0, Lcom/crashlytics/android/Crashlytics;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

    .line 217
    iput-boolean p4, p0, Lcom/crashlytics/android/Crashlytics;->disabled:Z

    .line 218
    iput-object p5, p0, Lcom/crashlytics/android/Crashlytics;->crashHandlerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 219
    const/4 v0, 0x2

    new-array v0, v0, [Lio/fabric/sdk/android/k;

    const/4 v1, 0x0

    new-instance v2, Lcom/crashlytics/android/answers/Answers;

    invoke-direct {v2}, Lcom/crashlytics/android/answers/Answers;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/crashlytics/android/beta/Beta;

    invoke-direct {v2}, Lcom/crashlytics/android/beta/Beta;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->kits:Ljava/util/Collection;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/crashlytics/android/Crashlytics;)Lcom/crashlytics/android/PinningInfoProvider;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lio/fabric/sdk/android/services/f/o;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->getSendDecisionFromUser(Landroid/app/Activity;Lio/fabric/sdk/android/services/f/o;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/crashlytics/android/Crashlytics;FI)I
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->dipsToPixels(FI)I

    move-result v0

    return v0
.end method

.method private dipsToPixels(FI)I
    .locals 1

    .prologue
    .line 1079
    int-to-float v0, p2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private static doLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 486
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    .line 491
    const-string v1, "prior to logging messages."

    invoke-static {v1, v0}, Lcom/crashlytics/android/Crashlytics;->ensureFabricWithCalled(Ljava/lang/String;Lcom/crashlytics/android/Crashlytics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/crashlytics/android/Crashlytics;->startTime:J

    sub-long/2addr v2, v4

    .line 493
    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->formatLogMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeToLog(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private static ensureFabricWithCalled(Ljava/lang/String;Lcom/crashlytics/android/Crashlytics;)Z
    .locals 4

    .prologue
    .line 1053
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    if-nez v0, :cond_1

    .line 1054
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    const-string v1, "Fabric"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics must be initialized by calling Fabric.with(Context) "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1057
    const/4 v0, 0x0

    .line 1059
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private finishInitSynchronously()V
    .locals 4

    .prologue
    .line 732
    new-instance v1, Lcom/crashlytics/android/Crashlytics$2;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/Crashlytics$2;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    .line 744
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/x;

    .line 745
    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/concurrency/r;->addDependency(Lio/fabric/sdk/android/services/concurrency/x;)V

    goto :goto_0

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getFabric()Lio/fabric/sdk/android/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/b;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 750
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    invoke-interface {v1}, Lio/fabric/sdk/android/q;->b()V

    .line 755
    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 763
    :goto_1
    return-void

    .line 756
    :catch_0
    move-exception v0

    .line 757
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 758
    :catch_1
    move-exception v0

    .line 759
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 760
    :catch_2
    move-exception v0

    .line 761
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Crashlytics timed out during initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static formatLogMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/fabric/sdk/android/services/b/l;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/crashlytics/android/Crashlytics;
    .locals 5

    .prologue
    .line 432
    :try_start_0
    const-class v0, Lcom/crashlytics/android/Crashlytics;

    invoke-static {v0}, Lio/fabric/sdk/android/b;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/k;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/Crashlytics;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    throw v0
.end method

.method public static getPinningInfoProvider()Lcom/crashlytics/android/PinningInfoProvider;
    .locals 1

    .prologue
    .line 443
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSendDecisionFromUser(Landroid/app/Activity;Lio/fabric/sdk/android/services/f/o;)Z
    .locals 6

    .prologue
    .line 953
    new-instance v4, Lcom/crashlytics/android/DialogStringResolver;

    invoke-direct {v4, p1, p2}, Lcom/crashlytics/android/DialogStringResolver;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/f/o;)V

    .line 957
    new-instance v3, Lcom/crashlytics/android/Crashlytics$OptInLatch;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/crashlytics/android/Crashlytics$OptInLatch;-><init>(Lcom/crashlytics/android/Crashlytics;Lcom/crashlytics/android/Crashlytics$1;)V

    .line 961
    new-instance v0, Lcom/crashlytics/android/Crashlytics$5;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/Crashlytics$5;-><init>(Lcom/crashlytics/android/Crashlytics;Landroid/app/Activity;Lcom/crashlytics/android/Crashlytics$OptInLatch;Lcom/crashlytics/android/DialogStringResolver;Lio/fabric/sdk/android/services/f/o;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1026
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 1027
    invoke-virtual {v3}, Lcom/crashlytics/android/Crashlytics$OptInLatch;->await()V

    .line 1028
    invoke-virtual {v3}, Lcom/crashlytics/android/Crashlytics$OptInLatch;->getOptIn()Z

    move-result v0

    return v0
.end method

.method private static isDisabled()Z
    .locals 1

    .prologue
    .line 1074
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    .line 1075
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/crashlytics/android/Crashlytics;->disabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRequiringBuildId(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1040
    const-string v0, "com.crashlytics.RequireBuildId"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 511
    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/Crashlytics;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, p0, v1, v2, v3}, Lio/fabric/sdk/android/q;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 515
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 482
    const/4 v0, 0x3

    const-string v1, "Fabric"

    invoke-static {v0, v1, p0}, Lcom/crashlytics/android/Crashlytics;->doLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 455
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    .line 460
    const-string v1, "prior to logging exceptions."

    invoke-static {v1, v0}, Lcom/crashlytics/android/Crashlytics;->ensureFabricWithCalled(Ljava/lang/String;Lcom/crashlytics/android/Crashlytics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    if-nez p0, :cond_2

    .line 462
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "Fabric"

    const-string v3, "Crashlytics is ignoring a request to log a null exception."

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/q;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_2
    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->writeNonFatalException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static recordFatalExceptionEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 784
    const-class v0, Lcom/crashlytics/android/answers/Answers;

    invoke-static {v0}, Lio/fabric/sdk/android/b;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/k;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/Answers;

    .line 785
    if-eqz v0, :cond_0

    .line 786
    new-instance v1, Lio/fabric/sdk/android/services/b/p;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/b/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->onException(Lio/fabric/sdk/android/services/b/p;)V

    .line 789
    :cond_0
    return-void
.end method

.method static recordLoggedExceptionEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 773
    const-class v0, Lcom/crashlytics/android/answers/Answers;

    invoke-static {v0}, Lio/fabric/sdk/android/b;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/k;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/Answers;

    .line 774
    if-eqz v0, :cond_0

    .line 775
    new-instance v1, Lio/fabric/sdk/android/services/b/q;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/b/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->onException(Lio/fabric/sdk/android/services/b/q;)V

    .line 778
    :cond_0
    return-void
.end method

.method private static sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 1064
    if-eqz p0, :cond_0

    .line 1065
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1066
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1067
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1070
    :cond_0
    return-object p0
.end method

.method public static setBool(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 617
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method public static setDouble(Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 626
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public static setFloat(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 635
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 644
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public static setLong(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 653
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/crashlytics/android/Crashlytics;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    return-void
.end method

.method public static setPinningInfoProvider(Lcom/crashlytics/android/PinningInfoProvider;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 723
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Use of Crashlytics.setPinningInfoProvider is deprecated"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 581
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 585
    :cond_0
    if-nez p0, :cond_2

    .line 586
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom attribute key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Attempting to set custom attribute with null key, ignoring."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 595
    :cond_2
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_3

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 599
    :cond_3
    if-nez p1, :cond_4

    .line 600
    const-string v0, ""

    .line 604
    :goto_1
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v2

    iget-object v2, v2, Lcom/crashlytics/android/Crashlytics;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 602
    :cond_4
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 606
    :cond_5
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    goto :goto_0
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 565
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 569
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->userEmail:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 539
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->userId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setUserName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 552
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 556
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/crashlytics/android/Crashlytics;->userName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method canSendWithUserApproval()Z
    .locals 3

    .prologue
    .line 922
    invoke-static {}, Lio/fabric/sdk/android/services/f/q;->a()Lio/fabric/sdk/android/services/f/q;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/Crashlytics$4;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/Crashlytics$4;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/f/q;->a(Lio/fabric/sdk/android/services/f/s;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public crash()V
    .locals 1

    .prologue
    .line 664
    new-instance v0, Lcom/crashlytics/android/CrashTest;

    invoke-direct {v0}, Lcom/crashlytics/android/CrashTest;-><init>()V

    invoke-virtual {v0}, Lcom/crashlytics/android/CrashTest;->indexOutOfBounds()V

    .line 665
    return-void
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 358
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->markInitializationStarted()V

    .line 359
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->cleanInvalidTempFiles()V

    .line 362
    const/4 v0, 0x1

    .line 365
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/f/q;->a()Lio/fabric/sdk/android/services/f/q;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/f/q;->b()Lio/fabric/sdk/android/services/f/v;

    move-result-object v1

    .line 367
    if-nez v1, :cond_0

    .line 368
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Received null settings, skipping initialization!"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->markInitializationComplete()V

    .line 405
    :goto_0
    return-object v5

    .line 372
    :cond_0
    :try_start_1
    iget-object v2, v1, Lio/fabric/sdk/android/services/f/v;->d:Lio/fabric/sdk/android/services/f/m;

    iget-boolean v2, v2, Lio/fabric/sdk/android/services/f/m;->c:Z

    if-eqz v2, :cond_1

    .line 373
    const/4 v0, 0x0

    .line 374
    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->finalizeSessions()Z

    .line 376
    invoke-virtual {p0, v1}, Lcom/crashlytics/android/Crashlytics;->getCreateReportSpiCall(Lio/fabric/sdk/android/services/f/v;)Lcom/crashlytics/android/CreateReportSpiCall;

    move-result-object v1

    .line 377
    if-eqz v1, :cond_3

    .line 378
    new-instance v2, Lcom/crashlytics/android/ReportUploader;

    invoke-direct {v2, v1}, Lcom/crashlytics/android/ReportUploader;-><init>(Lcom/crashlytics/android/CreateReportSpiCall;)V

    iget v1, p0, Lcom/crashlytics/android/Crashlytics;->delay:F

    invoke-virtual {v2, v1}, Lcom/crashlytics/android/ReportUploader;->uploadReports(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 388
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->markInitializationComplete()V

    goto :goto_0

    .line 380
    :cond_3
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Unable to create a call to upload reports."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 383
    :catch_0
    move-exception v1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 384
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Error dealing with settings"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    goto :goto_1

    .line 390
    :catch_1
    move-exception v0

    .line 391
    :try_start_5
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 402
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->markInitializationComplete()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->markInitializationComplete()V

    throw v0
.end method

.method getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->attributes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getBuildId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->buildId:Ljava/lang/String;

    return-object v0
.end method

.method getBuildIdValidator(Ljava/lang/String;Z)Lcom/crashlytics/android/BuildIdValidator;
    .locals 1

    .prologue
    .line 801
    new-instance v0, Lcom/crashlytics/android/BuildIdValidator;

    invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/BuildIdValidator;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method getCreateReportSpiCall(Lio/fabric/sdk/android/services/f/v;)Lcom/crashlytics/android/CreateReportSpiCall;
    .locals 4

    .prologue
    .line 943
    if-eqz p1, :cond_0

    .line 944
    new-instance v0, Lcom/crashlytics/android/DefaultCreateReportSpiCall;

    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lio/fabric/sdk/android/services/f/v;->a:Lio/fabric/sdk/android/services/f/e;

    iget-object v2, v2, Lio/fabric/sdk/android/services/f/e;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics;->httpRequestFactory:Lio/fabric/sdk/android/services/d/m;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/crashlytics/android/DefaultCreateReportSpiCall;-><init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;)V

    .line 948
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDebugMode()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 713
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Use of Crashlytics.getDebugMode is deprecated."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getFabric()Lio/fabric/sdk/android/b;

    invoke-static {}, Lio/fabric/sdk/android/b;->d()Z

    move-result v0

    return v0
.end method

.method getExternalCrashEventData()Lcom/crashlytics/android/internal/models/SessionEventData;
    .locals 2

    .prologue
    .line 868
    const/4 v0, 0x0

    .line 869
    iget-object v1, p0, Lcom/crashlytics/android/Crashlytics;->externalCrashEventDataProvider:Lcom/crashlytics/android/internal/CrashEventDataProvider;

    if-eqz v1, :cond_0

    .line 870
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->externalCrashEventDataProvider:Lcom/crashlytics/android/internal/CrashEventDataProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/internal/CrashEventDataProvider;->getCrashEventData()Lcom/crashlytics/android/internal/models/SessionEventData;

    move-result-object v0

    .line 872
    :cond_0
    return-object v0
.end method

.method getHandler()Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    const-string v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getKits()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->kits:Ljava/util/Collection;

    return-object v0
.end method

.method getOverridenSpiEndpoint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 827
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method getSdkDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 894
    new-instance v0, Lio/fabric/sdk/android/services/e/a;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/e/a;-><init>(Lio/fabric/sdk/android/k;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/e/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getSessionSettingsData()Lio/fabric/sdk/android/services/f/p;
    .locals 1

    .prologue
    .line 1035
    invoke-static {}, Lio/fabric/sdk/android/services/f/q;->a()Lio/fabric/sdk/android/services/f/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/f/q;->b()Lio/fabric/sdk/android/services/f/v;

    move-result-object v0

    .line 1036
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lio/fabric/sdk/android/services/f/v;->b:Lio/fabric/sdk/android/services/f/p;

    goto :goto_0
.end method

.method getUserEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getIdManager()Lio/fabric/sdk/android/services/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->userEmail:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getIdManager()Lio/fabric/sdk/android/services/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->userId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getIdManager()Lio/fabric/sdk/android/services/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->userName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    const-string v0, "2.2.0.25"

    return-object v0
.end method

.method getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method internalVerifyPinning(Ljava/net/URL;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 880
    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getPinningInfoProvider()Lcom/crashlytics/android/PinningInfoProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->httpRequestFactory:Lio/fabric/sdk/android/services/d/m;

    sget-object v2, Lio/fabric/sdk/android/services/d/d;->GET:Lio/fabric/sdk/android/services/d/d;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/services/d/m;->a(Lio/fabric/sdk/android/services/d/d;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v2

    .line 883
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/d/e;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 884
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 887
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/d/e;->b()I

    .line 888
    const/4 v0, 0x1

    .line 890
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onPreExecute()Z
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lio/fabric/sdk/android/k;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 229
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/Crashlytics;->onPreExecute(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method onPreExecute(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 236
    iget-boolean v0, p0, Lcom/crashlytics/android/Crashlytics;->disabled:Z

    if-eqz v0, :cond_0

    move v0, v7

    .line 352
    :goto_0
    return v0

    .line 241
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/b;->d()Z

    move-result v0

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/b/j;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 243
    if-nez v1, :cond_1

    move v0, v7

    .line 244
    goto :goto_0

    .line 248
    :cond_1
    :try_start_0
    new-instance v0, Lio/fabric/sdk/android/services/d/b;

    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/fabric/sdk/android/services/d/b;-><init>(Lio/fabric/sdk/android/q;)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->httpRequestFactory:Lio/fabric/sdk/android/services/d/m;

    .line 250
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;

    if-nez v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->httpRequestFactory:Lio/fabric/sdk/android/services/d/m;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lio/fabric/sdk/android/services/d/m;->a(Lio/fabric/sdk/android/services/d/n;)V

    .line 278
    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initializing Crashlytics "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->c()V
    :try_end_0
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 281
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->packageName:Ljava/lang/String;

    .line 282
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getIdManager()Lio/fabric/sdk/android/services/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/y;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->installerPackageName:Ljava/lang/String;

    .line 283
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Installer package name is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 287
    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 288
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/crashlytics/android/Crashlytics;->versionCode:Ljava/lang/String;

    .line 289
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v0, "0.0"

    :goto_2
    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->versionName:Ljava/lang/String;

    .line 294
    invoke-static {p1}, Lio/fabric/sdk/android/services/b/l;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->buildId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getIdManager()Lio/fabric/sdk/android/services/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/y;->i()Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->buildId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/crashlytics/android/Crashlytics;->isRequiringBuildId(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/crashlytics/android/Crashlytics;->getBuildIdValidator(Ljava/lang/String;Z)Lcom/crashlytics/android/BuildIdValidator;

    move-result-object v0

    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/BuildIdValidator;->validate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 311
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 312
    new-instance v0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics;->listener:Lcom/crashlytics/android/CrashlyticsListener;

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics;->crashHandlerExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/crashlytics/android/Crashlytics;->buildId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getIdManager()Lio/fabric/sdk/android/services/b/y;

    move-result-object v5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/CrashlyticsListener;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lio/fabric/sdk/android/services/b/y;Lcom/crashlytics/android/Crashlytics;)V

    iput-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    .line 323
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->didPreviousInitializationComplete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    .line 328
    :try_start_4
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->ensureOpenSessionExists()V

    .line 330
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->handler:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 331
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_4 .. :try_end_4} :catch_0

    .line 337
    :goto_4
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 340
    invoke-direct {p0}, Lcom/crashlytics/android/Crashlytics;->finishInitSynchronously()V

    move v0, v7

    .line 342
    goto/16 :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->httpRequestFactory:Lio/fabric/sdk/android/services/d/m;

    new-instance v2, Lcom/crashlytics/android/Crashlytics$1;

    invoke-direct {v2, p0}, Lcom/crashlytics/android/Crashlytics$1;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    invoke-interface {v0, v2}, Lio/fabric/sdk/android/services/d/m;->a(Lio/fabric/sdk/android/services/d/n;)V
    :try_end_5
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 345
    :catch_0
    move-exception v0

    .line 347
    new-instance v1, Lio/fabric/sdk/android/services/concurrency/y;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/concurrency/y;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 289
    :cond_3
    :try_start_6
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 296
    :catch_1
    move-exception v0

    .line 297
    :try_start_7
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Error setting up app properties"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 348
    :catch_2
    move-exception v0

    .line 349
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    .line 352
    goto/16 :goto_0

    .line 332
    :catch_3
    move-exception v0

    move v1, v7

    .line 333
    :goto_5
    :try_start_8
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "There was a problem installing the exception handler."

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Lcom/crashlytics/android/CrashlyticsMissingDependencyException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 344
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 332
    :catch_4
    move-exception v0

    goto :goto_5
.end method

.method public setDebugMode(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 705
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Use of Crashlytics.setDebugMode is deprecated."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    return-void
.end method

.method setExternalCrashEventDataProvider(Lcom/crashlytics/android/internal/CrashEventDataProvider;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics;->externalCrashEventDataProvider:Lcom/crashlytics/android/internal/CrashEventDataProvider;

    .line 861
    return-void
.end method

.method public declared-synchronized setListener(Lcom/crashlytics/android/CrashlyticsListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Use of Crashlytics.setListener is deprecated."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    if-nez p1, :cond_0

    .line 695
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 697
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics;->listener:Lcom/crashlytics/android/CrashlyticsListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 698
    monitor-exit p0

    return-void
.end method

.method setShouldSendUserReportsWithoutPrompting(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 917
    new-instance v0, Lio/fabric/sdk/android/services/e/c;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/e/c;-><init>(Lio/fabric/sdk/android/k;)V

    .line 918
    invoke-interface {v0}, Lio/fabric/sdk/android/services/e/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/e/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 919
    return-void
.end method

.method shouldPromptUserBeforeSendingCrashReports()Z
    .locals 3

    .prologue
    .line 898
    invoke-static {}, Lio/fabric/sdk/android/services/f/q;->a()Lio/fabric/sdk/android/services/f/q;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/Crashlytics$3;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/Crashlytics$3;-><init>(Lcom/crashlytics/android/Crashlytics;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/f/q;->a(Lio/fabric/sdk/android/services/f/s;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method shouldSendReportsWithoutPrompting()Z
    .locals 3

    .prologue
    .line 911
    new-instance v0, Lio/fabric/sdk/android/services/e/c;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/e/c;-><init>(Lio/fabric/sdk/android/k;)V

    .line 912
    invoke-interface {v0}, Lio/fabric/sdk/android/services/e/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public verifyPinning(Ljava/net/URL;)Z
    .locals 4

    .prologue
    .line 677
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/crashlytics/android/Crashlytics;->internalVerifyPinning(Ljava/net/URL;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 680
    :goto_0
    return v0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Could not verify SSL pinning"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 680
    const/4 v0, 0x0

    goto :goto_0
.end method
