.class public final Lcom/avira/applock/common/web/c;
.super Lcom/android/volley/toolbox/JsonObjectRequest;
.source "SourceFile"


# static fields
.field private static final ERROR_STATUS:Ljava/lang/String; = "error"

.field private static final ERROR_UNKNOWN:Ljava/lang/String; = "unknown error"

.field private static final TAG:Ljava/lang/String; = "HttpServerRequest"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/avira/applock/common/web/a;)V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/avira/applock/common/web/d;

    invoke-direct {v0, p3}, Lcom/avira/applock/common/web/d;-><init>(Lcom/avira/applock/common/web/a;)V

    new-instance v1, Lcom/avira/applock/common/web/e;

    invoke-direct {v1, p3}, Lcom/avira/applock/common/web/e;-><init>(Lcom/avira/applock/common/web/a;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 109
    const-string v0, "[request] url(%s) payload(%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method protected final getParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/volley/toolbox/JsonObjectRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 116
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-object v0
.end method

.method protected final parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .locals 3

    .prologue
    .line 124
    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v0, :cond_0

    .line 129
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v1, v1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v2, v2, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    new-instance p1, Lcom/android/volley/VolleyError;

    invoke-direct {p1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-object p1

    .line 134
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v1, v1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method protected final parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 145
    .line 148
    :try_start_0
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 150
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/JsonObjectRequest;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 158
    :goto_0
    :try_start_1
    iget-object v0, v1, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "statusCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, v1, Lcom/android/volley/Response;->result:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "statusCode"

    iget v3, p1, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v0, v1

    .line 165
    :goto_1
    return-object v0

    .line 155
    :cond_1
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "{}"

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
