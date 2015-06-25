.class public Lcom/avira/android/iab/models/IABRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CHECK_PREMIUM_EVENT:Ljava/lang/String; = "IABCheckPremiumEvent"

.field public static final CHECK_PRODUCT_EVENT:Ljava/lang/String; = "IABCheckProduct"

.field public static final CHECK_RENEWAL_EVENT:Ljava/lang/String; = "IABCheckRenewalEvent"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avira/android/iab/models/IABRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final FETCH_ERROR_KEY:Ljava/lang/String; = "error_code"

.field public static final FETCH_RESULT_KEY:Ljava/lang/String; = "result"

.field public static final IAB_REQUEST_COMMAND_KEY:Ljava/lang/String;

.field public static final NO_RETURN_EVENT:Ljava/lang/String; = "IABNoReturn"

.field public static final PURCHASE_FINISHED_EVENT:Ljava/lang/String; = "IABPurchaseFinished"

.field public static final RETRY_REQUEST_EVENT:Ljava/lang/String; = "IABRetryRequestEvent"

.field public static final SEND_REQUEST_EVENT:Ljava/lang/String; = "IABSendRequestEvent"

.field public static final SKU_UPDATE_EVENT:Ljava/lang/String; = "IABSkuUpdateEvent"


# instance fields
.field private a:Lcom/avira/android/iab/models/d;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/avira/android/iab/models/IABRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/iab/models/IABRequest;->IAB_REQUEST_COMMAND_KEY:Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/avira/android/iab/models/b;

    invoke-direct {v0}, Lcom/avira/android/iab/models/b;-><init>()V

    sput-object v0, Lcom/avira/android/iab/models/IABRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/iab/models/IABRequest;->a:Lcom/avira/android/iab/models/d;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/iab/models/d;

    iput-object v0, p0, Lcom/avira/android/iab/models/IABRequest;->a:Lcom/avira/android/iab/models/d;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/iab/models/IABRequest;->b:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/avira/android/iab/models/d;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/iab/models/IABRequest;->a:Lcom/avira/android/iab/models/d;

    .line 39
    iput-object p1, p0, Lcom/avira/android/iab/models/IABRequest;->a:Lcom/avira/android/iab/models/d;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getReceiverCommandKey "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/avira/android/iab/models/c;->$SwitchMap$com$avira$android$iab$models$IABRequest$IABRequestCommand:[I

    invoke-virtual {p1}, Lcom/avira/android/iab/models/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "IABNoReturn"

    :goto_0
    iput-object v0, p0, Lcom/avira/android/iab/models/IABRequest;->b:Ljava/lang/String;

    .line 41
    return-void

    .line 40
    :pswitch_0
    const-string v0, "IABSendRequestEvent"

    goto :goto_0

    :pswitch_1
    const-string v0, "IABRetryRequestEvent"

    goto :goto_0

    :pswitch_2
    const-string v0, "IABCheckPremiumEvent"

    goto :goto_0

    :pswitch_3
    const-string v0, "IABCheckRenewalEvent"

    goto :goto_0

    :pswitch_4
    const-string v0, "IABSkuUpdateEvent"

    goto :goto_0

    :pswitch_5
    const-string v0, "IABPurchaseFinished"

    goto :goto_0

    :pswitch_6
    const-string v0, "IABCheckProduct"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a()Lcom/avira/android/iab/models/d;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/avira/android/iab/models/IABRequest;->a:Lcom/avira/android/iab/models/d;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/avira/android/iab/models/IABRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/avira/android/iab/models/IABRequest;->a:Lcom/avira/android/iab/models/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/iab/models/IABRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/avira/android/iab/models/IABRequest;->a:Lcom/avira/android/iab/models/d;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 117
    iget-object v0, p0, Lcom/avira/android/iab/models/IABRequest;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return-void
.end method
