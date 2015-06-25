.class public Lcom/avira/android/common/web/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APP_SERVER_URL:Ljava/lang/String;

.field private static final PING:Ljava/lang/String;

.field private static final PING_CONNECT_TIMEOUT:I = 0x3a98

.field private static final PING_READ_TIMEOUT:I = 0x2710

.field private static final PRODUCTION_APP_GENERIC_SERVER_URL:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/common/web/p;->PING:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const v1, 0x7f08011e

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/common/web/p;->APP_SERVER_URL:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const v1, 0x7f08011f

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/common/web/p;->PRODUCTION_APP_GENERIC_SERVER_URL:Ljava/lang/String;

    .line 47
    const-class v0, Lcom/avira/android/common/web/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/avira/android/common/web/p;->APP_SERVER_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 101
    sget-object v1, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "postInformation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move v1, v0

    :goto_0
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e(Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "id"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    move-result-object v0

    :cond_0
    const-string v3, "uid"

    invoke-virtual {v0, v3}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "uid"

    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_4

    const-string v1, "deviceId"

    invoke-virtual {v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "deviceId"

    const-string v3, "settingRegisteredServerDeviceId"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "oeDeviceId"

    invoke-virtual {v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "oeDeviceId"

    const-string v3, "settingRegisteredServerOEDeviceId"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "commandId"

    invoke-virtual {v0, v3}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "commandId"

    invoke-virtual {v0, v3, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "language"

    invoke-static {}, Lcom/avira/android/device/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/avira/android/utilities/p;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;)Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v1, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;

    const-string v3, "operationType: %s data: %s "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v3

    const v4, 0x7f0800ab

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/avira/android/common/web/p;->APP_SERVER_URL:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/avira/android/ApplicationService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {}, Lcom/avira/android/common/web/o;->a()Lcom/avira/android/common/web/o;

    invoke-static {v1, v0}, Lcom/avira/android/common/web/o;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/avira/android/common/web/WebResult;

    move-result-object v0

    .line 115
    sget-object v1, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "postInformation webresult is"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    if-nez v0, :cond_9

    .line 119
    sget-object v0, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handlePostInformationError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handlePostInformationErrror "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "register"

    invoke-virtual {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "com.avira.android.ACTION_APPLICATION_REGISTRATION"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "webResultExceptionFlag"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_5
    :goto_1
    invoke-static {v2}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 139
    return-void

    .line 106
    :cond_6
    :try_start_1
    const-string v0, "register"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v1, v0

    goto/16 :goto_0

    .line 119
    :cond_7
    const-string v0, "scanInfo"

    invoke-virtual {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/avira/android/antivirus/bf;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 129
    :catch_0
    move-exception v0

    .line 131
    sget-object v1, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;

    const-string v3, "error while posting information "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const-string v0, "register"

    invoke-virtual {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    const-string v0, "com.avira.android.ACTION_APPLICATION_REGISTRATION"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 119
    :cond_8
    :try_start_2
    const-string v0, "activatePremium"

    invoke-virtual {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.avira.android.dashboard.ACTION_PREMIUM_RESULT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/avira/android/dashboard/u;->REFRESH_FAIL:Lcom/avira/android/dashboard/u;

    invoke-static {v0}, Lcom/avira/android/dashboard/q;->a(Lcom/avira/android/dashboard/u;)V

    invoke-static {v2}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    goto :goto_1

    .line 124
    :cond_9
    new-instance v1, Lcom/avira/android/common/web/CustomWebResult;

    invoke-direct {v1, v0}, Lcom/avira/android/common/web/CustomWebResult;-><init>(Lcom/avira/android/common/web/WebResult;)V

    .line 125
    sget-object v0, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "processReturnCode "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceAdminStatus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/avira/android/common/web/m;

    invoke-direct {v3}, Lcom/avira/android/common/web/m;-><init>()V

    invoke-static {v0, v3, p0}, Lcom/avira/android/utilities/p;->a(Ljava/lang/String;Lcom/avira/android/utilities/o;Lcom/avira/android/remotecomponents/CommandIntegrator;)Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->a(Lcom/avira/android/common/web/WebResult;)V

    goto/16 :goto_1

    :cond_a
    sget-object v0, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/avira/android/common/web/p;->PRODUCTION_APP_GENERIC_SERVER_URL:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/avira/android/common/web/p;->APP_SERVER_URL:Ljava/lang/String;

    sget-object v1, Lcom/avira/android/common/web/p;->APP_SERVER_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/avira/android/common/web/p;->APP_SERVER_URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/avira/android/common/web/p;->PING:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v2, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PING request: GET "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avira/android/utilities/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 184
    const/4 v2, 0x0

    .line 187
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    const/16 v2, 0x3a98

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 189
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 190
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 192
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 194
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v3, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "PING result: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v4, v6, v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avira/android/utilities/t;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 208
    :cond_0
    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 214
    :cond_1
    :goto_0
    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 200
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v3

    sget-object v4, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;

    const-string v5, "Malformed URL Error"

    invoke-virtual {v3, v4, v5, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    if-eqz v2, :cond_1

    .line 210
    :goto_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 202
    :catch_1
    move-exception v0

    .line 204
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v3

    sget-object v4, Lcom/avira/android/common/web/p;->TAG:Ljava/lang/String;

    const-string v5, "Web Ping Error"

    invoke-virtual {v3, v4, v5, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    if-eqz v2, :cond_1

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 208
    :cond_2
    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    .line 202
    :catch_2
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_3

    .line 198
    :catch_3
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_1
.end method
