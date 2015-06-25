.class public final Lcom/avira/android/securebrowsing/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/securebrowsing/a/f;


# static fields
.field private static final CACHE:Ljava/lang/String; = "cache"

.field private static final CACHE_CATEGORIES:Ljava/lang/String; = "c"

.field public static final CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG:Ljava/lang/String; = "CCHEURLCLDAPI"


# instance fields
.field private final a:Lcom/avira/android/securebrowsing/a/f;

.field private final b:Lcom/avira/android/utilities/t;


# direct methods
.method public constructor <init>(Lcom/avira/android/securebrowsing/a/f;Lcom/avira/android/utilities/t;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/avira/android/securebrowsing/a/a;->a:Lcom/avira/android/securebrowsing/a/f;

    .line 26
    iput-object p2, p0, Lcom/avira/android/securebrowsing/a/a;->b:Lcom/avira/android/utilities/t;

    .line 27
    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 60
    :try_start_0
    const-string v0, "categories"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 76
    :try_start_0
    const-string v0, "cache"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lorg/json/JSONObject;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_1

    .line 95
    iget-object v1, p0, Lcom/avira/android/securebrowsing/a/a;->b:Lcom/avira/android/utilities/t;

    const-string v1, "CCHEURLCLDAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CachedUrlCloudAPi - names = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 96
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 98
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 100
    const-string v4, "c"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 101
    const-string v5, "c"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    const-string v5, "categories"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    const/4 v0, 0x1

    .line 111
    :cond_1
    :goto_1
    return v0

    .line 107
    :catch_0
    move-exception v1

    .line 109
    iget-object v1, p0, Lcom/avira/android/securebrowsing/a/a;->b:Lcom/avira/android/utilities/t;

    const-string v2, "CCHEURLCLDAPI"

    const-string v3, "Unexpected error occurred while extracting Cache information"

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avira/android/securebrowsing/a/a;->b:Lcom/avira/android/utilities/t;

    const-string v0, "CCHEURLCLDAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CachedUrlCloudAPi - checking url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/avira/android/securebrowsing/a/a;->a:Lcom/avira/android/securebrowsing/a/f;

    invoke-interface {v0, p1}, Lcom/avira/android/securebrowsing/a/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/avira/android/securebrowsing/a/a;->b:Lcom/avira/android/utilities/t;

    const-string v1, "CCHEURLCLDAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cloudAPI returned json = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v0}, Lcom/avira/android/securebrowsing/a/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    .line 37
    if-nez v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/avira/android/securebrowsing/a/a;->b:Lcom/avira/android/utilities/t;

    const-string v1, "CCHEURLCLDAPI"

    const-string v2, "Failed to retrieve Category classification from Result"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/avira/android/securebrowsing/a/a;->b:Lcom/avira/android/utilities/t;

    const-string v1, "CCHEURLCLDAPI"

    const-string v2, "CachedUrlCloudAPi - getting json Object"

    invoke-static {v1, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {v0}, Lcom/avira/android/securebrowsing/a/a;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 44
    if-nez v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/avira/android/securebrowsing/a/a;->b:Lcom/avira/android/utilities/t;

    const-string v2, "CCHEURLCLDAPI"

    const-string v3, "Failed to retrieve Cache result, possibly Not Available"

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/avira/android/securebrowsing/a/a;->b:Lcom/avira/android/utilities/t;

    const-string v2, "CCHEURLCLDAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CachedUrlCloudAPi - cacheObj = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, v1}, Lcom/avira/android/securebrowsing/a/a;->c(Lorg/json/JSONObject;)Z

    .line 52
    const-string v1, "cache"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method
