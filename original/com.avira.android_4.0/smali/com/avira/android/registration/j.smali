.class public Lcom/avira/android/registration/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/web/a;


# static fields
.field public static final LOGGED_IN_TO_APP_SERVER:Ljava/lang/String; = "is_logged_in"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SUBSCRIPTION:Ljava/lang/String; = "subscription"

.field private static a:Lcom/avira/android/registration/j;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/avira/android/registration/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/registration/j;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    const-string v3, "is_logged_in"

    invoke-static {v2, v3, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/avira/android/registration/j;->b:Z

    .line 43
    return-void

    .line 42
    :cond_0
    const-string v2, "0"

    const-string v3, "settingShowRegistrationScreen"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/avira/android/registration/j;->c()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static a()Lcom/avira/android/registration/j;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/avira/android/registration/j;->a:Lcom/avira/android/registration/j;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/avira/android/registration/j;

    invoke-direct {v0}, Lcom/avira/android/registration/j;-><init>()V

    sput-object v0, Lcom/avira/android/registration/j;->a:Lcom/avira/android/registration/j;

    .line 52
    :cond_0
    sget-object v0, Lcom/avira/android/registration/j;->a:Lcom/avira/android/registration/j;

    return-object v0
.end method

.method private static a(Lcom/avira/android/common/web/WebResult;)V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    const-string v1, "com.avira.android.ACTION_APPLICATION_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v1, "registration_result_data"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 225
    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/applock/common/web/HttpErrorResponse;)V
    .locals 4

    .prologue
    .line 212
    iget v0, p1, Lcom/avira/applock/common/web/HttpErrorResponse;->errorCode:I

    .line 213
    iget-object v1, p1, Lcom/avira/applock/common/web/HttpErrorResponse;->status:Ljava/lang/String;

    .line 214
    iget-object v2, p1, Lcom/avira/applock/common/web/HttpErrorResponse;->errorMsg:Ljava/lang/String;

    .line 216
    new-instance v3, Lcom/avira/android/common/web/WebResult;

    invoke-direct {v3, v0, v1, v2}, Lcom/avira/android/common/web/WebResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/avira/android/registration/j;->a(Lcom/avira/android/common/web/WebResult;)V

    .line 217
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/avira/android/common/web/d;->a()Lcom/avira/android/common/web/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/avira/android/common/web/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/applock/common/web/a;Z)V

    .line 66
    new-instance v0, Lcom/avira/android/userprofile/s;

    invoke-direct {v0}, Lcom/avira/android/userprofile/s;-><init>()V

    invoke-virtual {v0, p1}, Lcom/avira/android/userprofile/s;->a(Ljava/lang/String;)Z

    .line 67
    invoke-static {}, Lcom/avira/android/iab/s;->e()V

    .line 68
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 11

    .prologue
    .line 131
    :try_start_0
    const-string v0, "deviceId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "oeDeviceId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v3, "statusCode"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 137
    const-string v4, "subscription"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 138
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 139
    const-string v6, "enabled"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    const-string v6, "user"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 143
    const-string v7, "firstName"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    const-string v8, "lastName"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 145
    const-string v9, "imageUrl"

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    const-string v9, "premium"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    const-string v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 154
    invoke-static {v4}, Lcom/avira/android/premium/b;->a(Z)Z

    .line 157
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 159
    const-string v4, "settingRegisteredServerDeviceId"

    invoke-static {v4, v0}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 164
    const-string v4, "settingRegisteredServerOEDeviceId"

    invoke-static {v4, v1}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 170
    :cond_3
    invoke-virtual {p0}, Lcom/avira/android/registration/j;->c()V

    .line 171
    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/common/gcm/b;->b()V

    .line 175
    :cond_4
    new-instance v0, Lcom/avira/android/userprofile/x;

    invoke-direct {v0}, Lcom/avira/android/userprofile/x;-><init>()V

    .line 176
    invoke-virtual {v0, v7, v8}, Lcom/avira/android/userprofile/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 179
    invoke-static {v6}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    new-instance v0, Lcom/avira/android/userprofile/h;

    invoke-direct {v0, v6}, Lcom/avira/android/userprofile/h;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-static {v0}, Lcom/avira/android/utilities/aj;->a(Ljava/lang/Runnable;)V

    .line 185
    :cond_5
    new-instance v0, Lcom/avira/android/common/web/WebResult;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lcom/avira/android/common/web/WebResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v1

    invoke-static {v1}, Lcom/avira/android/common/web/q;->a(I)Lcom/avira/android/common/web/r;

    move-result-object v1

    .line 187
    sget-object v2, Lcom/avira/android/common/web/r;->Ok:Lcom/avira/android/common/web/r;

    if-ne v1, v2, :cond_6

    .line 189
    new-instance v1, Lcom/avira/android/registration/k;

    invoke-direct {v1, p0}, Lcom/avira/android/registration/k;-><init>(Lcom/avira/android/registration/j;)V

    invoke-virtual {v1}, Lcom/avira/android/registration/k;->start()V

    .line 199
    :cond_6
    invoke-static {v0}, Lcom/avira/android/registration/j;->a(Lcom/avira/android/common/web/WebResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 204
    sget-object v1, Lcom/avira/android/registration/j;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/avira/android/common/web/d;->a()Lcom/avira/android/common/web/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/avira/android/common/web/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/applock/common/web/a;Z)V

    .line 82
    new-instance v0, Lcom/avira/android/userprofile/s;

    invoke-direct {v0}, Lcom/avira/android/userprofile/s;-><init>()V

    invoke-virtual {v0, p1}, Lcom/avira/android/userprofile/s;->a(Ljava/lang/String;)Z

    .line 83
    invoke-static {}, Lcom/avira/android/iab/s;->e()V

    .line 85
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/avira/android/registration/j;->b:Z

    return v0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 120
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "is_logged_in"

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 121
    iput-boolean v2, p0, Lcom/avira/android/registration/j;->b:Z

    .line 122
    return-void
.end method
