.class Lcom/crashlytics/android/answers/SessionAnalyticsManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

.field final synthetic val$analyticsSettingsData:Lio/fabric/sdk/android/services/f/b;

.field final synthetic val$protocolAndHostOverride:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/SessionAnalyticsManager;Lio/fabric/sdk/android/services/f/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$2;->this$0:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    iput-object p2, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$2;->val$analyticsSettingsData:Lio/fabric/sdk/android/services/f/b;

    iput-object p3, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$2;->val$protocolAndHostOverride:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$2;->this$0:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    # getter for: Lcom/crashlytics/android/answers/SessionAnalyticsManager;->strategy:Lio/fabric/sdk/android/services/c/n;
    invoke-static {v0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->access$200(Lcom/crashlytics/android/answers/SessionAnalyticsManager;)Lio/fabric/sdk/android/services/c/n;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;

    iget-object v1, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$2;->val$analyticsSettingsData:Lio/fabric/sdk/android/services/f/b;

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$2;->val$protocolAndHostOverride:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/f/b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Crashlytics failed to set analytics settings data."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
