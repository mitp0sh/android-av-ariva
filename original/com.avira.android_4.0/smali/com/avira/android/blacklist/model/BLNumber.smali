.class public Lcom/avira/android/blacklist/model/BLNumber;
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
            "Lcom/avira/android/blacklist/model/BLNumber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/avira/android/blacklist/d/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/avira/android/blacklist/model/i;

    invoke-direct {v0}, Lcom/avira/android/blacklist/model/i;-><init>()V

    sput-object v0, Lcom/avira/android/blacklist/model/BLNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avira/android/blacklist/d/j;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/d/j;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avira/android/blacklist/model/BLNumber;-><init>(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/model/BLNumber;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/avira/android/blacklist/model/BLNumber;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/avira/android/blacklist/model/BLNumber;->b:Lcom/avira/android/blacklist/d/j;

    .line 20
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLNumber;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/avira/android/blacklist/d/j;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/avira/android/blacklist/model/BLNumber;->b:Lcom/avira/android/blacklist/d/j;

    .line 46
    return-void
.end method

.method final a(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/avira/android/blacklist/model/BLNumber;->a:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/avira/android/blacklist/model/BLNumber;->b:Lcom/avira/android/blacklist/d/j;

    .line 41
    return-void
.end method

.method public final b()Lcom/avira/android/blacklist/d/j;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLNumber;->b:Lcom/avira/android/blacklist/d/j;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLNumber;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/avira/android/blacklist/model/BLNumber;->b:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
