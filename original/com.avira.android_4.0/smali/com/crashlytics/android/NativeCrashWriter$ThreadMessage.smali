.class final Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;
.super Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;
.source "SourceFile"


# static fields
.field private static final PROTOBUF_TAG:I = 0x1


# instance fields
.field private final importance:I


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/models/ThreadData;Lcom/crashlytics/android/NativeCrashWriter$RepeatedMessage;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 247
    new-array v0, v2, [Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, v2, v0}, Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;-><init>(I[Lcom/crashlytics/android/NativeCrashWriter$ProtobufMessage;)V

    .line 248
    iget v0, p1, Lcom/crashlytics/android/internal/models/ThreadData;->importance:I

    iput v0, p0, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->importance:I

    .line 249
    return-void
.end method


# virtual methods
.method public final getPropertiesSize()I
    .locals 2

    .prologue
    .line 253
    const/4 v0, 0x2

    iget v1, p0, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->importance:I

    invoke-static {v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    return v0
.end method

.method public final writeProperties(Lcom/crashlytics/android/CodedOutputStream;)V
    .locals 2

    .prologue
    .line 258
    const/4 v0, 0x2

    iget v1, p0, Lcom/crashlytics/android/NativeCrashWriter$ThreadMessage;->importance:I

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/CodedOutputStream;->writeUInt32(II)V

    .line 259
    return-void
.end method
