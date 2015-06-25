.class Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

.field final synthetic val$toSend:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 2095
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$20;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    iput-object p2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$20;->val$toSend:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$20;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;
    invoke-static {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$800(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2099
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 2101
    invoke-static {}, Lio/fabric/sdk/android/services/f/q;->a()Lio/fabric/sdk/android/services/f/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/f/q;->b()Lio/fabric/sdk/android/services/f/v;

    move-result-object v0

    .line 2103
    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$20;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->crashlytics:Lcom/crashlytics/android/Crashlytics;
    invoke-static {v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$800(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Lcom/crashlytics/android/Crashlytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/Crashlytics;->getCreateReportSpiCall(Lio/fabric/sdk/android/services/f/v;)Lcom/crashlytics/android/CreateReportSpiCall;

    move-result-object v0

    .line 2108
    if-eqz v0, :cond_0

    .line 2109
    new-instance v1, Lcom/crashlytics/android/ReportUploader;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/ReportUploader;-><init>(Lcom/crashlytics/android/CreateReportSpiCall;)V

    new-instance v0, Lcom/crashlytics/android/SessionReport;

    iget-object v2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$20;->val$toSend:Ljava/io/File;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->SEND_AT_CRASHTIME_HEADER:Ljava/util/Map;
    invoke-static {}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$1400()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/SessionReport;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/ReportUploader;->forceUpload(Lcom/crashlytics/android/Report;)Z

    .line 2113
    :cond_0
    return-void
.end method
