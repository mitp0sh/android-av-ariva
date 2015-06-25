.class Lcom/crashlytics/android/answers/SessionAnalyticsManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/SessionAnalyticsManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$1;->this$0:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    iput-object p2, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$1;->val$sessionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$1;->this$0:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    # getter for: Lcom/crashlytics/android/answers/SessionAnalyticsManager;->strategy:Lio/fabric/sdk/android/services/c/n;
    invoke-static {v0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->access$100(Lcom/crashlytics/android/answers/SessionAnalyticsManager;)Lio/fabric/sdk/android/services/c/n;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$1;->this$0:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    # getter for: Lcom/crashlytics/android/answers/SessionAnalyticsManager;->metadata:Lcom/crashlytics/android/answers/SessionEventMetadata;
    invoke-static {v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->access$000(Lcom/crashlytics/android/answers/SessionAnalyticsManager;)Lcom/crashlytics/android/answers/SessionEventMetadata;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/answers/SessionAnalyticsManager$1;->val$sessionId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crashlytics/android/answers/SessionEvent;->buildCrashEvent(Lcom/crashlytics/android/answers/SessionEventMetadata;Ljava/lang/String;)Lcom/crashlytics/android/answers/SessionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/c/n;->recordEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Crashlytics failed to record crash event"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
