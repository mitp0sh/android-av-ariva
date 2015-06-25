.class final Lcom/facebook/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final EVENT_EXTRAS_DEFAULT_AUDIENCE:Ljava/lang/String; = "default_audience"

.field static final EVENT_EXTRAS_IS_LEGACY:Ljava/lang/String; = "is_legacy"

.field static final EVENT_EXTRAS_LOGIN_BEHAVIOR:Ljava/lang/String; = "login_behavior"

.field static final EVENT_EXTRAS_MISSING_INTERNET_PERMISSION:Ljava/lang/String; = "no_internet_permission"

.field static final EVENT_EXTRAS_NEW_PERMISSIONS:Ljava/lang/String; = "new_permissions"

.field static final EVENT_EXTRAS_NOT_TRIED:Ljava/lang/String; = "not_tried"

.field static final EVENT_EXTRAS_PERMISSIONS:Ljava/lang/String; = "permissions"

.field static final EVENT_EXTRAS_REQUEST_CODE:Ljava/lang/String; = "request_code"

.field static final EVENT_EXTRAS_TRY_LEGACY:Ljava/lang/String; = "try_legacy"

.field static final EVENT_EXTRAS_TRY_LOGIN_ACTIVITY:Ljava/lang/String; = "try_login_activity"

.field static final EVENT_NAME_LOGIN_COMPLETE:Ljava/lang/String; = "fb_mobile_login_complete"

.field private static final EVENT_NAME_LOGIN_METHOD_COMPLETE:Ljava/lang/String; = "fb_mobile_login_method_complete"

.field private static final EVENT_NAME_LOGIN_METHOD_START:Ljava/lang/String; = "fb_mobile_login_method_start"

.field static final EVENT_NAME_LOGIN_START:Ljava/lang/String; = "fb_mobile_login_start"

.field static final EVENT_PARAM_AUTH_LOGGER_ID:Ljava/lang/String; = "0_auth_logger_id"

.field static final EVENT_PARAM_ERROR_CODE:Ljava/lang/String; = "4_error_code"

.field static final EVENT_PARAM_ERROR_MESSAGE:Ljava/lang/String; = "5_error_message"

.field static final EVENT_PARAM_EXTRAS:Ljava/lang/String; = "6_extras"

.field static final EVENT_PARAM_LOGIN_RESULT:Ljava/lang/String; = "2_result"

.field static final EVENT_PARAM_METHOD:Ljava/lang/String; = "3_method"

.field private static final EVENT_PARAM_METHOD_RESULT_SKIPPED:Ljava/lang/String; = "skipped"

.field static final EVENT_PARAM_TIMESTAMP:Ljava/lang/String; = "1_timestamp_ms"

.field private static final TAG:Ljava/lang/String; = "Facebook-AuthorizationClient"

.field private static final WEB_VIEW_AUTH_HANDLER_STORE:Ljava/lang/String; = "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

.field private static final WEB_VIEW_AUTH_HANDLER_TOKEN_KEY:Ljava/lang/String; = "TOKEN"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/x;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/facebook/x;

.field transient c:Landroid/content/Context;

.field transient d:Lcom/facebook/ah;

.field transient e:Lcom/facebook/ae;

.field transient f:Lcom/facebook/z;

.field transient g:Z

.field h:Lcom/facebook/y;

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient j:Lcom/facebook/c;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    return-void
.end method

.method static a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 517
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 518
    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 519
    const-string v1, "0_auth_logger_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v1, "3_method"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v1, "2_result"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v1, "5_error_message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v1, "4_error_code"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v1, "6_extras"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-object v0
.end method

.method static synthetic a(Lcom/facebook/q;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/q;->f:Lcom/facebook/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/q;->f:Lcom/facebook/z;

    invoke-interface {v0}, Lcom/facebook/z;->b()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/q;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/c;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fb_web_login_e2e"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fb_web_login_switchback_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fb_dialogs_web_login_dialog_complete"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    if-nez v0, :cond_1

    .line 489
    const-string v0, ""

    invoke-static {v0}, Lcom/facebook/q;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 490
    const-string v1, "2_result"

    sget-object v2, Lcom/facebook/ag;->ERROR:Lcom/facebook/ag;

    invoke-virtual {v2}, Lcom/facebook/ag;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v1, "5_error_message"

    const-string v2, "Unexpected call to logAuthorizationMethodComplete with null pendingRequest."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_0
    :goto_0
    const-string v1, "3_method"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 512
    invoke-direct {p0}, Lcom/facebook/q;->g()Lcom/facebook/c;

    move-result-object v1

    const-string v2, "fb_mobile_login_method_complete"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 513
    return-void

    .line 494
    :cond_1
    iget-object v0, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-virtual {v0}, Lcom/facebook/y;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/q;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 495
    if-eqz p2, :cond_2

    .line 496
    const-string v1, "2_result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_2
    if-eqz p3, :cond_3

    .line 499
    const-string v1, "5_error_message"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_3
    if-eqz p4, :cond_4

    .line 502
    const-string v1, "4_error_code"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_4
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 506
    const-string v2, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/facebook/q;->i:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/q;->i:Ljava/util/Map;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/facebook/q;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/q;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/facebook/q;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/facebook/Request;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 440
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 441
    const-string v0, "fields"

    const-string v2, "id"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v0, "access_token"

    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me"

    sget-object v4, Lcom/facebook/au;->GET:Lcom/facebook/au;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;Lcom/facebook/bk;)V

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/q;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/facebook/q;->h()V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/facebook/q;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 203
    iget-boolean v1, p0, Lcom/facebook/q;->g:Z

    if-eqz v1, :cond_0

    .line 217
    :goto_0
    return v0

    .line 207
    :cond_0
    const-string v1, "android.permission.INTERNET"

    iget-object v2, p0, Lcom/facebook/q;->c:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 208
    if-eqz v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/facebook/q;->c:Landroid/content/Context;

    sget v1, Lcom/facebook/a/g;->com_facebook_internet_permission_error_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/facebook/q;->c:Landroid/content/Context;

    sget v2, Lcom/facebook/a/g;->com_facebook_internet_permission_error_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-static {v2, v0, v1}, Lcom/facebook/af;->a(Lcom/facebook/y;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/af;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/q;->b(Lcom/facebook/af;)V

    .line 213
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_1
    iput-boolean v0, p0, Lcom/facebook/q;->g:Z

    goto :goto_0
.end method

.method private f()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 257
    iget-object v1, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    invoke-virtual {v1}, Lcom/facebook/x;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/facebook/q;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const-string v1, "no_internet_permission"

    const-string v2, "1"

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/q;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 271
    :goto_0
    return v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    iget-object v1, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-virtual {v0, v1}, Lcom/facebook/x;->a(Lcom/facebook/y;)Z

    move-result v0

    .line 264
    if-eqz v0, :cond_1

    .line 265
    iget-object v1, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    invoke-virtual {v1}, Lcom/facebook/x;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-virtual {v2}, Lcom/facebook/y;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/q;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "3_method"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/facebook/q;->g()Lcom/facebook/c;

    move-result-object v1

    const-string v3, "fb_mobile_login_method_start"

    invoke-virtual {v1, v3, v2}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 268
    :cond_1
    const-string v1, "not_tried"

    iget-object v2, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    invoke-virtual {v2}, Lcom/facebook/x;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/q;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private g()Lcom/facebook/c;
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/facebook/q;->j:Lcom/facebook/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/q;->j:Lcom/facebook/c;

    invoke-virtual {v0}, Lcom/facebook/c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-virtual {v1}, Lcom/facebook/y;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/facebook/q;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-virtual {v1}, Lcom/facebook/y;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/q;->j:Lcom/facebook/c;

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/facebook/q;->j:Lcom/facebook/c;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/facebook/q;->f:Lcom/facebook/z;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/facebook/q;->f:Lcom/facebook/z;

    invoke-interface {v0}, Lcom/facebook/z;->a()V

    .line 463
    :cond_0
    return-void
.end method

.method private static i()Ljava/lang/String;
    .locals 4

    .prologue
    .line 879
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 881
    :try_start_0
    const-string v1, "init"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    invoke-virtual {v0}, Lcom/facebook/x;->d()V

    .line 175
    :cond_0
    return-void
.end method

.method final a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/q;->c:Landroid/content/Context;

    .line 117
    new-instance v0, Lcom/facebook/r;

    invoke-direct {v0, p0, p1}, Lcom/facebook/r;-><init>(Lcom/facebook/q;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/q;->d:Lcom/facebook/ah;

    .line 128
    return-void
.end method

.method final a(Lcom/facebook/ae;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/facebook/q;->e:Lcom/facebook/ae;

    .line 311
    return-void
.end method

.method final a(Lcom/facebook/af;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v0, p1, Lcom/facebook/af;->b:Lcom/facebook/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-virtual {v0}, Lcom/facebook/y;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p1, Lcom/facebook/af;->b:Lcom/facebook/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/am;

    const-string v1, "Can\'t validate without a token"

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/facebook/af;->b:Lcom/facebook/a;

    invoke-virtual {v0}, Lcom/facebook/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/t;

    invoke-direct {v2, p0, v6}, Lcom/facebook/t;-><init>(Lcom/facebook/q;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-virtual {v3}, Lcom/facebook/y;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/q;->b(Ljava/lang/String;)Lcom/facebook/Request;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/facebook/Request;->a(Lcom/facebook/bk;)V

    invoke-static {v0}, Lcom/facebook/q;->b(Ljava/lang/String;)Lcom/facebook/Request;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/facebook/Request;->a(Lcom/facebook/bk;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "access_token"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/permissions"

    sget-object v4, Lcom/facebook/au;->GET:Lcom/facebook/au;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;Lcom/facebook/bk;)V

    new-instance v1, Lcom/facebook/u;

    invoke-direct {v1, p0, v7, v8}, Lcom/facebook/u;-><init>(Lcom/facebook/q;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/facebook/Request;->a(Lcom/facebook/bk;)V

    new-instance v11, Lcom/facebook/br;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/Request;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v10, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-direct {v11, v1}, Lcom/facebook/br;-><init>([Lcom/facebook/Request;)V

    iget-object v0, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-virtual {v0}, Lcom/facebook/y;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/facebook/br;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/v;

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/facebook/v;-><init>(Lcom/facebook/q;Ljava/util/ArrayList;Lcom/facebook/af;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v0}, Lcom/facebook/br;->a(Lcom/facebook/bs;)V

    invoke-direct {p0}, Lcom/facebook/q;->h()V

    invoke-virtual {v11}, Lcom/facebook/br;->h()Lcom/facebook/bq;

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/q;->b(Lcom/facebook/af;)V

    goto :goto_0
.end method

.method final a(Lcom/facebook/y;)V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    .line 132
    iget-object v0, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/facebook/am;

    const-string v1, "Attempted to continue authorization without a pending request."

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    invoke-virtual {v0}, Lcom/facebook/x;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    invoke-virtual {v0}, Lcom/facebook/x;->d()V

    invoke-direct {p0}, Lcom/facebook/q;->f()Z

    .line 136
    :cond_3
    :goto_1
    return-void

    .line 134
    :cond_4
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/facebook/am;

    const-string v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/facebook/y;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/facebook/q;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_6
    iput-object p1, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/y;->c()Lcom/facebook/cr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/cr;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/facebook/y;->g()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Lcom/facebook/aa;

    invoke-direct {v2, p0}, Lcom/facebook/aa;-><init>(Lcom/facebook/q;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    new-instance v2, Lcom/facebook/ad;

    invoke-direct {v2, p0}, Lcom/facebook/ad;-><init>(Lcom/facebook/q;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v1}, Lcom/facebook/cr;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/facebook/ai;

    invoke-direct {v1, p0}, Lcom/facebook/ai;-><init>(Lcom/facebook/q;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iput-object v0, p0, Lcom/facebook/q;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/facebook/q;->b()V

    goto :goto_1
.end method

.method final a(Lcom/facebook/z;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/facebook/q;->f:Lcom/facebook/z;

    .line 319
    return-void
.end method

.method final a(IILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-virtual {v0}, Lcom/facebook/y;->d()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/x;->a(ILandroid/content/Intent;)Z

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    invoke-virtual {v0}, Lcom/facebook/x;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skipped"

    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    iget-object v5, v0, Lcom/facebook/x;->a:Ljava/util/Map;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/facebook/q;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/facebook/q;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/x;

    iput-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    .line 229
    invoke-direct {p0}, Lcom/facebook/q;->f()Z

    move-result v0

    .line 231
    if-eqz v0, :cond_0

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    const-string v1, "Login attempt failed."

    invoke-static {v0, v1, v3}, Lcom/facebook/af;->a(Lcom/facebook/y;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/af;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/q;->b(Lcom/facebook/af;)V

    goto :goto_0
.end method

.method final b(Lcom/facebook/af;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 287
    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    invoke-virtual {v0}, Lcom/facebook/x;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    iget-object v5, v0, Lcom/facebook/x;->a:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/af;->a:Lcom/facebook/ag;

    invoke-virtual {v0}, Lcom/facebook/ag;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/af;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/facebook/af;->d:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/facebook/q;->i:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/facebook/q;->i:Ljava/util/Map;

    iput-object v0, p1, Lcom/facebook/af;->f:Ljava/util/Map;

    .line 297
    :cond_1
    iput-object v6, p0, Lcom/facebook/q;->a:Ljava/util/List;

    .line 298
    iput-object v6, p0, Lcom/facebook/q;->b:Lcom/facebook/x;

    .line 299
    iput-object v6, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    .line 300
    iput-object v6, p0, Lcom/facebook/q;->i:Ljava/util/Map;

    .line 302
    iget-object v0, p0, Lcom/facebook/q;->e:Lcom/facebook/ae;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/q;->e:Lcom/facebook/ae;

    invoke-interface {v0, p1}, Lcom/facebook/ae;->a(Lcom/facebook/af;)V

    .line 303
    :cond_2
    return-void
.end method

.method final c()Lcom/facebook/ah;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/facebook/q;->d:Lcom/facebook/ah;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/facebook/q;->d:Lcom/facebook/ah;

    .line 338
    :goto_0
    return-object v0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/facebook/q;->h:Lcom/facebook/y;

    if-eqz v0, :cond_1

    .line 326
    new-instance v0, Lcom/facebook/s;

    invoke-direct {v0, p0}, Lcom/facebook/s;-><init>(Lcom/facebook/q;)V

    goto :goto_0

    .line 338
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
