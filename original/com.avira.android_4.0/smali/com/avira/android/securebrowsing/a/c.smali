.class public final Lcom/avira/android/securebrowsing/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final API_KEY_NAME:Ljava/lang/String; = "key"

.field public static final LANG_NAME:Ljava/lang/String; = "lang"

.field public static final METADATA_NAME:Ljava/lang/String; = "metadata"

.field public static final PLATFORM_NAME:Ljava/lang/String; = "platform"

.field public static final PRODUCT_NAME:Ljava/lang/String; = "product"

.field public static final PRODUCT_VERSION_NAME:Ljava/lang/String; = "product_version"

.field private static final TAG:Ljava/lang/String; = "SessionManager"

.field public static final USER_GUID_NAME:Ljava/lang/String; = "user_guid"


# instance fields
.field private a:Lcom/avira/android/securebrowsing/a/b;

.field private final b:Lcom/avira/android/securebrowsing/a/e;

.field private final c:Lcom/avira/android/common/web/o;


# direct methods
.method public constructor <init>(Lcom/avira/android/securebrowsing/a/e;Lcom/avira/android/common/web/o;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/avira/android/securebrowsing/a/c;->b:Lcom/avira/android/securebrowsing/a/e;

    .line 46
    iput-object p2, p0, Lcom/avira/android/securebrowsing/a/c;->c:Lcom/avira/android/common/web/o;

    .line 47
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/avira/android/securebrowsing/a/b;
    .locals 5

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/a/c;->a:Lcom/avira/android/securebrowsing/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/securebrowsing/a/c;->a:Lcom/avira/android/securebrowsing/a/b;

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/a/c;->b:Lcom/avira/android/securebrowsing/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 65
    const-string v2, "key"

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/a/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "user_guid"

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/a/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 69
    const-string v3, "product"

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/a/e;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v3, "product_version"

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/a/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v3, "lang"

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/a/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v3, "platform"

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/a/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v3, "metadata"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/a/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "auth"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/avira/android/securebrowsing/a/c;->c:Lcom/avira/android/common/web/o;

    invoke-static {v0, v1}, Lcom/avira/android/common/web/o;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/avira/android/common/web/WebResult;

    move-result-object v1

    .line 80
    const/4 v0, 0x0

    .line 82
    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v1}, Lcom/avira/android/common/web/WebResult;->d()Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    :cond_1
    if-eqz v0, :cond_3

    .line 91
    new-instance v1, Lcom/avira/android/securebrowsing/a/b;

    invoke-direct {v1, v0}, Lcom/avira/android/securebrowsing/a/b;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/avira/android/securebrowsing/a/c;->a:Lcom/avira/android/securebrowsing/a/b;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/avira/android/securebrowsing/a/c;->a:Lcom/avira/android/securebrowsing/a/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 95
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    const-string v1, "SessionManager"

    const-string v2, "Failed to get session."

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 100
    :try_start_4
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "SessionManager"

    const-string v3, "Malformed Json Post Data "

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
