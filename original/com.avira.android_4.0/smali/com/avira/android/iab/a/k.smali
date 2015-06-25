.class public Lcom/avira/android/iab/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_DISPLAY_PRICE:Ljava/lang/String; = "7.95 euro"

.field public static final ERROR_CODES:[I

.field private static final FIST_REQUEST_TRY_KEY:Ljava/lang/String; = "IABFirstRetryTimeStamp"

.field private static final LAST_PREMIUM_CHECK_KEY:Ljava/lang/String; = "IABLastPremiumCheck"

.field private static final LAST_REQUEST_KEY:Ljava/lang/String; = "IABLastRequest"

.field public static final MICROS_FOR_UNIT:I = 0xf4240

.field private static final PREMIUM_CHECK_INTERVAL:J = 0x1ee62800L

.field public static final REAL_SKU:Ljava/lang/String; = "656"

.field private static final RESPONSE_DATA_KEY:Ljava/lang/String; = "IABResponseJSon"

.field private static final RETRY_COUNT_KEY:Ljava/lang/String; = "IABRetryCount"

.field public static final SERVER_RETRY_COUNTER:Ljava/lang/String; = "iab_purchase_date"

.field private static final TAG:Ljava/lang/String;

.field public static final TEST_SKUS:[Ljava/lang/String;

.field public static final TITLE_ERROR_CODES:[Ljava/lang/String;

.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 23
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "656"

    aput-object v1, v0, v5

    const-string v1, "testm_900"

    aput-object v1, v0, v3

    const-string v1, "testm_901"

    aput-object v1, v0, v4

    const-string v1, "testm_902"

    aput-object v1, v0, v6

    const-string v1, "testm_903"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "testm_904"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "testm_905"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "testm_906"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "testm_907"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "testm_908"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "testb_900"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "testb_901"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "testb_902"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "testb_903"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "testb_904"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "testb_905"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "testb_906"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "testb_907"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "testb_908"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dev_900"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "dev_901"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "dev_902"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "dev_903"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "dev_904"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "dev_905"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "dev_906"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "dev_907"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "dev_908"

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/iab/a/k;->TEST_SKUS:[Ljava/lang/String;

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avira/android/iab/a/k;->ERROR_CODES:[I

    .line 31
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avira/android/iab/a/k;->ERROR_CODES:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Normal Mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avira/android/iab/a/k;->ERROR_CODES:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Purchase not valid (m)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avira/android/iab/a/k;->ERROR_CODES:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Try again later (m)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avira/android/iab/a/k;->ERROR_CODES:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Invalid purchaseState (m)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avira/android/iab/a/k;->ERROR_CODES:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Already refunded or does not exist. Do not retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/avira/android/iab/a/k;->ERROR_CODES:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Transaction assigned to expired package"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/avira/android/iab/a/k;->ERROR_CODES:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " The transaction is made by other contact (m)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/avira/android/iab/a/k;->ERROR_CODES:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Make the method worng (m)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/iab/a/k;->TITLE_ERROR_CODES:[Ljava/lang/String;

    .line 39
    const-string v0, "656"

    sput-object v0, Lcom/avira/android/iab/a/k;->a:Ljava/lang/String;

    .line 40
    sput v5, Lcom/avira/android/iab/a/k;->b:I

    .line 52
    sput-boolean v5, Lcom/avira/android/iab/a/k;->c:Z

    .line 54
    const-class v0, Lcom/avira/android/iab/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    return-void

    .line 27
    :array_0
    .array-data 4
        0x0
        0x38f
        0x390
        0x391
        0x392
        0x393
        0x394
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 171
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    .line 173
    const-string v0, "IABLastPremiumCheck"

    invoke-static {p2, v0, p0, p1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 174
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/iab/IABRequestService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    new-instance v1, Lcom/avira/android/iab/models/IABRequest;

    sget-object v2, Lcom/avira/android/iab/models/d;->CHECK_PRODUCT:Lcom/avira/android/iab/models/d;

    invoke-direct {v1, v2}, Lcom/avira/android/iab/models/IABRequest;-><init>(Lcom/avira/android/iab/models/d;)V

    .line 61
    sget-object v2, Lcom/avira/android/iab/models/IABRequest;->IAB_REQUEST_COMMAND_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    .line 221
    const-string v0, "IABLastRequest"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static a(ZLandroid/content/Context;)V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 74
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    .line 75
    if-eqz p0, :cond_2

    .line 77
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/avira/android/iab/IABRequestService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Lcom/avira/android/iab/models/IABRequest;

    sget-object v4, Lcom/avira/android/iab/models/d;->CHECK_PREMIUM:Lcom/avira/android/iab/models/d;

    invoke-direct {v3, v4}, Lcom/avira/android/iab/models/IABRequest;-><init>(Lcom/avira/android/iab/models/d;)V

    sget-object v4, Lcom/avira/android/iab/models/IABRequest;->IAB_REQUEST_COMMAND_KEY:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 78
    :cond_0
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/avira/android/iab/a/k;->e(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v4, v6, v4

    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/avira/android/iab/a/k;->i(Landroid/content/Context;)I

    move-result v0

    xor-int/lit8 v0, v0, 0x2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/avira/android/iab/IABRequestService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Lcom/avira/android/iab/models/IABRequest;

    sget-object v4, Lcom/avira/android/iab/models/d;->RETRY_REQUEST:Lcom/avira/android/iab/models/d;

    invoke-direct {v3, v4}, Lcom/avira/android/iab/models/IABRequest;-><init>(Lcom/avira/android/iab/models/d;)V

    sget-object v4, Lcom/avira/android/iab/models/IABRequest;->IAB_REQUEST_COMMAND_KEY:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 79
    :cond_1
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    const-string v0, "IABResponseJSon"

    invoke-static {p1, v0, v10, v11}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_5

    cmp-long v0, v4, v8

    if-lez v0, :cond_5

    invoke-static {p1}, Lcom/avira/android/iab/a/k;->e(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-gtz v0, :cond_5

    :goto_1
    if-eqz v1, :cond_2

    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/avira/android/iab/IABRequestService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/avira/android/iab/models/IABRequest;

    sget-object v2, Lcom/avira/android/iab/models/d;->CHECK_RENEWAL:Lcom/avira/android/iab/models/d;

    invoke-direct {v1, v2}, Lcom/avira/android/iab/models/IABRequest;-><init>(Lcom/avira/android/iab/models/d;)V

    sget-object v2, Lcom/avira/android/iab/models/IABRequest;->IAB_REQUEST_COMMAND_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 81
    :cond_2
    return-void

    .line 77
    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    const-string v0, "IABLastPremiumCheck"

    invoke-static {p1, v0, v10, v11}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1ee62800

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    invoke-static {v4, v5, p1}, Lcom/avira/android/iab/a/k;->a(JLandroid/content/Context;)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    move v1, v2

    .line 79
    goto :goto_1

    :cond_6
    move v0, v2

    goto/16 :goto_0
.end method

.method public static b(JLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 271
    const-string v0, "IABResponseJSon"

    invoke-static {p2, v0, p0, p1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 272
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/iab/IABRequestService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    new-instance v1, Lcom/avira/android/iab/models/IABRequest;

    sget-object v2, Lcom/avira/android/iab/models/d;->DEBUG_PURCHASE_ID_TO_SDCARD:Lcom/avira/android/iab/models/d;

    invoke-direct {v1, v2}, Lcom/avira/android/iab/models/IABRequest;-><init>(Lcom/avira/android/iab/models/d;)V

    .line 68
    sget-object v2, Lcom/avira/android/iab/models/IABRequest;->IAB_REQUEST_COMMAND_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    return-void
.end method

.method public static b(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 252
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    .line 254
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-mm-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 257
    :try_start_0
    const-string v1, "expireDate"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 259
    const-string v2, "IABResponseJSon"

    invoke-static {p1, v2, v0, v1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 184
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    .line 185
    const-string v0, "IABFirstRetryTimeStamp"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 186
    const-string v0, "IABRetryCount"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 187
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    .line 192
    const-string v0, "IABFirstRetryTimeStamp"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    const-string v0, "IABRetryCount"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static e(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 198
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    .line 199
    const-string v0, "IABFirstRetryTimeStamp"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 210
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    .line 211
    invoke-static {p0}, Lcom/avira/android/iab/a/k;->i(Landroid/content/Context;)I

    move-result v0

    .line 212
    if-lez v0, :cond_0

    .line 214
    const-string v1, "IABRetryCount"

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 216
    :cond_0
    return-void
.end method

.method public static g(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    .line 228
    const-string v0, "IABLastRequest"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 282
    const-string v0, "IABResponseJSon"

    invoke-static {p0, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private static i(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/avira/android/iab/a/k;->TAG:Ljava/lang/String;

    .line 205
    const-string v0, "IABRetryCount"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
