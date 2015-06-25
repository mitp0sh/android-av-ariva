.class Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;
.super Lcom/crashlytics/android/answers/SessionAnalyticsManager;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final application:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Lio/fabric/sdk/android/services/d/m;)V
    .locals 6

    .prologue
    .line 60
    const-string v0, "Crashlytics Trace Manager"

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/u;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;-><init>(Landroid/app/Application;Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Ljava/util/concurrent/ScheduledExecutorService;Lio/fabric/sdk/android/services/d/m;)V

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Ljava/util/concurrent/ScheduledExecutorService;Lio/fabric/sdk/android/services/d/m;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;-><init>(Landroid/content/Context;Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Ljava/util/concurrent/ScheduledExecutorService;Lio/fabric/sdk/android/services/d/m;)V

    .line 20
    new-instance v0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;-><init>(Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;)V

    iput-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 70
    iput-object p1, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->application:Landroid/app/Application;

    .line 71
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->e(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 74
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->e(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 81
    invoke-super {p0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->disable()V

    .line 82
    return-void
.end method
