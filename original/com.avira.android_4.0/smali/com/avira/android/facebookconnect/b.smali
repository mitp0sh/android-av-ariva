.class final Lcom/avira/android/facebookconnect/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/web/a;


# instance fields
.field final synthetic a:Lcom/avira/android/facebookconnect/FacebookConnectActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/facebookconnect/FacebookConnectActivity;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/avira/android/facebookconnect/b;->a:Lcom/avira/android/facebookconnect/FacebookConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/applock/common/web/HttpErrorResponse;)V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "google login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/avira/applock/common/web/HttpErrorResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/avira/android/facebookconnect/b;->a:Lcom/avira/android/facebookconnect/FacebookConnectActivity;

    invoke-static {v0}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->a(Lcom/avira/android/facebookconnect/FacebookConnectActivity;)V

    .line 280
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 11

    .prologue
    .line 168
    invoke-static {}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->c()Ljava/lang/String;

    .line 171
    :try_start_0
    const-string v0, "deviceId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v1, "oeDeviceId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v2, "subscription"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 175
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    const-string v4, "enabled"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    const-string v4, "user"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 179
    const-string v5, "firstName"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 180
    const-string v6, "lastName"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 181
    const-string v7, "imageUrl"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    const-string v8, "email"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    const-string v8, "statusCode"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 185
    const-string v9, "status"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 188
    const-string v10, "premium"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 191
    invoke-static {v2}, Lcom/avira/android/premium/b;->a(Z)Z

    .line 194
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    const-string v2, "settingRegisteredServerDeviceId"

    invoke-static {v2, v0}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    const-string v2, "settingRegisteredServerOEDeviceId"

    invoke-static {v2, v1}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 208
    :cond_3
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->c()V

    .line 209
    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/common/gcm/b;->b()V

    .line 212
    :cond_4
    new-instance v0, Lcom/avira/android/common/web/WebResult;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v8, v9, v1}, Lcom/avira/android/common/web/WebResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 215
    const-string v2, "com.avira.android.ACTION_APPLICATION_REGISTRATION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v2, "registration_result_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    new-instance v2, Lcom/avira/android/userprofile/s;

    invoke-direct {v2}, Lcom/avira/android/userprofile/s;-><init>()V

    invoke-virtual {v2, v4}, Lcom/avira/android/userprofile/s;->a(Ljava/lang/String;)Z

    .line 221
    new-instance v2, Lcom/avira/android/userprofile/x;

    invoke-direct {v2}, Lcom/avira/android/userprofile/x;-><init>()V

    .line 222
    invoke-virtual {v2, v5, v6}, Lcom/avira/android/userprofile/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 227
    new-instance v2, Lcom/avira/android/userprofile/h;

    invoke-direct {v2, v7}, Lcom/avira/android/userprofile/h;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-static {v2}, Lcom/avira/android/utilities/aj;->a(Ljava/lang/Runnable;)V

    .line 232
    :cond_5
    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v0

    invoke-static {v0}, Lcom/avira/android/common/web/q;->a(I)Lcom/avira/android/common/web/r;

    move-result-object v0

    .line 233
    sget-object v2, Lcom/avira/android/common/web/r;->Ok:Lcom/avira/android/common/web/r;

    if-ne v0, v2, :cond_6

    .line 235
    new-instance v0, Lcom/avira/android/facebookconnect/c;

    invoke-direct {v0, p0}, Lcom/avira/android/facebookconnect/c;-><init>(Lcom/avira/android/facebookconnect/b;)V

    invoke-virtual {v0}, Lcom/avira/android/facebookconnect/c;->start()V

    .line 246
    :cond_6
    invoke-static {v1}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 248
    invoke-static {}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response for facebook login is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->c()V

    .line 259
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avira/android/antitheft/a;->a(Z)V

    .line 261
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/avira/android/i;->ACTION_LOGIN_OK:Lcom/avira/android/i;

    invoke-virtual {v2}, Lcom/avira/android/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    invoke-static {}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->c()Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/avira/android/facebookconnect/b;->a:Lcom/avira/android/facebookconnect/FacebookConnectActivity;

    invoke-virtual {v0}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 269
    invoke-static {}, Lcom/avira/android/facebookconnect/FacebookConnectActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
