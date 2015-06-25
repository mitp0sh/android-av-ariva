.class public Lcom/facebook/widget/FacebookDialog$PendingCall;
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
            "Lcom/facebook/widget/FacebookDialog$PendingCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/UUID;

.field private b:Landroid/content/Intent;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1846
    new-instance v0, Lcom/facebook/widget/f;

    invoke-direct {v0}, Lcom/facebook/widget/f;-><init>()V

    sput-object v0, Lcom/facebook/widget/FacebookDialog$PendingCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1789
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->a:Ljava/util/UUID;

    .line 1790
    const v0, 0xfacf

    iput v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->c:I

    .line 1791
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 1793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1794
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->a:Ljava/util/UUID;

    .line 1795
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->b:Landroid/content/Intent;

    .line 1796
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->c:I

    .line 1797
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 1778
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1778
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->b:Landroid/content/Intent;

    return-object v0
.end method

.method public final b()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 1831
    iget v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1836
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1842
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->b:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1843
    iget v0, p0, Lcom/facebook/widget/FacebookDialog$PendingCall;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1844
    return-void
.end method
