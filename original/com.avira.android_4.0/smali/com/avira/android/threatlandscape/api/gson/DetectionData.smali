.class public Lcom/avira/android/threatlandscape/api/gson/DetectionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private checksum:Ljava/lang/String;

.field private filepath:Ljava/lang/String;

.field private filesize:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/avira/android/threatlandscape/api/gson/DetectionData;->name:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/avira/android/threatlandscape/api/gson/DetectionData;->checksum:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/avira/android/threatlandscape/api/gson/DetectionData;->filepath:Ljava/lang/String;

    .line 37
    invoke-direct {p0, p3}, Lcom/avira/android/threatlandscape/api/gson/DetectionData;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avira/android/threatlandscape/api/gson/DetectionData;->filesize:J

    .line 38
    return-void
.end method

.method private getFileSize(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 56
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
