.class public Lcom/avira/android/iab/IABRequestService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/iab/a/f;
.implements Lcom/avira/android/iab/a/g;
.implements Lcom/avira/android/iab/a/h;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private a:Lcom/avira/android/iab/models/IABSkuDetails;

.field private b:Lcom/avira/android/iab/a/b;

.field private c:Lcom/avira/android/iab/models/IABRequest;

.field private d:Landroid/os/Handler;

.field private final e:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/avira/android/iab/IABRequestService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    .line 68
    new-instance v0, Lcom/avira/android/iab/r;

    invoke-direct {v0, p0}, Lcom/avira/android/iab/r;-><init>(Lcom/avira/android/iab/IABRequestService;)V

    iput-object v0, p0, Lcom/avira/android/iab/IABRequestService;->e:Landroid/os/IBinder;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/avira/android/iab/IABRequestService;)Lcom/avira/android/iab/a/b;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/iab/IABRequestService;Lcom/avira/android/iab/a/i;)Lcom/avira/android/iab/models/IABSkuDetails;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/a/i;)Lcom/avira/android/iab/models/IABSkuDetails;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/avira/android/iab/a/i;)Lcom/avira/android/iab/models/IABSkuDetails;
    .locals 1

    .prologue
    .line 764
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 765
    if-eqz p1, :cond_0

    .line 767
    sget-object v0, Lcom/avira/android/iab/a/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/avira/android/iab/a/i;->a(Ljava/lang/String;)Lcom/avira/android/iab/models/IABSkuDetails;

    move-result-object v0

    .line 768
    if-eqz v0, :cond_0

    .line 770
    iput-object v0, p0, Lcom/avira/android/iab/IABRequestService;->a:Lcom/avira/android/iab/models/IABSkuDetails;

    .line 774
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 287
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reactToError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    if-nez p1, :cond_0

    .line 290
    const/4 p1, -0x8

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    invoke-virtual {v0}, Lcom/avira/android/iab/models/IABRequest;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    invoke-virtual {v1}, Lcom/avira/android/iab/models/IABRequest;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    const-string v1, "error_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    invoke-static {p0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    .line 300
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    .line 301
    return-void
.end method

.method private a(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    invoke-virtual {v0}, Lcom/avira/android/iab/models/IABRequest;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 271
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 272
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    invoke-virtual {v1}, Lcom/avira/android/iab/models/IABRequest;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 274
    invoke-static {p0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    .line 276
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    .line 277
    return-void
.end method

.method static synthetic a(Lcom/avira/android/iab/IABRequestService;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 51
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "purchaseError"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v0, 0x390

    if-eq p1, v0, :cond_0

    const/16 v0, 0x38f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x391

    if-eq p1, v0, :cond_1

    const/16 v0, 0x392

    if-eq p1, v0, :cond_1

    const/16 v0, 0x393

    if-eq p1, v0, :cond_1

    const/16 v0, 0x394

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/avira/android/iab/a/k;->c:Z

    invoke-static {p0}, Lcom/avira/android/iab/a/k;->e(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {p0}, Lcom/avira/android/iab/a/k;->f(Landroid/content/Context;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/avira/android/iab/IABRequestService;->a(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/avira/android/iab/a/k;->c(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/avira/android/iab/IABRequestService;->e()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/avira/android/iab/IABRequestService;Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/avira/android/iab/IABRequestService;->a(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/iab/IABRequestService;Lcom/avira/android/iab/models/IABRequest;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/avira/android/iab/IABRequestService;->f()V

    :cond_0
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    invoke-virtual {v0}, Lcom/avira/android/iab/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    invoke-virtual {v0, p0}, Lcom/avira/android/iab/a/b;->a(Lcom/avira/android/iab/a/g;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/avira/android/iab/IABRequestService;->c()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avira/android/iab/IABRequestService;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/avira/android/iab/a/k;->b(Lorg/json/JSONObject;Landroid/content/Context;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 489
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendRequest"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/avira/android/iab/a/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    const-string v0, "processWalletSubscription"

    .line 494
    sget v1, Lcom/avira/android/iab/a/k;->b:I

    if-lez v1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->d:Landroid/os/Handler;

    new-instance v1, Lcom/avira/android/iab/n;

    invoke-direct {v1, p0}, Lcom/avira/android/iab/n;-><init>(Lcom/avira/android/iab/IABRequestService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 557
    :goto_0
    return-void

    .line 509
    :cond_0
    sget v1, Lcom/avira/android/iab/a/k;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 511
    const-string v0, "wrongMethod"

    .line 516
    :cond_1
    invoke-static {}, Lcom/avira/android/common/web/d;->a()Lcom/avira/android/common/web/d;

    move-result-object v1

    new-instance v2, Lcom/avira/android/iab/o;

    invoke-direct {v2, p0}, Lcom/avira/android/iab/o;-><init>(Lcom/avira/android/iab/IABRequestService;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/avira/android/common/web/d;->b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/avira/android/iab/IABRequestService;)Lcom/avira/android/iab/models/IABRequest;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V
    .locals 5

    .prologue
    .line 687
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 689
    new-instance v0, Lcom/avira/android/iab/models/IABRequest;

    sget-object v1, Lcom/avira/android/iab/models/d;->WAIT_FOR_PURCHASE:Lcom/avira/android/iab/models/d;

    invoke-direct {v0, v1}, Lcom/avira/android/iab/models/IABRequest;-><init>(Lcom/avira/android/iab/models/d;)V

    iput-object v0, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    .line 690
    const/4 v0, 0x0

    .line 691
    if-eqz p1, :cond_1

    .line 693
    invoke-virtual {p1}, Lcom/avira/android/iab/a/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lcom/avira/android/iab/IABRequestService;->a(I)V

    .line 701
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-virtual {p1}, Lcom/avira/android/iab/a/j;->a()I

    move-result v0

    .line 700
    :cond_1
    sget-object v1, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/avira/android/iab/models/IABRequest;

    sget-object v2, Lcom/avira/android/iab/models/d;->WAIT_FOR_PURCHASE:Lcom/avira/android/iab/models/d;

    invoke-direct {v1, v2}, Lcom/avira/android/iab/models/IABRequest;-><init>(Lcom/avira/android/iab/models/d;)V

    iput-object v1, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/avira/android/iab/models/IABPurchase;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "orderId"

    const-string v4, "orderId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "packageName"

    const-string v4, "packageName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "productId"

    const-string v4, "productId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "purchaseTime"

    const-string v4, "purchaseTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "purchaseState"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "purchaseToken"

    const-string v3, "purchaseToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "developerPayload"

    const-string v3, "developerPayload"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "price"

    iget-object v2, p0, Lcom/avira/android/iab/IABRequestService;->a:Lcom/avira/android/iab/models/IABSkuDetails;

    invoke-virtual {v2}, Lcom/avira/android/iab/models/IABSkuDetails;->d()F

    move-result v2

    new-instance v3, Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Price is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "currency"

    iget-object v2, p0, Lcom/avira/android/iab/IABRequestService;->a:Lcom/avira/android/iab/models/IABSkuDetails;

    invoke-virtual {v2}, Lcom/avira/android/iab/models/IABSkuDetails;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/avira/android/iab/a/k;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/avira/android/iab/IABRequestService;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caught exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic c(Lcom/avira/android/iab/IABRequestService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processCurrentCommand "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    sget-object v0, Lcom/avira/android/iab/q;->$SwitchMap$com$avira$android$iab$models$IABRequest$IABRequestCommand:[I

    iget-object v1, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    invoke-virtual {v1}, Lcom/avira/android/iab/models/IABRequest;->a()Lcom/avira/android/iab/models/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/iab/models/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 255
    iput-object v2, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 220
    :pswitch_0
    invoke-direct {p0}, Lcom/avira/android/iab/IABRequestService;->d()V

    goto :goto_0

    .line 230
    :pswitch_1
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    :try_start_0
    invoke-static {p0}, Lcom/avira/android/iab/a/k;->g(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avira/android/iab/IABRequestService;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0

    .line 234
    :pswitch_2
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/avira/android/iab/IABRequestService;->a(Landroid/os/Parcelable;)V

    new-instance v0, Lcom/avira/android/remotecomponents/b;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/b;-><init>()V

    const-string v1, "activatePremium"

    invoke-virtual {v0, v1}, Lcom/avira/android/remotecomponents/b;->a(Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    const-string v1, "type"

    const-string v2, "premium"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/remotecomponents/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    invoke-virtual {v0}, Lcom/avira/android/remotecomponents/b;->a()Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {v0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    goto :goto_0

    .line 238
    :pswitch_3
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/avira/android/iab/IABRequestService;->d()V

    goto :goto_0

    .line 243
    :pswitch_4
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avira/android/iab/h;

    invoke-direct {v1, p0}, Lcom/avira/android/iab/h;-><init>(Lcom/avira/android/iab/IABRequestService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 247
    :pswitch_5
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avira/android/iab/k;

    invoke-direct {v1, p0}, Lcom/avira/android/iab/k;-><init>(Lcom/avira/android/iab/IABRequestService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 251
    :pswitch_6
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    const/4 v0, -0x8

    invoke-direct {p0, v0}, Lcom/avira/android/iab/IABRequestService;->a(I)V

    sget-boolean v0, Lcom/avira/android/debug/f;->ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avira/android/iab/p;

    invoke-direct {v1, p0}, Lcom/avira/android/iab/p;-><init>(Lcom/avira/android/iab/IABRequestService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 217
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

.method private d()V
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    invoke-virtual {v0, p0}, Lcom/avira/android/iab/a/b;->a(Lcom/avira/android/iab/a/h;)V

    .line 409
    return-void
.end method

.method static synthetic d(Lcom/avira/android/iab/IABRequestService;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/avira/android/iab/IABRequestService;->a(I)V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 605
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 606
    invoke-static {p0}, Lcom/avira/android/iab/a/k;->d(Landroid/content/Context;)V

    .line 607
    return-void
.end method

.method static synthetic e(Lcom/avira/android/iab/IABRequestService;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/avira/android/iab/IABRequestService;->e()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 617
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 618
    invoke-virtual {p0}, Lcom/avira/android/iab/IABRequestService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/iab/a/b;->a(Landroid/content/Context;)Lcom/avira/android/iab/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    .line 619
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    sget-boolean v1, Lcom/avira/android/debug/f;->ENABLED:Z

    invoke-virtual {v0, v1}, Lcom/avira/android/iab/a/b;->a(Z)V

    .line 621
    return-void
.end method


# virtual methods
.method public final a()Lcom/avira/android/iab/a/b;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    return-object v0
.end method

.method public final a(Lcom/avira/android/iab/a/j;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 643
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 647
    if-nez p1, :cond_1

    .line 650
    invoke-direct {p0, v1}, Lcom/avira/android/iab/IABRequestService;->a(I)V

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    invoke-virtual {p1}, Lcom/avira/android/iab/a/j;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 657
    invoke-direct {p0, v1}, Lcom/avira/android/iab/IABRequestService;->a(I)V

    goto :goto_0

    .line 662
    :cond_2
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    if-nez v0, :cond_3

    .line 664
    invoke-direct {p0, v1}, Lcom/avira/android/iab/IABRequestService;->a(I)V

    goto :goto_0

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    if-eqz v0, :cond_0

    .line 671
    invoke-direct {p0}, Lcom/avira/android/iab/IABRequestService;->c()V

    goto :goto_0
.end method

.method public final a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/a/i;)V
    .locals 2

    .prologue
    .line 725
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 729
    :cond_0
    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/avira/android/iab/IABRequestService;->a(I)V

    .line 760
    :goto_0
    return-void

    .line 733
    :cond_1
    invoke-virtual {p1}, Lcom/avira/android/iab/a/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/avira/android/iab/IABRequestService;->a(I)V

    goto :goto_0

    .line 739
    :cond_2
    invoke-direct {p0, p2}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/a/i;)Lcom/avira/android/iab/models/IABSkuDetails;

    .line 743
    invoke-static {p0}, Lcom/avira/android/iab/a/k;->h(Landroid/content/Context;)V

    .line 746
    :try_start_0
    sget-object v0, Lcom/avira/android/iab/a/k;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/avira/android/iab/a/i;->b(Ljava/lang/String;)Lcom/avira/android/iab/models/IABPurchase;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Lcom/avira/android/iab/models/IABPurchase;->d()I

    move-result v1

    if-nez v1, :cond_3

    .line 749
    const/4 v1, -0x6

    invoke-direct {p0, v1}, Lcom/avira/android/iab/IABRequestService;->a(I)V

    .line 750
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/avira/android/iab/IABRequestService;->b(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 758
    :cond_3
    new-instance v0, Lcom/avira/android/iab/models/IABResponse;

    const-string v1, "readyToPurchase"

    invoke-direct {v0, v1}, Lcom/avira/android/iab/models/IABResponse;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/avira/android/iab/IABRequestService;->a(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public final a(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V
    .locals 2

    .prologue
    .line 706
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Purchase finished: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    .line 714
    const/16 v0, -0x3ed

    invoke-virtual {p1}, Lcom/avira/android/iab/a/j;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 716
    invoke-static {}, Lcom/avira/android/b;->a()Lcom/avira/android/b;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/avira/android/b;->a(I)V

    .line 719
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/avira/android/iab/IABRequestService;->b(Lcom/avira/android/iab/a/j;Lcom/avira/android/iab/models/IABPurchase;)V

    .line 720
    return-void
.end method

.method public final a(Lcom/avira/android/iab/models/IABRequest;)V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callForRequest "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    if-nez p1, :cond_0

    .line 124
    const/4 v0, -0x4

    invoke-direct {p0, v0}, Lcom/avira/android/iab/IABRequestService;->a(I)V

    .line 177
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/avira/android/iab/models/IABRequest;->a()Lcom/avira/android/iab/models/d;

    move-result-object v0

    sget-object v1, Lcom/avira/android/iab/models/d;->CHECK_PRODUCT:Lcom/avira/android/iab/models/d;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    invoke-virtual {v0}, Lcom/avira/android/iab/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    :cond_1
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->a()Lcom/avira/android/iab/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    invoke-virtual {v0}, Lcom/avira/android/iab/a/b;->d()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/iab/IABRequestService;->c:Lcom/avira/android/iab/models/IABRequest;

    invoke-direct {p0}, Lcom/avira/android/iab/IABRequestService;->f()V

    .line 139
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avira/android/iab/f;

    invoke-direct {v1, p0, p1}, Lcom/avira/android/iab/f;-><init>(Lcom/avira/android/iab/IABRequestService;Lcom/avira/android/iab/models/IABRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->e:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 91
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avira/android/iab/IABRequestService;->d:Landroid/os/Handler;

    .line 93
    invoke-direct {p0}, Lcom/avira/android/iab/IABRequestService;->f()V

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 780
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    invoke-virtual {v0}, Lcom/avira/android/iab/a/b;->d()V

    .line 782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/iab/IABRequestService;->b:Lcom/avira/android/iab/a/b;

    .line 783
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 784
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartCommand "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/avira/android/iab/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    :try_start_0
    sget-object v0, Lcom/avira/android/iab/models/IABRequest;->IAB_REQUEST_COMMAND_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/iab/models/IABRequest;

    .line 103
    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/models/IABRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    sget-object v1, Lcom/avira/android/iab/IABRequestService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/avira/android/iab/IABRequestService;->a(I)V

    goto :goto_0
.end method
