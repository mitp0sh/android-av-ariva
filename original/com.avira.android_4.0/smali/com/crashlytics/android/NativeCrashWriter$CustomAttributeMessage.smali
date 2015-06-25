.class final Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "SourceFile"


# static fields
.field private static final PROTOBUF_TAG:I = 0x2


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/models/CustomAttributeData;)V
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x2

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 391
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/CustomAttributeData;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;->key:Ljava/lang/String;

    .line 392
    iget-object v0, p1, Lcom/crashlytics/android/internal/models/CustomAttributeData;->value:Ljava/lang/String;

    iput-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;->value:Ljava/lang/String;

    .line 393
    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .locals 3

    .prologue
    .line 397
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v1

    .line 398
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/crashlytics/android/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/ByteString;)I

    move-result v0

    add-int/2addr v0, v1

    .line 400
    return v0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public final writeProperties(Lcom/crashlytics/android/CodedOutputStream;)V
    .locals 2

    .prologue
    .line 405
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 406
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/crashlytics/android/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/crashlytics/android/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/ByteString;)V

    .line 407
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/NativeCrashWriter$CustomAttributeMessage;->value:Ljava/lang/String;

    goto :goto_0
.end method
