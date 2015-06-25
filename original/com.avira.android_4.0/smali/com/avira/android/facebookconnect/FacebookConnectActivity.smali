.class public Lcom/avira/android/facebookconnect/FacebookConnectActivity;
.super Lcom/avira/android/facebookconnect/FacebookTemplateActivity;
.source "SourceFile"


# static fields
.field private static b:Ljava/lang/String;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/avira/android/facebookconnect/FacebookConnectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->b:Ljava/lang/String;

    .line 54
    const/16 v0, 0x3e8

    sput v0, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/facebookconnect/FacebookConnectActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->f()V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 8

    .prologue
    .line 301
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->b:Ljava/lang/String;

    .line 302
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "Bubu1"

    const-string v3, "bubu1"

    const-string v4, "bubu1"

    sget-object v5, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    sget-object v6, Lcom/avira/android/custom/aa;->InfoIcon:Lcom/avira/android/custom/aa;

    const/4 v6, 0x0

    sget-object v7, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-virtual/range {v0 .. v7}, Lcom/avira/android/ApplicationService;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)V

    .line 307
    invoke-virtual {p0}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->finish()V

    .line 308
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->b:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->f()V

    .line 290
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/facebook/c/j;)V
    .locals 10

    .prologue
    .line 90
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->f()V

    .line 283
    :goto_0
    return-void

    .line 96
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 98
    invoke-static {}, Lcom/avira/android/device/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 99
    if-nez v0, :cond_2

    .line 101
    const-string v0, "unknown"

    .line 104
    :cond_2
    invoke-static {}, Lcom/avira/android/device/a;->e()Ljava/lang/String;

    move-result-object v1

    .line 105
    if-nez v1, :cond_3

    .line 107
    const-string v1, "unknown"

    .line 110
    :cond_3
    invoke-static {}, Lcom/avira/android/device/a;->g()Ljava/lang/String;

    move-result-object v2

    .line 111
    if-nez v2, :cond_4

    .line 113
    const-string v2, ""

    .line 116
    :cond_4
    new-instance v4, Lcom/avira/android/sauth/api/b;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v5

    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/avira/android/sauth/api/b;-><init>(Landroid/content/Context;Lcom/avira/android/database/f;)V

    .line 120
    :try_start_0
    const-string v5, "ft"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v5, "fbi"

    invoke-interface {p2}, Lcom/facebook/c/j;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v5, "email"

    invoke-interface {p2}, Lcom/facebook/c/j;->e()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 125
    const-string v6, "birthDate"

    invoke-interface {p2}, Lcom/facebook/c/j;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v6, "firstName"

    invoke-interface {p2}, Lcom/facebook/c/j;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v6, "lastName"

    invoke-interface {p2}, Lcom/facebook/c/j;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v6, "salutation"

    invoke-interface {p2}, Lcom/facebook/c/j;->e()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 130
    const-string v7, "uid"

    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    invoke-static {}, Lcom/avira/android/device/a;->b()Ljava/lang/String;

    move-result-object v7

    .line 132
    const-string v8, "unknown"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 134
    const-string v8, "uidType"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_5
    const-string v7, "serial"

    invoke-static {}, Lcom/avira/android/device/a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 139
    const-string v8, "registrationId"

    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/avira/android/common/gcm/b;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v8, "deviceModel"

    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v1, "deviceManufacturer"

    invoke-virtual {v7, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v0, "phoneNumber"

    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v0, "versionNo"

    invoke-static {}, Lcom/avira/android/device/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v0, "osVersion"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v0, "locale"

    invoke-virtual {v4}, Lcom/avira/android/sauth/api/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v0, "platform"

    invoke-virtual {v4}, Lcom/avira/android/sauth/api/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v0, "ssid"

    invoke-virtual {v4}, Lcom/avira/android/sauth/api/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v0, "language"

    invoke-static {}, Lcom/avira/android/device/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string v0, "id"

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v0, "info"

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v0, "details"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    invoke-static {}, Lcom/avira/android/common/web/d;->a()Lcom/avira/android/common/web/d;

    move-result-object v0

    const-string v1, "loginWithFacebook"

    new-instance v2, Lcom/avira/android/facebookconnect/b;

    invoke-direct {v2, p0}, Lcom/avira/android/facebookconnect/b;-><init>(Lcom/avira/android/facebookconnect/FacebookConnectActivity;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/avira/android/common/web/d;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;)V

    goto/16 :goto_0

    .line 156
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->f()V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->b:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->f()V

    .line 297
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/avira/android/facebookconnect/FacebookTemplateActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->setContentView(I)V

    .line 61
    sget-object v0, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->b:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/avira/android/facebookconnect/a;

    invoke-direct {v1, p0}, Lcom/avira/android/facebookconnect/a;-><init>(Lcom/avira/android/facebookconnect/FacebookConnectActivity;)V

    sget v2, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    return-void
.end method
