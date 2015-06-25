.class final Lcom/avira/android/common/web/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/web/a;


# instance fields
.field final synthetic a:Lcom/avira/applock/common/web/a;

.field final synthetic b:Lcom/avira/android/common/web/d;


# direct methods
.method constructor <init>(Lcom/avira/android/common/web/d;Lcom/avira/applock/common/web/a;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/avira/android/common/web/g;->b:Lcom/avira/android/common/web/d;

    iput-object p2, p0, Lcom/avira/android/common/web/g;->a:Lcom/avira/applock/common/web/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/applock/common/web/HttpErrorResponse;)V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/avira/android/common/web/g;->a:Lcom/avira/applock/common/web/a;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/avira/android/common/web/g;->a:Lcom/avira/applock/common/web/a;

    invoke-interface {v0, p1}, Lcom/avira/applock/common/web/a;->a(Lcom/avira/applock/common/web/HttpErrorResponse;)V

    .line 542
    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 11

    .prologue
    .line 455
    :try_start_0
    const-string v0, "deviceId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    const-string v1, "oeDeviceId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    const-string v2, "subscription"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 459
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 460
    const-string v4, "enabled"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 462
    const-string v4, "user"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 463
    const-string v5, "firstName"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 464
    const-string v6, "lastName"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 465
    const-string v7, "imageUrl"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 466
    const-string v8, "email"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 468
    const-string v8, "statusCode"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 469
    const-string v9, "status"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 472
    const-string v10, "premium"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 474
    invoke-static {v2}, Lcom/avira/android/premium/b;->a(Z)Z

    .line 477
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    const-string v2, "settingRegisteredServerDeviceId"

    invoke-static {v2, v0}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->c()V

    .line 484
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 486
    const-string v0, "settingRegisteredServerOEDeviceId"

    invoke-static {v0, v1}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->c()V

    .line 491
    :cond_2
    new-instance v0, Lcom/avira/android/common/web/WebResult;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v9, v1}, Lcom/avira/android/common/web/WebResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 492
    new-instance v1, Lcom/avira/android/userprofile/s;

    invoke-direct {v1}, Lcom/avira/android/userprofile/s;-><init>()V

    invoke-virtual {v1, v4}, Lcom/avira/android/userprofile/s;->a(Ljava/lang/String;)Z

    .line 495
    new-instance v1, Lcom/avira/android/userprofile/x;

    invoke-direct {v1}, Lcom/avira/android/userprofile/x;-><init>()V

    .line 496
    invoke-virtual {v1, v5, v6}, Lcom/avira/android/userprofile/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 499
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 501
    new-instance v1, Lcom/avira/android/userprofile/h;

    invoke-direct {v1, v7}, Lcom/avira/android/userprofile/h;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-static {v1}, Lcom/avira/android/utilities/aj;->a(Ljava/lang/Runnable;)V

    .line 506
    :cond_3
    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v1

    invoke-static {v1}, Lcom/avira/android/common/web/q;->a(I)Lcom/avira/android/common/web/r;

    move-result-object v1

    .line 507
    sget-object v2, Lcom/avira/android/common/web/r;->Ok:Lcom/avira/android/common/web/r;

    if-ne v1, v2, :cond_4

    .line 509
    new-instance v1, Lcom/avira/android/common/web/h;

    invoke-direct {v1, p0}, Lcom/avira/android/common/web/h;-><init>(Lcom/avira/android/common/web/g;)V

    invoke-virtual {v1}, Lcom/avira/android/common/web/h;->start()V

    .line 521
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 522
    const-string v2, "com.avira.android.ACTION_APPLICATION_REGISTRATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    const-string v2, "registration_result_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 524
    invoke-static {v1}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 526
    iget-object v0, p0, Lcom/avira/android/common/web/g;->a:Lcom/avira/applock/common/web/a;

    if-eqz v0, :cond_5

    .line 527
    iget-object v0, p0, Lcom/avira/android/common/web/g;->a:Lcom/avira/applock/common/web/a;

    invoke-interface {v0, p1}, Lcom/avira/applock/common/web/a;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_5
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 531
    const-string v1, "HttpServerCommunication"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
