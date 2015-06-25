.class public Lcom/avira/android/antivirus/data/ScannedFileInfo;
.super Lcom/avira/android/antivirus/data/CallbackData;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avira/android/antivirus/data/ScannedFileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/antivirus/data/MalwareInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/avira/android/antivirus/data/i;

    invoke-direct {v0}, Lcom/avira/android/antivirus/data/i;-><init>()V

    sput-object v0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/avira/android/antivirus/data/CallbackData;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->c:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->d:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->e:Ljava/util/HashMap;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 54
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 56
    iget-object v3, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    const-class v0, Lcom/avira/android/antivirus/data/MalwareInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/MalwareInfo;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/avira/android/antivirus/data/ScannedFileInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/avira/android/antivirus/data/CallbackData;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->a:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->b:Ljava/lang/String;

    .line 20
    iput p3, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->c:I

    .line 21
    iput p4, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->d:I

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/avira/android/antivirus/data/MalwareInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    iget-object v1, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 42
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->e:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->e:Ljava/util/HashMap;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->e:Ljava/util/HashMap;

    new-instance v1, Lcom/avira/android/antivirus/data/MalwareInfo;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/avira/android/antivirus/data/MalwareInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Lcom/avira/android/antivirus/data/ScannedFileInfo;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/MalwareInfo;

    .line 99
    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/MalwareInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    :cond_1
    return-void
.end method
