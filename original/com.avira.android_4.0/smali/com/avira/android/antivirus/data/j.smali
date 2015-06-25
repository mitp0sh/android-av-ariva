.class final Lcom/avira/android/antivirus/data/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/avira/android/antivirus/data/ScannerCallbackData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avira/android/antivirus/data/ScannerCallbackData;-><init>(Landroid/os/Parcel;Lcom/avira/android/antivirus/data/j;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    new-array v0, p1, [Lcom/avira/android/antivirus/data/ScannerCallbackData;

    return-object v0
.end method
