.class public Lcom/avira/android/blacklist/model/BLHistoryItem;
.super Lcom/avira/android/utilities/s;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avira/android/blacklist/model/BLHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/avira/android/blacklist/model/g;

    invoke-direct {v0}, Lcom/avira/android/blacklist/model/g;-><init>()V

    sput-object v0, Lcom/avira/android/blacklist/model/BLHistoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JJZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/avira/android/utilities/s;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->d:J

    .line 41
    iput-wide p3, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->a:J

    .line 42
    iput-boolean p5, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->b:Z

    .line 43
    iput-object p6, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0}, Lcom/avira/android/utilities/s;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->a:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->b:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->c:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->d:J

    .line 58
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/model/BLHistoryItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lcom/avira/android/utilities/g;->a()Lcom/avira/android/utilities/g;

    iget-wide v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->a:J

    invoke-static {v0, v1}, Lcom/avira/android/utilities/g;->c(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->a:J

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->b:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->d:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->a:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-boolean v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-wide v0, p0, Lcom/avira/android/blacklist/model/BLHistoryItem;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 144
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
