.class public Lcom/avira/android/antivirus/data/ScannerCallbackData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TIME_STAMP_FORMAT:Ljava/lang/String; = "%s, %s"


# instance fields
.field private mFileInfo:Lcom/avira/android/antivirus/data/ScannedFileInfo;

.field private mFileInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/antivirus/data/ScannedFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/avira/android/antivirus/data/j;

    invoke-direct {v0}, Lcom/avira/android/antivirus/data/j;-><init>()V

    sput-object v0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mTimestamp:J

    .line 53
    const-class v0, Lcom/avira/android/antivirus/data/ScannedFileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/ScannedFileInfo;

    iput-object v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mFileInfo:Lcom/avira/android/antivirus/data/ScannedFileInfo;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mFileInfoList:Ljava/util/HashMap;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 58
    iget-object v3, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mFileInfoList:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    const-class v0, Lcom/avira/android/antivirus/data/ScannedFileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/ScannedFileInfo;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/avira/android/antivirus/data/j;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/avira/android/antivirus/data/ScannerCallbackData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/avira/android/antivirus/data/ScannedFileInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/avira/android/antivirus/data/ScannedFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mFileInfo:Lcom/avira/android/antivirus/data/ScannedFileInfo;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mFileInfoList:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 47
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mTimestamp:J

    .line 48
    return-void
.end method


# virtual methods
.method public addMalwareInfo(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    invoke-static {p5}, Lcom/avira/android/antivirus/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mFileInfoList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/ScannedFileInfo;

    .line 75
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/avira/android/antivirus/data/ScannedFileInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/avira/android/antivirus/data/ScannedFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 78
    iget-object v1, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mFileInfoList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    invoke-virtual {v0, p5, p6, p7, p8}, Lcom/avira/android/antivirus/data/ScannedFileInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getFileInfo()Lcom/avira/android/antivirus/data/ScannedFileInfo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mFileInfo:Lcom/avira/android/antivirus/data/ScannedFileInfo;

    return-object v0
.end method

.method public getInfectedFileInfoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/antivirus/data/ScannedFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mFileInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 6

    .prologue
    .line 92
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 96
    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mTimestamp:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 97
    const-string v3, "%s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-wide v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mFileInfo:Lcom/avira/android/antivirus/data/ScannedFileInfo;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mFileInfoList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannerCallbackData;->mFileInfoList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method
