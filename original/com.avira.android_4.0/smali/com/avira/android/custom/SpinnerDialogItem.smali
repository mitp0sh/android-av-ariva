.class public Lcom/avira/android/custom/SpinnerDialogItem;
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
            "Lcom/avira/android/custom/SpinnerDialogItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Lcom/avira/android/custom/h;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/avira/android/custom/ah;

    invoke-direct {v0}, Lcom/avira/android/custom/ah;-><init>()V

    sput-object v0, Lcom/avira/android/custom/SpinnerDialogItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/avira/android/custom/SpinnerDialogItem;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-boolean v1, p0, Lcom/avira/android/custom/SpinnerDialogItem;->c:Z

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/custom/SpinnerDialogItem;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/avira/android/custom/SpinnerDialogItem;->b:I

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/avira/android/custom/SpinnerDialogItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/avira/android/custom/SpinnerDialogItem;->a:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/avira/android/custom/SpinnerDialogItem;->b:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/custom/SpinnerDialogItem;->c:Z

    .line 24
    iput-boolean v1, p0, Lcom/avira/android/custom/SpinnerDialogItem;->d:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/avira/android/custom/SpinnerDialogItem;-><init>(Ljava/lang/String;)V

    .line 30
    iput p2, p0, Lcom/avira/android/custom/SpinnerDialogItem;->b:I

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avira/android/custom/SpinnerDialogItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/avira/android/custom/SpinnerDialogItem;->f:I

    .line 101
    return-void
.end method

.method public final a(Lcom/avira/android/custom/h;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/avira/android/custom/SpinnerDialogItem;->e:Lcom/avira/android/custom/h;

    .line 91
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/custom/SpinnerDialogItem;->d:Z

    .line 53
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/avira/android/custom/SpinnerDialogItem;->d:Z

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/avira/android/custom/SpinnerDialogItem;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/avira/android/custom/SpinnerDialogItem;->c:Z

    return v0
.end method

.method public final f()Lcom/avira/android/custom/h;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/avira/android/custom/SpinnerDialogItem;->e:Lcom/avira/android/custom/h;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/avira/android/custom/SpinnerDialogItem;->f:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/avira/android/custom/SpinnerDialogItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/avira/android/custom/SpinnerDialogItem;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void
.end method
