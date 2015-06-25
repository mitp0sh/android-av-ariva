.class Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$5;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$5;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$5;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    const/4 v1, 0x1

    # setter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->powerConnected:Z
    invoke-static {v0, v1}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$102(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;Z)Z

    .line 279
    return-void
.end method
