.class Lcom/crashlytics/android/answers/SessionAnalyticsManager;
.super Lio/fabric/sdk/android/services/c/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/c/g",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Lio/fabric/sdk/android/services/d/m;)V
    .locals 6

    .prologue
    .line 22
    const-string v0, "Crashlytics SAM"

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/u;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;-><init>(Landroid/content/Context;Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Ljava/util/concurrent/ScheduledExecutorService;Lio/fabric/sdk/android/services/d/m;)V

    .line 25
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Ljava/util/concurrent/ScheduledExecutorService;Lio/fabric/sdk/android/services/d/m;)V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;

    invoke-direct {v0, p1, p4, p3, p5}, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Lio/fabric/sdk/android/services/d/m;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lio/fabric/sdk/android/services/c/g;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/n;Lio/fabric/sdk/android/services/c/d;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 32
    iput-object p2, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/crashlytics/android/answers/SessionAnalyticsManager;)Lcom/crashlytics/android/answers/SessionEventMetadata;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/crashlytics/android/answers/SessionAnalyticsManager;)Lio/fabric/sdk/android/services/c/n;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->strategy:Lio/fabric/sdk/android/services/c/n;

    return-object v0
.end method

.method static synthetic access$200(Lcom/crashlytics/android/answers/SessionAnalyticsManager;)Lio/fabric/sdk/android/services/c/n;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->strategy:Lio/fabric/sdk/android/services/c/n;

    return-object v0
.end method

.method private recordEventAsync(Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    invoke-static {v0, p1, p2}, Lcom/crashlytics/android/answers/SessionEvent;->buildActivityLifecycleEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->recordEventAsync(Ljava/lang/Object;Z)V

    .line 110
    return-void
.end method


# virtual methods
.method protected getDisabledEventsStrategy()Lio/fabric/sdk/android/services/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/fabric/sdk/android/services/c/n",
            "<",
            "Lcom/crashlytics/android/answers/SessionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/crashlytics/android/answers/DisabledSessionAnalyticsManagerStrategy;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/DisabledSessionAnalyticsManagerStrategy;-><init>()V

    return-object v0
.end method

.method public onCrash(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$1;

    invoke-direct {v0, p0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager$1;-><init>(Lcom/crashlytics/android/answers/SessionAnalyticsManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->executeSync(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->CREATE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->recordEventAsync(Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;Z)V

    .line 71
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->DESTROY:Lcom/crashlytics/android/answers/SessionEvent$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->recordEventAsync(Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;Z)V

    .line 76
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    invoke-static {v0, p1}, Lcom/crashlytics/android/answers/SessionEvent;->buildErrorEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Ljava/lang/String;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->recordEventAsync(Ljava/lang/Object;Z)V

    .line 80
    return-void
.end method

.method public onInstall()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;

    sget-object v1, Lcom/crashlytics/android/answers/SessionEvent$Type;->INSTALL:Lcom/crashlytics/android/answers/SessionEvent$Type;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/answers/SessionEvent;->buildEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEvent$Type;Ljava/util/Map;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->recordEventAsync(Ljava/lang/Object;Z)V

    .line 66
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->PAUSE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->recordEventAsync(Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;Z)V

    .line 85
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->RESUME:Lcom/crashlytics/android/answers/SessionEvent$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->recordEventAsync(Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;Z)V

    .line 90
    return-void
.end method

.method public onSaveInstanceState(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->SAVE_INSTANCE_STATE:Lcom/crashlytics/android/answers/SessionEvent$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->recordEventAsync(Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;Z)V

    .line 95
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->START:Lcom/crashlytics/android/answers/SessionEvent$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->recordEventAsync(Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;Z)V

    .line 100
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/crashlytics/android/answers/SessionEvent$Type;->STOP:Lcom/crashlytics/android/answers/SessionEvent$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->recordEventAsync(Lcom/crashlytics/android/answers/SessionEvent$Type;Landroid/app/Activity;Z)V

    .line 105
    return-void
.end method

.method setAnalyticsSettingsData(Lio/fabric/sdk/android/services/f/b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/answers/SessionAnalyticsManager$2;-><init>(Lcom/crashlytics/android/answers/SessionAnalyticsManager;Lio/fabric/sdk/android/services/f/b;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->executeAsync(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method
