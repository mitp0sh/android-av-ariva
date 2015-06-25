.class Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$6;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$6;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$6;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    const/4 v1, 0x0

    # setter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnected:Z
    invoke-static {v0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$102(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Z)Z

    .line 288
    return-void
.end method
