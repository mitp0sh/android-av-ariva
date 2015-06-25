.class Lcom/crashlytics/android/Crashlytics$2;
.super Lio/fabric/sdk/android/services/concurrency/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/r",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$2;->this$0:Lcom/crashlytics/android/Crashlytics;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/r;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$2;->this$0:Lcom/crashlytics/android/Crashlytics;

    invoke-virtual {v0}, Lcom/crashlytics/android/Crashlytics;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/n;
    .locals 1

    .prologue
    .line 740
    sget-object v0, Lio/fabric/sdk/android/services/concurrency/n;->IMMEDIATE:Lio/fabric/sdk/android/services/concurrency/n;

    return-object v0
.end method
