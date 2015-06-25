.class final Lcom/mixpanel/android/mpmetrics/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/d;

.field private b:Lcom/mixpanel/android/mpmetrics/o;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/d;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 241
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    .line 242
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/o;

    .line 244
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->c:Ljava/util/Set;

    .line 245
    iget-object v0, p1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/n;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/e;->e:Z

    .line 246
    iget-object v0, p1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/n;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/e;->d:J

    .line 247
    new-instance v0, Lcom/mixpanel/android/mpmetrics/aw;

    iget-object v1, p1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->b(Lcom/mixpanel/android/mpmetrics/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mixpanel/android/mpmetrics/aw;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Lcom/mixpanel/android/mpmetrics/d;Lcom/mixpanel/android/mpmetrics/aw;)Lcom/mixpanel/android/mpmetrics/aw;

    .line 248
    return-void
.end method

.method private a(Lcom/mixpanel/android/mpmetrics/c;)Lcom/mixpanel/android/mpmetrics/ap;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 357
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mixpanel/android/mpmetrics/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-object v2

    .line 361
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 364
    const-string v3, "surveys"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 370
    const/4 v0, 0x0

    move-object v1, v2

    move v3, v0

    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 372
    :try_start_1
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 373
    new-instance v0, Lcom/mixpanel/android/mpmetrics/ap;

    invoke-direct {v0, v5}, Lcom/mixpanel/android/mpmetrics/ap;-><init>(Lorg/json/JSONObject;)V

    .line 374
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/e;->c:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ap;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/mixpanel/android/mpmetrics/aq; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    if-nez v5, :cond_2

    .line 370
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 366
    :catch_0
    move-exception v1

    const-string v1, "MixpanelAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Mixpanel endpoint returned invalid JSON "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received a strange response from surveys service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v2

    .line 388
    goto :goto_2

    .line 385
    :catch_2
    move-exception v0

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received a strange response from surveys service: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v2

    .line 387
    goto :goto_2

    :cond_1
    move-object v2, v1

    .line 391
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 398
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    const-string v1, "utf-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "?version=1&lib=android&token="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&distinct_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/n;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/n;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->b()Lcom/mixpanel/android/mpmetrics/aj;

    move-result-object v2

    .line 412
    invoke-virtual {v2, v1, v0}, Lcom/mixpanel/android/mpmetrics/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/ak;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ak;->a()Lcom/mixpanel/android/mpmetrics/al;

    move-result-object v1

    sget-object v2, Lcom/mixpanel/android/mpmetrics/al;->SUCCEEDED:Lcom/mixpanel/android/mpmetrics/al;

    if-eq v1, v2, :cond_0

    .line 415
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Mixpanel library requires utf-8 string encoding to be available"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 417
    :cond_0
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ak;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/mixpanel/android/mpmetrics/b;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 529
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 530
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/b;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 531
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "mp_lib"

    const-string v4, "android"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "$lib_version"

    const-string v4, "4.0.1-RC1"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "$os"

    const-string v4, "Android"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "$os_version"

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "UNKNOWN"

    :goto_0
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "$manufacturer"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "UNKNOWN"

    :goto_1
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "$brand"

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "UNKNOWN"

    :goto_2
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "$model"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "UNKNOWN"

    :goto_3
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/aw;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v4, "$screen_dpi"

    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "$screen_height"

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "$screen_width"

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/aw;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "$app_version"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/aw;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "$has_nfc"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/aw;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v4, "$has_telephone"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/aw;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "$carrier"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/aw;->f()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v4, "$wifi"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/aw;

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/aw;->g()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v4, "$bluetooth_enabled"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/aw;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v4, "$bluetooth_version"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    :cond_6
    const-string v0, "token"

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    if-eqz v2, :cond_b

    .line 534
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 535
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 536
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 531
    :cond_7
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto/16 :goto_3

    .line 539
    :cond_b
    const-string v0, "event"

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 540
    const-string v0, "properties"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    return-object v1
.end method

.method private a(Lcom/mixpanel/android/mpmetrics/o;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    const-string v1, "Sending records to Mixpanel"

    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 438
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/e;->e:Z

    if-eqz v0, :cond_0

    .line 439
    sget-object v0, Lcom/mixpanel/android/mpmetrics/q;->EVENTS:Lcom/mixpanel/android/mpmetrics/q;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/o;Lcom/mixpanel/android/mpmetrics/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    sget-object v0, Lcom/mixpanel/android/mpmetrics/q;->PEOPLE:Lcom/mixpanel/android/mpmetrics/q;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/n;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/o;Lcom/mixpanel/android/mpmetrics/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :goto_0
    return-void

    .line 442
    :cond_0
    sget-object v0, Lcom/mixpanel/android/mpmetrics/q;->EVENTS:Lcom/mixpanel/android/mpmetrics/q;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/n;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/n;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/o;Lcom/mixpanel/android/mpmetrics/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object v0, Lcom/mixpanel/android/mpmetrics/q;->PEOPLE:Lcom/mixpanel/android/mpmetrics/q;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/n;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/n;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/o;Lcom/mixpanel/android/mpmetrics/q;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    const-string v1, "Can\'t send data to mixpanel, because the device is not connected to the internet"

    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/mixpanel/android/mpmetrics/o;Lcom/mixpanel/android/mpmetrics/q;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 451
    invoke-virtual {p1, p2}, Lcom/mixpanel/android/mpmetrics/o;->a(Lcom/mixpanel/android/mpmetrics/q;)[Ljava/lang/String;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_1

    .line 454
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 455
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 456
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->b()Lcom/mixpanel/android/mpmetrics/aj;

    move-result-object v2

    .line 457
    invoke-virtual {v2, v0, p3, p4}, Lcom/mixpanel/android/mpmetrics/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/ak;

    move-result-object v2

    .line 458
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/ak;->a()Lcom/mixpanel/android/mpmetrics/al;

    move-result-object v2

    .line 460
    sget-object v3, Lcom/mixpanel/android/mpmetrics/al;->SUCCEEDED:Lcom/mixpanel/android/mpmetrics/al;

    if-ne v2, v3, :cond_2

    .line 461
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Posted to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v2, v2, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sent Message\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 472
    :cond_0
    invoke-virtual {p1, v1, p2}, Lcom/mixpanel/android/mpmetrics/o;->a(Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/q;)V

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 465
    :cond_2
    sget-object v0, Lcom/mixpanel/android/mpmetrics/al;->FAILED_RECOVERABLE:Lcom/mixpanel/android/mpmetrics/al;

    if-ne v2, v0, :cond_0

    .line 467
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/mpmetrics/e;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->d()I

    move-result v0

    iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/e;->d:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/mixpanel/android/mpmetrics/e;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/a;->b(Lcom/mixpanel/android/mpmetrics/a;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 425
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 432
    :goto_0
    return v0

    .line 426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 252
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/o;

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/a;->b(Lcom/mixpanel/android/mpmetrics/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/a;->b(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/o;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/o;

    .line 254
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/n;->c()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    sget-object v1, Lcom/mixpanel/android/mpmetrics/q;->EVENTS:Lcom/mixpanel/android/mpmetrics/q;

    invoke-virtual {v0, v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/o;->a(JLcom/mixpanel/android/mpmetrics/q;)V

    .line 255
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/o;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/n;->c()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    sget-object v1, Lcom/mixpanel/android/mpmetrics/q;->PEOPLE:Lcom/mixpanel/android/mpmetrics/q;

    invoke-virtual {v0, v2, v3, v1}, Lcom/mixpanel/android/mpmetrics/o;->a(JLcom/mixpanel/android/mpmetrics/q;)V

    .line 259
    :cond_0
    const/4 v2, -0x1

    .line 261
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->c()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 262
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 263
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Changing flush interval to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/e;->d:J

    .line 265
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/mpmetrics/e;->removeMessages(I)V

    move v0, v2

    .line 323
    :goto_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/n;->a()I

    move-result v1

    if-lt v0, v1, :cond_9

    .line 324
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    const-string v1, "Flushing queue due to bulk upload limit"

    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Lcom/mixpanel/android/mpmetrics/d;)V

    .line 326
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/o;

    invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/o;)V

    .line 350
    :cond_1
    :goto_1
    return-void

    .line 267
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->e()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 268
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 269
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting fallback to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/e;->e:Z

    move v0, v2

    .line 271
    goto :goto_0

    .line 272
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->f()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 273
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 275
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    const-string v2, "Queuing people record for sending later"

    invoke-static {v1, v2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/o;

    sget-object v2, Lcom/mixpanel/android/mpmetrics/q;->PEOPLE:Lcom/mixpanel/android/mpmetrics/q;

    invoke-virtual {v1, v0, v2}, Lcom/mixpanel/android/mpmetrics/o;->a(Lorg/json/JSONObject;Lcom/mixpanel/android/mpmetrics/q;)I

    move-result v0

    goto/16 :goto_0

    .line 280
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->g()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 281
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mixpanel/android/mpmetrics/b;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    :try_start_1
    invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/b;)Lorg/json/JSONObject;

    move-result-object v1

    .line 284
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    const-string v4, "Queuing event for sending later"

    invoke-static {v3, v4}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v3, v3, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/o;

    sget-object v4, Lcom/mixpanel/android/mpmetrics/q;->EVENTS:Lcom/mixpanel/android/mpmetrics/q;

    invoke-virtual {v3, v1, v4}, Lcom/mixpanel/android/mpmetrics/o;->a(Lorg/json/JSONObject;Lcom/mixpanel/android/mpmetrics/q;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto/16 :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    :try_start_2
    const-string v3, "MixpanelAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception tracking event "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    .line 290
    goto/16 :goto_0

    .line 291
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->d()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 292
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    const-string v1, "Flushing queue due to scheduled or forced flush"

    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->a(Lcom/mixpanel/android/mpmetrics/d;)V

    .line 294
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/o;

    invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/o;)V

    move v0, v2

    goto/16 :goto_0

    .line 296
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->h()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 297
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v0, v0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    const-string v1, "Checking Mixpanel for available surveys"

    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 298
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mixpanel/android/mpmetrics/c;

    .line 299
    invoke-direct {p0, v0}, Lcom/mixpanel/android/mpmetrics/e;->a(Lcom/mixpanel/android/mpmetrics/c;)Lcom/mixpanel/android/mpmetrics/ap;

    move-result-object v1

    .line 303
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->i()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/mixpanel/android/mpmetrics/f;

    invoke-direct {v4, p0, v0, v1}, Lcom/mixpanel/android/mpmetrics/f;-><init>(Lcom/mixpanel/android/mpmetrics/e;Lcom/mixpanel/android/mpmetrics/c;Lcom/mixpanel/android/mpmetrics/ap;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move v0, v2

    .line 309
    goto/16 :goto_0

    .line 310
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->j()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 311
    const-string v0, "MixpanelAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Worker received a hard kill. Dumping all events and force-killing. Thread id "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->b(Lcom/mixpanel/android/mpmetrics/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 313
    :try_start_3
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->b:Lcom/mixpanel/android/mpmetrics/o;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/o;->a()V

    .line 314
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/d;->c(Lcom/mixpanel/android/mpmetrics/d;)Landroid/os/Handler;

    .line 315
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 316
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 339
    :catch_1
    move-exception v0

    .line 340
    const-string v1, "MixpanelAPI"

    const-string v2, "Worker threw an unhandled exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/d;->b(Lcom/mixpanel/android/mpmetrics/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 342
    :try_start_5
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/d;->c(Lcom/mixpanel/android/mpmetrics/d;)Landroid/os/Handler;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 344
    :try_start_6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 345
    const-string v2, "MixpanelAPI"

    const-string v3, "Mixpanel will not process any more analytics messages"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 349
    :goto_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 318
    :cond_8
    :try_start_8
    const-string v0, "MixpanelAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected message received by Mixpanel worker: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto/16 :goto_0

    .line 327
    :cond_9
    if-lez v0, :cond_1

    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/mpmetrics/e;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/e;->a:Lcom/mixpanel/android/mpmetrics/d;

    iget-object v1, v1, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Queue depth "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - Adding flush in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/e;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V

    .line 335
    iget-wide v0, p0, Lcom/mixpanel/android/mpmetrics/e;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 336
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/a;->d()I

    move-result v0

    iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/e;->d:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/mixpanel/android/mpmetrics/e;->sendEmptyMessageDelayed(IJ)Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 346
    :catch_2
    move-exception v0

    .line 347
    :try_start_9
    const-string v2, "MixpanelAPI"

    const-string v3, "Could not halt looper"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2
.end method
