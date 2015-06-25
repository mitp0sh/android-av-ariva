.class Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    iput-wide p2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;->val$timestamp:J

    iput-object p4, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7

    .prologue
    .line 395
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$300(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->logFile:Lio/fabric/sdk/android/services/b/ac;
    invoke-static {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$400(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Lio/fabric/sdk/android/services/b/ac;

    move-result-object v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # invokes: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->initLogFile()Z
    invoke-static {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$500(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Z

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->logFile:Lio/fabric/sdk/android/services/b/ac;
    invoke-static {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$400(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Lio/fabric/sdk/android/services/b/ac;

    move-result-object v2

    const/high16 v3, 0x10000

    iget-wide v4, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;->val$timestamp:J

    iget-object v6, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$8;->val$msg:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doWriteToLog(Lio/fabric/sdk/android/services/b/ac;IJLjava/lang/String;)V

    .line 401
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
