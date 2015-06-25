.class Lcom/crashlytics/android/Crashlytics$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/d/n;


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/Crashlytics;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/Crashlytics;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$1;->this$0:Lcom/crashlytics/android/Crashlytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyStorePassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$1;->this$0:Lcom/crashlytics/android/Crashlytics;

    # getter for: Lcom/crashlytics/android/Crashlytics;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->access$000(Lcom/crashlytics/android/Crashlytics;)Lcom/crashlytics/android/PinningInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/crashlytics/android/PinningInfoProvider;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$1;->this$0:Lcom/crashlytics/android/Crashlytics;

    # getter for: Lcom/crashlytics/android/Crashlytics;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->access$000(Lcom/crashlytics/android/Crashlytics;)Lcom/crashlytics/android/PinningInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/crashlytics/android/PinningInfoProvider;->getKeyStoreStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPinCreationTimeInMillis()J
    .locals 2

    .prologue
    .line 272
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPins()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$1;->this$0:Lcom/crashlytics/android/Crashlytics;

    # getter for: Lcom/crashlytics/android/Crashlytics;->pinningInfo:Lcom/crashlytics/android/PinningInfoProvider;
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->access$000(Lcom/crashlytics/android/Crashlytics;)Lcom/crashlytics/android/PinningInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/crashlytics/android/PinningInfoProvider;->getPins()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
