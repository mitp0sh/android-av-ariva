.class Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$19;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 2078
    iput-object p1, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$19;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$19;->this$0:Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;

    # getter for: Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->initializationMarkerFile:Ljava/io/File;
    invoke-static {v0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;->access$1300(Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2078
    invoke-virtual {p0}, Lcom/crashlytics/android/CrashlyticsUncaughtExceptionHandler$19;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
