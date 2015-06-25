.class public final enum Lcom/avira/android/iab/models/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/iab/models/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/iab/models/d;

.field public static final enum CHECK_PREMIUM:Lcom/avira/android/iab/models/d;

.field public static final enum CHECK_PRODUCT:Lcom/avira/android/iab/models/d;

.field public static final enum CHECK_RENEWAL:Lcom/avira/android/iab/models/d;

.field public static final enum DEBUG_PURCHASE_ID_TO_SDCARD:Lcom/avira/android/iab/models/d;

.field public static final enum GET_SKU_DATA:Lcom/avira/android/iab/models/d;

.field public static final enum RETRY_REQUEST:Lcom/avira/android/iab/models/d;

.field public static final enum SEND_REQUEST:Lcom/avira/android/iab/models/d;

.field public static final enum WAIT_FOR_PURCHASE:Lcom/avira/android/iab/models/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/avira/android/iab/models/d;

    const-string v1, "SEND_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/iab/models/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/models/d;->SEND_REQUEST:Lcom/avira/android/iab/models/d;

    new-instance v0, Lcom/avira/android/iab/models/d;

    const-string v1, "RETRY_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/iab/models/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/models/d;->RETRY_REQUEST:Lcom/avira/android/iab/models/d;

    new-instance v0, Lcom/avira/android/iab/models/d;

    const-string v1, "CHECK_PREMIUM"

    invoke-direct {v0, v1, v5}, Lcom/avira/android/iab/models/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/models/d;->CHECK_PREMIUM:Lcom/avira/android/iab/models/d;

    new-instance v0, Lcom/avira/android/iab/models/d;

    const-string v1, "CHECK_RENEWAL"

    invoke-direct {v0, v1, v6}, Lcom/avira/android/iab/models/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/models/d;->CHECK_RENEWAL:Lcom/avira/android/iab/models/d;

    new-instance v0, Lcom/avira/android/iab/models/d;

    const-string v1, "GET_SKU_DATA"

    invoke-direct {v0, v1, v7}, Lcom/avira/android/iab/models/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/models/d;->GET_SKU_DATA:Lcom/avira/android/iab/models/d;

    new-instance v0, Lcom/avira/android/iab/models/d;

    const-string v1, "WAIT_FOR_PURCHASE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/models/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/models/d;->WAIT_FOR_PURCHASE:Lcom/avira/android/iab/models/d;

    new-instance v0, Lcom/avira/android/iab/models/d;

    const-string v1, "CHECK_PRODUCT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/models/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/models/d;->CHECK_PRODUCT:Lcom/avira/android/iab/models/d;

    new-instance v0, Lcom/avira/android/iab/models/d;

    const-string v1, "DEBUG_PURCHASE_ID_TO_SDCARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/avira/android/iab/models/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/iab/models/d;->DEBUG_PURCHASE_ID_TO_SDCARD:Lcom/avira/android/iab/models/d;

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/avira/android/iab/models/d;

    sget-object v1, Lcom/avira/android/iab/models/d;->SEND_REQUEST:Lcom/avira/android/iab/models/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/iab/models/d;->RETRY_REQUEST:Lcom/avira/android/iab/models/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/iab/models/d;->CHECK_PREMIUM:Lcom/avira/android/iab/models/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/iab/models/d;->CHECK_RENEWAL:Lcom/avira/android/iab/models/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avira/android/iab/models/d;->GET_SKU_DATA:Lcom/avira/android/iab/models/d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avira/android/iab/models/d;->WAIT_FOR_PURCHASE:Lcom/avira/android/iab/models/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avira/android/iab/models/d;->CHECK_PRODUCT:Lcom/avira/android/iab/models/d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avira/android/iab/models/d;->DEBUG_PURCHASE_ID_TO_SDCARD:Lcom/avira/android/iab/models/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/iab/models/d;->$VALUES:[Lcom/avira/android/iab/models/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/iab/models/d;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/avira/android/iab/models/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/iab/models/d;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/iab/models/d;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/avira/android/iab/models/d;->$VALUES:[Lcom/avira/android/iab/models/d;

    invoke-virtual {v0}, [Lcom/avira/android/iab/models/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/iab/models/d;

    return-object v0
.end method
