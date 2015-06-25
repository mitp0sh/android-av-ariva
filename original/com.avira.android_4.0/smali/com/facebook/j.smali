.class final Lcom/facebook/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L

.field private static final validatedIdentifiers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/j;->validatedIdentifiers:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    :try_start_0
    invoke-static {p2}, Lcom/facebook/j;->a(Ljava/lang/String;)V

    .line 1206
    iput-object p2, p0, Lcom/facebook/j;->c:Ljava/lang/String;

    .line 1207
    iput-boolean p4, p0, Lcom/facebook/j;->b:Z

    .line 1208
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    .line 1210
    iget-object v0, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    const-string v1, "_eventName"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1211
    iget-object v0, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    const-string v1, "_logTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1212
    iget-object v0, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    const-string v1, "_ui"

    invoke-static {p1}, Lcom/facebook/b/cl;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1214
    iget-boolean v0, p0, Lcom/facebook/j;->b:Z

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    const-string v1, "_implicitlyLogged"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1222
    :cond_0
    invoke-static {}, Lcom/facebook/cu;->e()Ljava/lang/String;

    move-result-object v0

    .line 1223
    if-eqz v0, :cond_1

    .line 1224
    iget-object v1, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    const-string v2, "_appVersion"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1227
    :cond_1
    if-eqz p3, :cond_4

    .line 1228
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1230
    invoke-static {v0}, Lcom/facebook/j;->a(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1233
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_3

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_3

    .line 1234
    new-instance v1, Lcom/facebook/am;

    const-string v3, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/am; {:try_start_0 .. :try_end_0} :catch_1

    .line 1250
    :catch_0
    move-exception v0

    .line 1253
    sget-object v1, Lcom/facebook/av;->APP_EVENTS:Lcom/facebook/av;

    const-string v2, "AppEvents"

    const-string v3, "JSON encoding for app event failed: \'%s\'"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1255
    iput-object v8, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    .line 1263
    :cond_2
    :goto_1
    return-void

    .line 1242
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/am; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1257
    :catch_1
    move-exception v0

    .line 1259
    sget-object v1, Lcom/facebook/av;->APP_EVENTS:Lcom/facebook/av;

    const-string v2, "AppEvents"

    const-string v3, "Invalid app event name or parameter:"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/facebook/am;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    iput-object v8, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    goto :goto_1

    .line 1246
    :cond_4
    :try_start_2
    iget-boolean v0, p0, Lcom/facebook/j;->b:Z

    if-nez v0, :cond_2

    .line 1247
    sget-object v0, Lcom/facebook/av;->APP_EVENTS:Lcom/facebook/av;

    const-string v1, "AppEvents"

    const-string v2, "Created app event \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/facebook/am; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x28

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1287
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 1291
    :cond_0
    if-nez p0, :cond_1

    .line 1292
    const-string p0, "<None Provided>"

    .line 1294
    :cond_1
    new-instance v0, Lcom/facebook/am;

    const-string v1, "Identifier \'%s\' must be less than %d characters"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1300
    :cond_2
    sget-object v1, Lcom/facebook/j;->validatedIdentifiers:Ljava/util/HashSet;

    monitor-enter v1

    .line 1301
    :try_start_0
    sget-object v0, Lcom/facebook/j;->validatedIdentifiers:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1302
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    if-nez v0, :cond_3

    .line 1305
    const-string v0, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1306
    sget-object v1, Lcom/facebook/j;->validatedIdentifiers:Ljava/util/HashSet;

    monitor-enter v1

    .line 1307
    :try_start_1
    sget-object v0, Lcom/facebook/j;->validatedIdentifiers:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1308
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1318
    :cond_3
    return-void

    .line 1302
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1308
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1310
    :cond_4
    new-instance v0, Lcom/facebook/am;

    const-string v1, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 1275
    iget-boolean v0, p0, Lcom/facebook/j;->b:Z

    return v0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1341
    const-string v0, "\"%s\", implicit: %b, json: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    const-string v4, "_eventName"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/facebook/j;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
