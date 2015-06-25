.class Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;
.super Lio/fabric/sdk/android/services/c/b;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/c/b",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;",
        "Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy",
        "<",
        "Lcom/crashlytics/android/answers/SessionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field filesSender:Lio/fabric/sdk/android/services/c/p;

.field private final httpRequestFactory:Lio/fabric/sdk/android/services/d/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Lio/fabric/sdk/android/services/d/m;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lio/fabric/sdk/android/services/c/b;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lio/fabric/sdk/android/services/c/d;)V

    .line 29
    iput-object p4, p0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->httpRequestFactory:Lio/fabric/sdk/android/services/d/m;

    .line 30
    return-void
.end method


# virtual methods
.method public getFilesSender()Lio/fabric/sdk/android/services/c/p;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->filesSender:Lio/fabric/sdk/android/services/c/p;

    return-object v0
.end method

.method public setAnalyticsSettingsData(Lio/fabric/sdk/android/services/f/b;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 40
    new-instance v0, Lcom/crashlytics/android/answers/DefaultSessionAnalyticsFilesSender;

    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v1

    iget-object v3, p1, Lio/fabric/sdk/android/services/f/b;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->httpRequestFactory:Lio/fabric/sdk/android/services/d/m;

    iget-object v2, p0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lio/fabric/sdk/android/services/b/j;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/answers/DefaultSessionAnalyticsFilesSender;-><init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->filesSender:Lio/fabric/sdk/android/services/c/p;

    .line 44
    iget-object v0, p0, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->filesManager:Lio/fabric/sdk/android/services/c/d;

    check-cast v0, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/f/b;)V

    .line 46
    iget v0, p1, Lio/fabric/sdk/android/services/f/b;->b:I

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;->configureRollover(I)V

    .line 47
    return-void
.end method
