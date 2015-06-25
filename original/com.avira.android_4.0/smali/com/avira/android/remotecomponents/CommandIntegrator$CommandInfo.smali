.class Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;->a:Ljava/lang/String;

    .line 694
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;->a:Ljava/lang/String;

    .line 705
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 727
    return-void
.end method
