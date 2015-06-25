.class Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    iget-object v1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$14;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    sget-object v2, Lcom/crashlytics/android/ClsFileOutputStream;->TEMP_FILENAME_FILTER:Ljava/io/FilenameFilter;

    # invokes: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->listFilesMatching(Ljava/io/FilenameFilter;)[Ljava/io/File;
    invoke-static {v1, v2}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$1200(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->doCleanInvalidTempFiles([Ljava/io/File;)V

    .line 866
    return-void
.end method
