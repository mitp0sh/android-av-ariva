.class public final Lcom/avira/android/utilities/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/avira/android/remotecomponents/CommandIntegrator;Ljava/lang/String;Lorg/json/JSONObject;Lcom/avira/android/utilities/o;)Lcom/avira/android/remotecomponents/CommandIntegrator;
    .locals 7

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v1, p0

    .line 172
    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {p3, v0}, Lcom/avira/android/utilities/o;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    if-eqz p1, :cond_1

    .line 181
    invoke-virtual {v1, p1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e(Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    move-result-object v2

    .line 188
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 190
    invoke-virtual {v2, v0, v4}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v2, p1}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    :cond_0
    :goto_2
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2, p3}, Lcom/avira/android/utilities/p;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;Ljava/lang/String;Lorg/json/JSONObject;Lcom/avira/android/utilities/o;)Lcom/avira/android/remotecomponents/CommandIntegrator;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    .line 185
    :cond_1
    :try_start_3
    invoke-virtual {v1, v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e(Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    move-result-object v2

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {v1, v0, v4}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 211
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 213
    :goto_3
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "JsonParser.getJsonObject"

    const-string v4, "JSONException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    :goto_4
    return-object v0

    :cond_3
    move-object v0, v1

    .line 214
    goto :goto_4

    .line 211
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p0

    goto :goto_3

    .line 208
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/avira/android/utilities/o;Lcom/avira/android/remotecomponents/CommandIntegrator;)Lcom/avira/android/remotecomponents/CommandIntegrator;
    .locals 5

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 134
    new-instance v0, Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>()V

    .line 139
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, p1}, Lcom/avira/android/utilities/p;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;Ljava/lang/String;Lorg/json/JSONObject;Lcom/avira/android/utilities/o;)Lcom/avira/android/remotecomponents/CommandIntegrator;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 150
    :goto_1
    return-object v0

    .line 141
    :catch_0
    move-exception v1

    .line 143
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "JsonParser.getCommandIntegrator"

    const-string v4, "JSONException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 145
    :catch_1
    move-exception v1

    .line 147
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "JsonParser.getCommandIntegrator"

    const-string v4, "NullPointerException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static a(Lcom/avira/android/remotecomponents/CommandIntegrator;)Lorg/json/JSONObject;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 33
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-virtual {p0, v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e(Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    move-result-object v4

    .line 40
    const-string v1, "json_command_parent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    invoke-virtual {v4}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    invoke-virtual {v4, v0}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 47
    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 83
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v3, "JsonParser.getJsonObject"

    const-string v4, "JSONException"

    invoke-virtual {v1, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :cond_1
    return-object v2

    .line 49
    :cond_2
    :try_start_1
    const-string v6, "false"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 51
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 59
    :cond_4
    const-string v1, "internal_params"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {v4}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v8, :cond_5

    .line 63
    invoke-virtual {p0, v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 67
    :cond_5
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 68
    invoke-virtual {v4}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    invoke-virtual {v4, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 72
    :cond_6
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 74
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
