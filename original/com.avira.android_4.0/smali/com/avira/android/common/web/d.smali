.class public final Lcom/avira/android/common/web/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTO_LOGIN:Ljava/lang/String; = "loginWithToken"

.field private static final DEVICE_INFO:Ljava/lang/String; = "deviceInfo"

.field private static final LOCATE_STATUS:Ljava/lang/String; = "locateStatus"

.field private static final LOGIN:Ljava/lang/String; = "auth"

.field private static final REGISTER:Ljava/lang/String; = "register"

.field private static final TAG:Ljava/lang/String; = "HttpServerCommunication"

.field private static final UPDATE_GCM_REG_ID:Ljava/lang/String; = "updateRegKey"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const v1, 0x7f08011e

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/common/web/d;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcom/avira/android/common/web/d;
    .locals 2

    .prologue
    .line 72
    const-class v1, Lcom/avira/android/common/web/d;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/avira/android/common/web/d;

    invoke-direct {v0}, Lcom/avira/android/common/web/d;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 133
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 134
    invoke-static {}, Lcom/avira/android/device/a;->d()Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/avira/android/device/a;->e()Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/avira/android/device/a;->g()Ljava/lang/String;

    .line 147
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 155
    const-string v2, "uid"

    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v2, "tokenType"

    const-string v3, "ckt"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-static {}, Lcom/avira/android/device/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 158
    const-string v3, "unknown"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    const-string v3, "uidType"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :cond_0
    const-string v2, "serial"

    invoke-static {}, Lcom/avira/android/device/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v2, "uid"

    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v2, "deviceId"

    const-string v3, "settingRegisteredServerDeviceId"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v2, "oeDeviceId"

    const-string v3, "settingRegisteredServerOEDeviceId"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v2, "language"

    invoke-static {}, Lcom/avira/android/device/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v1, "info"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-object v0

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Lcom/avira/android/common/web/d;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/avira/applock/common/web/a;)V
    .locals 9

    .prologue
    .line 388
    invoke-static {}, Lcom/avira/android/device/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 389
    if-nez v0, :cond_0

    .line 391
    const-string v0, "unknown"

    .line 394
    :cond_0
    invoke-static {}, Lcom/avira/android/device/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 395
    if-nez v1, :cond_1

    .line 397
    const-string v1, "unknown"

    .line 400
    :cond_1
    invoke-static {}, Lcom/avira/android/device/a;->g()Ljava/lang/String;

    move-result-object v2

    .line 401
    if-nez v2, :cond_2

    .line 403
    const-string v2, ""

    .line 406
    :cond_2
    new-instance v3, Lcom/avira/android/sauth/api/b;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v4

    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/avira/android/sauth/api/b;-><init>(Landroid/content/Context;Lcom/avira/android/database/f;)V

    .line 409
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 412
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 413
    const-string v6, "uid"

    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 414
    const-string v6, "token"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    const-string v6, "tokenType"

    const-string v7, "ckt"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    invoke-static {}, Lcom/avira/android/device/a;->b()Ljava/lang/String;

    move-result-object v6

    .line 417
    const-string v7, "unknown"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 419
    const-string v7, "uidType"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    :cond_3
    const-string v6, "serial"

    invoke-static {}, Lcom/avira/android/device/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 424
    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/avira/android/common/gcm/b;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 426
    const-string v7, "registrationId"

    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/avira/android/common/gcm/b;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    :cond_4
    const-string v7, "deviceModel"

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    const-string v1, "deviceManufacturer"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    const-string v0, "phoneNumber"

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    const-string v0, "versionNo"

    invoke-static {}, Lcom/avira/android/device/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string v0, "osVersion"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    const-string v0, "locale"

    invoke-virtual {v3}, Lcom/avira/android/sauth/api/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    const-string v0, "platform"

    invoke-virtual {v3}, Lcom/avira/android/sauth/api/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    const-string v0, "ssid"

    invoke-virtual {v3}, Lcom/avira/android/sauth/api/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 437
    const-string v0, "language"

    invoke-static {}, Lcom/avira/android/device/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    const-string v0, "id"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const-string v0, "info"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/applock/common/web/b;->a(Landroid/content/Context;)Lcom/avira/applock/common/web/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avira/android/common/web/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "loginWithToken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/avira/android/common/web/g;

    invoke-direct {v2, p0, p2}, Lcom/avira/android/common/web/g;-><init>(Lcom/avira/android/common/web/d;Lcom/avira/applock/common/web/a;)V

    invoke-virtual {v0, v4, v1, v2}, Lcom/avira/applock/common/web/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;)V

    .line 544
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 443
    const-string v1, "HttpServerCommunication"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/applock/common/web/a;Z)V
    .locals 9

    .prologue
    .line 548
    invoke-static {}, Lcom/avira/android/device/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 549
    if-nez v0, :cond_0

    .line 551
    const-string v0, "unknown"

    .line 554
    :cond_0
    invoke-static {}, Lcom/avira/android/device/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 555
    if-nez v1, :cond_1

    .line 557
    const-string v1, "unknown"

    .line 560
    :cond_1
    invoke-static {}, Lcom/avira/android/device/a;->g()Ljava/lang/String;

    move-result-object v2

    .line 561
    if-nez v2, :cond_2

    .line 563
    const-string v2, ""

    .line 566
    :cond_2
    new-instance v3, Lcom/avira/android/sauth/api/b;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v4

    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/avira/android/sauth/api/b;-><init>(Landroid/content/Context;Lcom/avira/android/database/f;)V

    .line 569
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 573
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 574
    const-string v6, "uid"

    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    invoke-virtual {v3}, Lcom/avira/android/sauth/api/b;->f()Ljava/lang/String;

    move-result-object v6

    .line 577
    invoke-virtual {v3}, Lcom/avira/android/sauth/api/b;->e()Ljava/lang/String;

    move-result-object v7

    .line 578
    if-eqz v6, :cond_3

    .line 580
    const-string v8, "sauthtoken"

    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    :cond_3
    if-eqz v7, :cond_4

    .line 584
    const-string v6, "sauthid"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    :cond_4
    const-string v6, "email"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 588
    invoke-static {}, Lcom/avira/android/device/a;->b()Ljava/lang/String;

    move-result-object v6

    .line 589
    const-string v7, "unknown"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 591
    const-string v7, "uidType"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    :cond_5
    const-string v6, "serial"

    invoke-static {}, Lcom/avira/android/device/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 594
    const-string v6, "password"

    invoke-static {}, Lcom/avira/android/e/b;->a()Lcom/avira/android/e/c;

    move-result-object v7

    invoke-interface {v7, p2}, Lcom/avira/android/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 598
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 599
    const-string v7, "versionNo"

    invoke-static {}, Lcom/avira/android/device/a;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 600
    const-string v7, "platform"

    invoke-virtual {v3}, Lcom/avira/android/sauth/api/b;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/avira/android/common/gcm/b;->c()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 603
    const-string v7, "registrationId"

    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/avira/android/common/gcm/b;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    :cond_6
    const-string v7, "phoneNumber"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 606
    const-string v2, "ssid"

    invoke-virtual {v3}, Lcom/avira/android/sauth/api/b;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 607
    const-string v2, "deviceModel"

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 608
    const-string v1, "locale"

    invoke-virtual {v3}, Lcom/avira/android/sauth/api/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 609
    const-string v1, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 610
    const-string v1, "deviceManufacturer"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 612
    const-string v0, "language"

    invoke-static {}, Lcom/avira/android/device/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    const-string v0, "id"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    const-string v0, "withLogin"

    invoke-virtual {v4, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 615
    const-string v0, "info"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    if-eqz p4, :cond_7

    .line 625
    const-string v0, "auth"

    .line 632
    :goto_1
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-static {v1}, Lcom/avira/applock/common/web/b;->a(Landroid/content/Context;)Lcom/avira/applock/common/web/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avira/android/common/web/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0, p3}, Lcom/avira/applock/common/web/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;)V

    .line 634
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 619
    const-string v1, "HttpServerCommunication"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 629
    :cond_7
    const-string v0, "register"

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/a/b/a;Lcom/avira/applock/common/web/a;)V
    .locals 13

    .prologue
    .line 193
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/plus/a/b/a;->n()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/plus/a/b/a;->i()Ljava/lang/String;

    move-result-object v5

    .line 195
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/plus/a/b/a;->p()Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/plus/a/b/a;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/plus/a/b/a;->s()Ljava/lang/String;

    move-result-object v8

    .line 199
    invoke-static {}, Lcom/avira/android/device/a;->d()Ljava/lang/String;

    move-result-object v1

    .line 200
    if-nez v1, :cond_0

    .line 202
    const-string v1, "unknown"

    .line 205
    :cond_0
    invoke-static {}, Lcom/avira/android/device/a;->e()Ljava/lang/String;

    move-result-object v2

    .line 206
    if-nez v2, :cond_1

    .line 208
    const-string v2, "unknown"

    .line 211
    :cond_1
    invoke-static {}, Lcom/avira/android/device/a;->g()Ljava/lang/String;

    move-result-object v3

    .line 212
    if-nez v3, :cond_2

    .line 214
    const-string v3, ""

    .line 217
    :cond_2
    new-instance v9, Lcom/avira/android/sauth/api/b;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v10

    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/avira/android/sauth/api/b;-><init>(Landroid/content/Context;Lcom/avira/android/database/f;)V

    .line 220
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 224
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 225
    const-string v12, "birthDate"

    invoke-virtual {v11, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v5, "firstName"

    invoke-virtual {v11, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v5, "lastName"

    invoke-virtual {v11, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v4, "language"

    invoke-virtual {v11, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v4, "salutation"

    invoke-virtual {v11, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 232
    const-string v5, "uid"

    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    invoke-static {}, Lcom/avira/android/device/a;->b()Ljava/lang/String;

    move-result-object v5

    .line 234
    const-string v7, "unknown"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 236
    const-string v7, "uidType"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    :cond_3
    const-string v5, "serial"

    invoke-static {}, Lcom/avira/android/device/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 241
    const-string v7, "registrationId"

    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/avira/android/common/gcm/b;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v7, "deviceModel"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v2, "deviceManufacturer"

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v1, "phoneNumber"

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v1, "versionNo"

    invoke-static {}, Lcom/avira/android/device/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v1, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v1, "locale"

    invoke-virtual {v9}, Lcom/avira/android/sauth/api/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v1, "platform"

    invoke-virtual {v9}, Lcom/avira/android/sauth/api/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v1, "ssid"

    invoke-virtual {v9}, Lcom/avira/android/sauth/api/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v1, "language"

    invoke-static {}, Lcom/avira/android/device/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v1, "id"

    invoke-virtual {v10, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v1, "info"

    invoke-virtual {v10, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v1, "email"

    invoke-virtual {v10, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v1, "gpi"

    invoke-virtual {v10, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v1, "gpt"

    invoke-virtual {v10, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string v1, "details"

    invoke-virtual {v10, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Json to send "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-static {v1}, Lcom/avira/applock/common/web/b;->a(Landroid/content/Context;)Lcom/avira/applock/common/web/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avira/android/common/web/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "loginWithGoogle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/avira/android/common/web/e;

    move-object/from16 v0, p4

    invoke-direct {v3, p0, v0}, Lcom/avira/android/common/web/e;-><init>(Lcom/avira/android/common/web/d;Lcom/avira/applock/common/web/a;)V

    invoke-virtual {v1, v10, v2, v3}, Lcom/avira/applock/common/web/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;)V

    .line 376
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lcom/avira/applock/common/web/a;->a(Lcom/avira/applock/common/web/HttpErrorResponse;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 698
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 699
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 700
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 704
    :try_start_0
    const-string v3, "language"

    invoke-static {}, Lcom/avira/android/device/a;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 708
    const-string v3, "commandId"

    invoke-virtual {v0, v3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 710
    :cond_0
    const-string v3, "uid"

    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    const-string v3, "deviceId"

    const-string v4, "settingRegisteredServerDeviceId"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 713
    const-string v3, "oeDeviceId"

    const-string v4, "settingRegisteredServerOEDeviceId"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 716
    const-string v3, "statusCode"

    const-string v4, "OK"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 717
    const-string v3, "latitude"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 718
    const-string v3, "longitude"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 719
    const-string v3, "accuracy"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    const-string v3, "locatorType"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    const-string v3, "id"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    const-string v0, "info"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/applock/common/web/b;->a(Landroid/content/Context;)Lcom/avira/applock/common/web/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avira/android/common/web/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "locateStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/avira/android/common/web/j;

    invoke-direct {v3, p0}, Lcom/avira/android/common/web/j;-><init>(Lcom/avira/android/common/web/d;)V

    const/16 v4, 0xbb8

    const/4 v5, 0x3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual/range {v0 .. v6}, Lcom/avira/applock/common/web/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;IIF)V

    .line 746
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;)V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/applock/common/web/b;->a(Landroid/content/Context;)Lcom/avira/applock/common/web/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avira/android/common/web/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/avira/applock/common/web/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;)V

    .line 89
    return-void
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;)V
    .locals 7

    .prologue
    .line 107
    invoke-static {p1}, Lcom/avira/android/common/web/d;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 108
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/applock/common/web/b;->a(Landroid/content/Context;)Lcom/avira/applock/common/web/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avira/android/common/web/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9c4

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/avira/applock/common/web/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;IIF)V

    .line 110
    return-void
.end method

.method public final c()V
    .locals 7

    .prologue
    .line 641
    invoke-static {}, Lcom/avira/android/device/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 642
    if-nez v0, :cond_0

    .line 644
    const-string v0, "unknown"

    .line 647
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 650
    :try_start_0
    const-string v2, "language"

    invoke-static {}, Lcom/avira/android/device/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 652
    const-string v3, "uid"

    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    const-string v3, "deviceId"

    const-string v4, "settingRegisteredServerDeviceId"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    const-string v3, "oeDeviceId"

    const-string v4, "settingRegisteredServerOEDeviceId"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 659
    const-string v4, "phoneNumber"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    const-string v0, "mobileNetworkCode"

    invoke-static {}, Lcom/avira/android/device/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    const-string v0, "mobileCountryCode"

    invoke-static {}, Lcom/avira/android/device/a;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    const-string v0, "statusCode"

    const-string v4, "OK"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 663
    const-string v0, "versionNo"

    invoke-static {}, Lcom/avira/android/device/a;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    const-string v0, "devAdmin"

    invoke-static {}, Lcom/avira/android/device/a;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 665
    const-string v0, "osVersion"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 666
    const-string v0, "storageFreeSpace"

    invoke-static {}, Lcom/avira/android/utilities/ae;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 668
    const-string v0, "id"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    const-string v0, "info"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/applock/common/web/b;->a(Landroid/content/Context;)Lcom/avira/applock/common/web/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avira/android/common/web/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deviceInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/avira/android/common/web/i;

    invoke-direct {v3, p0}, Lcom/avira/android/common/web/i;-><init>(Lcom/avira/android/common/web/d;)V

    const/16 v4, 0xbb8

    const/4 v5, 0x3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual/range {v0 .. v6}, Lcom/avira/applock/common/web/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;IIF)V

    .line 692
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 673
    const-string v2, "HttpServerCommunication"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final d()V
    .locals 7

    .prologue
    .line 751
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 752
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 753
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 757
    :try_start_0
    const-string v3, "language"

    invoke-static {}, Lcom/avira/android/device/a;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    const-string v3, "uid"

    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 760
    const-string v3, "deviceId"

    const-string v4, "settingRegisteredServerDeviceId"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    const-string v3, "registrationId"

    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avira/android/common/gcm/b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 764
    const-string v3, "id"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    const-string v0, "info"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :goto_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/applock/common/web/b;->a(Landroid/content/Context;)Lcom/avira/applock/common/web/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avira/android/common/web/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "updateRegKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/avira/android/common/web/k;

    invoke-direct {v3, p0}, Lcom/avira/android/common/web/k;-><init>(Lcom/avira/android/common/web/d;)V

    const/16 v4, 0xbb8

    const/4 v5, 0x3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual/range {v0 .. v6}, Lcom/avira/applock/common/web/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;IIF)V

    .line 788
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
