.class Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

.field final synthetic val$sessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 885
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$15;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    iput-object p2, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$15;->val$sessionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$15;->val$sessionId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
