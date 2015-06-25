.class public Lcom/facebook/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER:Ljava/lang/String; = "Accept-Language"

.field private static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"

.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"

.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"

.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"

.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"

.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"

.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"

.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"

.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"

.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final FORMAT_JSON:Ljava/lang/String; = "json"

.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"

.field private static final ISO_8601_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field public static final MAXIMUM_BATCH_SIZE:I = 0x32

.field private static final ME:Ljava/lang/String; = "me"

.field private static final MIME_BOUNDARY:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

.field private static final MY_ACTION_FORMAT:Ljava/lang/String; = "me/%s"

.field private static final MY_FEED:Ljava/lang/String; = "me/feed"

.field private static final MY_FRIENDS:Ljava/lang/String; = "me/friends"

.field private static final MY_OBJECTS_FORMAT:Ljava/lang/String; = "me/objects/%s"

.field private static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final MY_STAGING_RESOURCES:Ljava/lang/String; = "me/staging_resources"

.field private static final MY_VIDEOS:Ljava/lang/String; = "me/videos"

.field private static final OBJECT_PARAM:Ljava/lang/String; = "object"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SDK_ANDROID:Ljava/lang/String; = "android"

.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"

.field private static final SEARCH:Ljava/lang/String; = "search"

.field private static final STAGING_PARAM:Ljava/lang/String; = "file"

.field public static final TAG:Ljava/lang/String;

.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static final VIDEOS_SUFFIX:Ljava/lang/String; = "/videos"

.field private static a:Ljava/lang/String;

.field private static b:Ljava/util/regex/Pattern;

.field private static volatile p:Ljava/lang/String;


# instance fields
.field private c:Lcom/facebook/by;

.field private d:Lcom/facebook/au;

.field private e:Ljava/lang/String;

.field private f:Lcom/facebook/c/c;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Landroid/os/Bundle;

.field private k:Lcom/facebook/bk;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/facebook/Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Request;->TAG:Ljava/lang/String;

    .line 113
    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/Request;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 133
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;Lcom/facebook/bk;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;)V
    .locals 6

    .prologue
    .line 170
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;Lcom/facebook/bk;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;Lcom/facebook/bk;)V
    .locals 7

    .prologue
    .line 194
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/Request;-><init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;Lcom/facebook/bk;B)V

    .line 195
    return-void
.end method

.method private constructor <init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;Lcom/facebook/bk;B)V
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request;->i:Z

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Request;->o:Z

    .line 220
    iput-object p1, p0, Lcom/facebook/Request;->c:Lcom/facebook/by;

    .line 221
    iput-object p2, p0, Lcom/facebook/Request;->e:Ljava/lang/String;

    .line 222
    iput-object p5, p0, Lcom/facebook/Request;->k:Lcom/facebook/bk;

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/Request;->n:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/facebook/Request;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/au;->GET:Lcom/facebook/au;

    if-eq p4, v0, :cond_0

    new-instance v0, Lcom/facebook/am;

    const-string v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p4, :cond_2

    :goto_0
    iput-object p4, p0, Lcom/facebook/Request;->d:Lcom/facebook/au;

    .line 227
    if-eqz p3, :cond_3

    .line 228
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    .line 233
    :goto_1
    iget-object v0, p0, Lcom/facebook/Request;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 234
    invoke-static {}, Lcom/facebook/b/cf;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Request;->n:Ljava/lang/String;

    .line 236
    :cond_1
    return-void

    .line 225
    :cond_2
    sget-object p4, Lcom/facebook/au;->GET:Lcom/facebook/au;

    goto :goto_0

    .line 230
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    goto :goto_1
.end method

.method public static a(Lcom/facebook/by;Lcom/facebook/bl;)Lcom/facebook/Request;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 277
    new-instance v5, Lcom/facebook/bg;

    invoke-direct {v5, p1}, Lcom/facebook/bg;-><init>(Lcom/facebook/bl;)V

    .line 285
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;Lcom/facebook/bk;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/Request;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 375
    new-instance v0, Lcom/facebook/Request;

    move-object v2, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;Lcom/facebook/bk;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/c/c;)Lcom/facebook/Request;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 262
    new-instance v0, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/au;->POST:Lcom/facebook/au;

    move-object v2, p0

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/by;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/au;Lcom/facebook/bk;)V

    .line 263
    iput-object p1, v0, Lcom/facebook/Request;->f:Lcom/facebook/c/c;

    .line 264
    return-object v0
.end method

.method public static varargs a([Lcom/facebook/Request;)Lcom/facebook/bq;
    .locals 2

    .prologue
    .line 1479
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/b/cp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1481
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/facebook/br;

    invoke-direct {v1, v0}, Lcom/facebook/br;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/facebook/Request;->b(Lcom/facebook/br;)Lcom/facebook/bq;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/br;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/br;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1449
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/b/cp;->c(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1451
    :try_start_0
    invoke-static {p0}, Lcom/facebook/Request;->c(Lcom/facebook/br;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1460
    invoke-static {v0, p0}, Lcom/facebook/Request;->a(Ljava/net/HttpURLConnection;Lcom/facebook/br;)Ljava/util/List;

    move-result-object v0

    .line 1461
    :goto_0
    return-object v0

    .line 1454
    :catch_0
    move-exception v0

    .line 1455
    invoke-virtual {p0}, Lcom/facebook/br;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/facebook/am;

    invoke-direct {v3, v0}, Lcom/facebook/am;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2, v3}, Lcom/facebook/bx;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/am;)Ljava/util/List;

    move-result-object v0

    .line 1456
    invoke-static {p0, v0}, Lcom/facebook/Request;->a(Lcom/facebook/br;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static a(Ljava/net/HttpURLConnection;Lcom/facebook/br;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/br;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1561
    invoke-static {p0, p1}, Lcom/facebook/bx;->a(Ljava/net/HttpURLConnection;Lcom/facebook/br;)Ljava/util/List;

    move-result-object v1

    .line 1563
    invoke-static {p0}, Lcom/facebook/b/cl;->a(Ljava/net/URLConnection;)V

    .line 1565
    invoke-virtual {p1}, Lcom/facebook/br;->size()I

    move-result v0

    .line 1566
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1567
    new-instance v2, Lcom/facebook/am;

    const-string v3, "Received %d responses while expecting %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1571
    :cond_0
    invoke-static {p1, v1}, Lcom/facebook/Request;->a(Lcom/facebook/br;Ljava/util/List;)V

    .line 1575
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1576
    invoke-virtual {p1}, Lcom/facebook/br;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 1577
    iget-object v4, v0, Lcom/facebook/Request;->c:Lcom/facebook/by;

    if-eqz v4, :cond_1

    .line 1578
    iget-object v0, v0, Lcom/facebook/Request;->c:Lcom/facebook/by;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1581
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/by;

    .line 1582
    invoke-virtual {v0}, Lcom/facebook/by;->j()V

    goto :goto_1

    .line 1585
    :cond_3
    return-object v1
.end method

.method private static a(Landroid/os/Bundle;Lcom/facebook/bp;Lcom/facebook/Request;)V
    .locals 4

    .prologue
    .line 2072
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2074
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2075
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2076
    invoke-static {v2}, Lcom/facebook/Request;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2077
    invoke-virtual {p1, v0, v2, p2}, Lcom/facebook/bp;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V

    goto :goto_0

    .line 2080
    :cond_1
    return-void
.end method

.method private static a(Lcom/facebook/bp;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/bp;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/bj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2095
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2096
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 2097
    invoke-direct {v0, v1, p2}, Lcom/facebook/Request;->a(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    .line 2100
    :cond_0
    const-string v0, "batch"

    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/bp;->a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 2101
    return-void
.end method

.method private static a(Lcom/facebook/br;Lcom/facebook/b/bv;ILjava/net/URL;Ljava/io/OutputStream;)V
    .locals 7

    .prologue
    .line 1934
    new-instance v1, Lcom/facebook/bp;

    invoke-direct {v1, p4, p1}, Lcom/facebook/bp;-><init>(Ljava/io/OutputStream;Lcom/facebook/b/bv;)V

    .line 1936
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 1937
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/br;->a(I)Lcom/facebook/Request;

    move-result-object v2

    .line 1939
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1940
    iget-object v0, v2, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1941
    iget-object v5, v2, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1942
    invoke-static {v5}, Lcom/facebook/Request;->d(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1943
    new-instance v6, Lcom/facebook/bj;

    invoke-direct {v6, v2, v5}, Lcom/facebook/bj;-><init>(Lcom/facebook/Request;Ljava/lang/Object;)V

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1947
    :cond_1
    if-eqz p1, :cond_2

    .line 1948
    const-string v0, "  Parameters:\n"

    invoke-virtual {p1, v0}, Lcom/facebook/b/bv;->b(Ljava/lang/String;)V

    .line 1950
    :cond_2
    iget-object v0, v2, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/Request;->a(Landroid/os/Bundle;Lcom/facebook/bp;Lcom/facebook/Request;)V

    .line 1952
    if-eqz p1, :cond_3

    .line 1953
    const-string v0, "  Attachments:\n"

    invoke-virtual {p1, v0}, Lcom/facebook/b/bv;->b(Ljava/lang/String;)V

    .line 1955
    :cond_3
    invoke-static {v3, v1}, Lcom/facebook/Request;->a(Ljava/util/Map;Lcom/facebook/bp;)V

    .line 1957
    iget-object v0, v2, Lcom/facebook/Request;->f:Lcom/facebook/c/c;

    if-eqz v0, :cond_4

    .line 1958
    iget-object v0, v2, Lcom/facebook/Request;->f:Lcom/facebook/c/c;

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/facebook/Request;->a(Lcom/facebook/c/c;Ljava/lang/String;Lcom/facebook/bm;)V

    .line 1979
    :cond_4
    :goto_1
    return-void

    .line 1961
    :cond_5
    invoke-static {p0}, Lcom/facebook/Request;->e(Lcom/facebook/br;)Ljava/lang/String;

    move-result-object v0

    .line 1962
    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1963
    new-instance v0, Lcom/facebook/am;

    const-string v1, "At least one request in a batch must have an open Session, or a default app ID must be specified."

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1967
    :cond_6
    const-string v2, "batch_app_id"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/bp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1972
    invoke-static {v1, p0, v0}, Lcom/facebook/Request;->a(Lcom/facebook/bp;Ljava/util/Collection;Ljava/util/Map;)V

    .line 1974
    if-eqz p1, :cond_7

    .line 1975
    const-string v2, "  Attachments:\n"

    invoke-virtual {p1, v2}, Lcom/facebook/b/bv;->b(Ljava/lang/String;)V

    .line 1977
    :cond_7
    invoke-static {v0, v1}, Lcom/facebook/Request;->a(Ljava/util/Map;Lcom/facebook/bp;)V

    goto :goto_1
.end method

.method private static a(Lcom/facebook/br;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/br;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1651
    invoke-virtual {p0}, Lcom/facebook/br;->size()I

    move-result v1

    .line 1654
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1655
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1656
    invoke-virtual {p0, v0}, Lcom/facebook/br;->a(I)Lcom/facebook/Request;

    move-result-object v3

    .line 1657
    iget-object v4, v3, Lcom/facebook/Request;->k:Lcom/facebook/bk;

    if-eqz v4, :cond_0

    .line 1658
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Lcom/facebook/Request;->k:Lcom/facebook/bk;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1662
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1663
    new-instance v0, Lcom/facebook/bh;

    invoke-direct {v0, v2, p0}, Lcom/facebook/bh;-><init>(Ljava/util/ArrayList;Lcom/facebook/br;)V

    .line 1676
    invoke-virtual {p0}, Lcom/facebook/br;->c()Landroid/os/Handler;

    move-result-object v1

    .line 1677
    if-nez v1, :cond_3

    .line 1679
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1685
    :cond_2
    :goto_1
    return-void

    .line 1682
    :cond_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static a(Lcom/facebook/c/c;Ljava/lang/String;Lcom/facebook/bm;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2001
    .line 2002
    sget-object v0, Lcom/facebook/Request;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "me/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/me/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    .line 2003
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2004
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2005
    const/4 v4, 0x3

    if-le v0, v4, :cond_3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ge v0, v1, :cond_3

    :cond_1
    move v0, v2

    :goto_2
    move v4, v0

    .line 2008
    :goto_3
    invoke-interface {p0}, Lcom/facebook/c/c;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2009
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 2010
    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "image"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v5, v2

    .line 2011
    :goto_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2, v5}, Lcom/facebook/Request;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/bm;Z)V

    goto :goto_4

    :cond_2
    move v0, v3

    .line 2002
    goto :goto_1

    :cond_3
    move v0, v3

    .line 2005
    goto :goto_2

    :cond_4
    move v5, v3

    .line 2010
    goto :goto_5

    .line 2013
    :cond_5
    return-void

    :cond_6
    move v4, v3

    goto :goto_3

    :cond_7
    move-object v0, p1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/bm;Z)V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 2017
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2018
    const-class v3, Lcom/facebook/c/c;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2019
    check-cast v0, Lcom/facebook/c/c;

    invoke-interface {v0}, Lcom/facebook/c/c;->d()Lorg/json/JSONObject;

    move-result-object v1

    .line 2020
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 2026
    :cond_0
    :goto_1
    const-class v3, Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2027
    check-cast v0, Lorg/json/JSONObject;

    .line 2028
    if-eqz p3, :cond_2

    .line 2031
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 2032
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2033
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2034
    const-string v4, "%s[%s]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v2

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2035
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1, p2, p3}, Lcom/facebook/Request;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/bm;Z)V

    goto :goto_2

    .line 2021
    :cond_1
    const-class v3, Lcom/facebook/c/i;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2022
    check-cast v0, Lcom/facebook/c/i;

    invoke-interface {v0}, Lcom/facebook/c/i;->a()Lorg/json/JSONArray;

    move-result-object v1

    .line 2023
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_1

    .line 2040
    :cond_2
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2041
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2042
    :cond_3
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2043
    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2044
    :cond_4
    const-string v1, "fbsdk:create_object"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2045
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2048
    :cond_5
    const-class v3, Lorg/json/JSONArray;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2049
    check-cast v0, Lorg/json/JSONArray;

    .line 2050
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v2

    .line 2051
    :goto_3
    if-ge v1, v3, :cond_8

    .line 2052
    const-string v4, "%s[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2053
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, p2, p3}, Lcom/facebook/Request;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/bm;Z)V

    .line 2051
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2055
    :cond_6
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2058
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    :cond_8
    :goto_4
    return-void

    .line 2059
    :cond_9
    const-class v2, Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2060
    check-cast v0, Ljava/util/Date;

    .line 2066
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2067
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/bm;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static a(Ljava/util/Map;Lcom/facebook/bp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/bj;",
            ">;",
            "Lcom/facebook/bp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2083
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2085
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2086
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/bj;

    .line 2087
    invoke-virtual {v1}, Lcom/facebook/bj;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/Request;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2088
    invoke-virtual {v1}, Lcom/facebook/bj;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/bj;->a()Lcom/facebook/Request;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/facebook/bp;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V

    goto :goto_0

    .line 2091
    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/bj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1805
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1807
    iget-object v0, p0, Lcom/facebook/Request;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1808
    const-string v0, "name"

    iget-object v2, p0, Lcom/facebook/Request;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1809
    const-string v0, "omit_response_on_success"

    iget-boolean v2, p0, Lcom/facebook/Request;->i:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1811
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1812
    const-string v0, "depends_on"

    iget-object v2, p0, Lcom/facebook/Request;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1815
    :cond_1
    invoke-direct {p0}, Lcom/facebook/Request;->j()Ljava/lang/String;

    move-result-object v2

    .line 1816
    const-string v0, "relative_url"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1817
    const-string v0, "method"

    iget-object v3, p0, Lcom/facebook/Request;->d:Lcom/facebook/au;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1818
    iget-object v0, p0, Lcom/facebook/Request;->c:Lcom/facebook/by;

    if-eqz v0, :cond_2

    .line 1819
    iget-object v0, p0, Lcom/facebook/Request;->c:Lcom/facebook/by;

    invoke-virtual {v0}, Lcom/facebook/by;->e()Ljava/lang/String;

    move-result-object v0

    .line 1820
    invoke-static {v0}, Lcom/facebook/b/bv;->a(Ljava/lang/String;)V

    .line 1824
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1825
    iget-object v0, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1826
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1827
    iget-object v5, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1828
    invoke-static {v0}, Lcom/facebook/Request;->d(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1830
    const-string v5, "%s%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "file"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1831
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1832
    new-instance v6, Lcom/facebook/bj;

    invoke-direct {v6, p0, v0}, Lcom/facebook/bj;-><init>(Lcom/facebook/Request;Ljava/lang/Object;)V

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1836
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1837
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1838
    const-string v3, "attached_files"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1841
    :cond_5
    iget-object v0, p0, Lcom/facebook/Request;->f:Lcom/facebook/c/c;

    if-eqz v0, :cond_6

    .line 1843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1844
    iget-object v3, p0, Lcom/facebook/Request;->f:Lcom/facebook/c/c;

    new-instance v4, Lcom/facebook/bi;

    invoke-direct {v4, p0, v0}, Lcom/facebook/bi;-><init>(Lcom/facebook/Request;Ljava/util/ArrayList;)V

    invoke-static {v3, v2, v4}, Lcom/facebook/Request;->a(Lcom/facebook/c/c;Ljava/lang/String;Lcom/facebook/bm;)V

    .line 1850
    const-string v2, "&"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1851
    const-string v2, "body"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1854
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1855
    return-void
.end method

.method public static b(Lcom/facebook/br;)Lcom/facebook/bq;
    .locals 1

    .prologue
    .line 1517
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/b/cp;->c(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1519
    new-instance v0, Lcom/facebook/bq;

    invoke-direct {v0, p0}, Lcom/facebook/bq;-><init>(Lcom/facebook/br;)V

    .line 1520
    invoke-virtual {v0}, Lcom/facebook/bq;->a()Lcom/facebook/bq;

    .line 1521
    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 62
    invoke-static {p0}, Lcom/facebook/Request;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {p0}, Lcom/facebook/Request;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1725
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1727
    iget-object v0, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1728
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1729
    iget-object v1, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1731
    if-nez v1, :cond_1

    .line 1732
    const-string v1, ""

    .line 1735
    :cond_1
    invoke-static {v1}, Lcom/facebook/Request;->e(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1736
    invoke-static {v1}, Lcom/facebook/Request;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1745
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1738
    :cond_2
    iget-object v0, p0, Lcom/facebook/Request;->d:Lcom/facebook/au;

    sget-object v4, Lcom/facebook/au;->GET:Lcom/facebook/au;

    if-ne v0, v4, :cond_0

    .line 1739
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported parameter type for GET request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1748
    :cond_3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/facebook/br;)Ljava/net/HttpURLConnection;
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1339
    .line 1341
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/br;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1343
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/facebook/br;->a(I)Lcom/facebook/Request;

    move-result-object v5

    .line 1345
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v5}, Lcom/facebook/Request;->h()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    const-string v2, "User-Agent"

    sget-object v5, Lcom/facebook/Request;->p:Ljava/lang/String;

    if-nez v5, :cond_0

    const-string v5, "%s.%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v10, "FBAndroidSDK"

    aput-object v10, v6, v7

    const/4 v7, 0x1

    const-string v10, "3.20.0"

    aput-object v10, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/facebook/Request;->p:Ljava/lang/String;

    :cond_0
    sget-object v5, Lcom/facebook/Request;->p:Ljava/lang/String;

    invoke-virtual {v8, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v5, "multipart/form-data; boundary=%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v10, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v10, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1359
    new-instance v10, Lcom/facebook/b/bv;

    sget-object v2, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    const-string v5, "Request"

    invoke-direct {v10, v2, v5}, Lcom/facebook/b/bv;-><init>(Lcom/facebook/av;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/br;->size()I

    move-result v11

    if-ne v11, v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/facebook/br;->a(I)Lcom/facebook/Request;

    move-result-object v2

    iget-object v2, v2, Lcom/facebook/Request;->d:Lcom/facebook/au;

    :goto_1
    invoke-virtual {v2}, Lcom/facebook/au;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v12

    const-string v5, "Request:\n"

    invoke-virtual {v10, v5}, Lcom/facebook/b/bv;->b(Ljava/lang/String;)V

    const-string v5, "Id"

    invoke-virtual {p0}, Lcom/facebook/br;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Lcom/facebook/b/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "URL"

    invoke-virtual {v10, v5, v12}, Lcom/facebook/b/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "Method"

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Lcom/facebook/b/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "User-Agent"

    const-string v6, "User-Agent"

    invoke-virtual {v8, v6}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Lcom/facebook/b/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "Content-Type"

    const-string v6, "Content-Type"

    invoke-virtual {v8, v6}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Lcom/facebook/b/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/facebook/br;->a()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lcom/facebook/br;->a()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    sget-object v5, Lcom/facebook/au;->POST:Lcom/facebook/au;

    if-ne v2, v5, :cond_3

    move v2, v3

    :goto_2
    if-nez v2, :cond_4

    invoke-virtual {v10}, Lcom/facebook/b/bv;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1366
    :goto_3
    return-object v8

    .line 1349
    :cond_1
    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-static {}, Lcom/facebook/b/cf;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1351
    :catch_0
    move-exception v2

    .line 1352
    new-instance v3, Lcom/facebook/am;

    const-string v4, "could not construct URL for request"

    invoke-direct {v3, v4, v2}, Lcom/facebook/am;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1359
    :cond_2
    :try_start_3
    sget-object v2, Lcom/facebook/au;->POST:Lcom/facebook/au;

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-static {p0}, Lcom/facebook/Request;->d(Lcom/facebook/br;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/facebook/bd;

    invoke-virtual {p0}, Lcom/facebook/br;->c()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/bd;-><init>(Landroid/os/Handler;)V

    const/4 v3, 0x0

    invoke-static {p0, v3, v11, v12, v2}, Lcom/facebook/Request;->a(Lcom/facebook/br;Lcom/facebook/b/bv;ILjava/net/URL;Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Lcom/facebook/bd;->a()I

    move-result v4

    invoke-virtual {v2}, Lcom/facebook/bd;->b()Ljava/util/Map;

    move-result-object v5

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Lcom/facebook/be;

    int-to-long v6, v4

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/facebook/be;-><init>(Ljava/io/OutputStream;Lcom/facebook/br;Ljava/util/Map;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v2

    :goto_4
    :try_start_5
    invoke-static {p0, v10, v11, v12, v3}, Lcom/facebook/Request;->a(Lcom/facebook/br;Lcom/facebook/b/bv;ILjava/net/URL;Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v10}, Lcom/facebook/b/bv;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 1360
    :catch_1
    move-exception v2

    .line 1361
    new-instance v3, Lcom/facebook/am;

    const-string v4, "could not construct request body"

    invoke-direct {v3, v4, v2}, Lcom/facebook/am;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1359
    :cond_5
    :try_start_7
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v3, v9

    :goto_5
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_6
    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1362
    :catch_2
    move-exception v2

    .line 1363
    new-instance v3, Lcom/facebook/am;

    const-string v4, "could not construct request body"

    invoke-direct {v3, v4, v2}, Lcom/facebook/am;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1359
    :catchall_1
    move-exception v2

    goto :goto_5
.end method

.method private static d(Lcom/facebook/br;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1858
    invoke-virtual {p0}, Lcom/facebook/br;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bs;

    .line 1859
    instance-of v0, v0, Lcom/facebook/bt;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1870
    :goto_0
    return v0

    .line 1864
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/br;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 1865
    iget-object v0, v0, Lcom/facebook/Request;->k:Lcom/facebook/bk;

    instance-of v0, v0, Lcom/facebook/bn;

    if-eqz v0, :cond_2

    move v0, v1

    .line 1866
    goto :goto_0

    .line 1870
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2146
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Lcom/facebook/br;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2118
    invoke-virtual {p0}, Lcom/facebook/br;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2119
    invoke-virtual {p0}, Lcom/facebook/br;->f()Ljava/lang/String;

    move-result-object v0

    .line 2128
    :goto_0
    return-object v0

    .line 2122
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/br;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 2123
    iget-object v0, v0, Lcom/facebook/Request;->c:Lcom/facebook/by;

    .line 2124
    if-eqz v0, :cond_1

    .line 2125
    invoke-virtual {v0}, Lcom/facebook/by;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2128
    :cond_2
    sget-object v0, Lcom/facebook/Request;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private static e(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2151
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2156
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2157
    check-cast p0, Ljava/lang/String;

    .line 2162
    :goto_0
    return-object p0

    .line 2158
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 2159
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2160
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 2161
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2162
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2164
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/facebook/Request;->c:Lcom/facebook/by;

    if-eqz v0, :cond_2

    .line 1702
    iget-object v0, p0, Lcom/facebook/Request;->c:Lcom/facebook/by;

    invoke-virtual {v0}, Lcom/facebook/by;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1703
    new-instance v0, Lcom/facebook/am;

    const-string v1, "Session provided to a Request in un-opened state."

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1705
    iget-object v0, p0, Lcom/facebook/Request;->c:Lcom/facebook/by;

    invoke-virtual {v0}, Lcom/facebook/by;->e()Ljava/lang/String;

    move-result-object v0

    .line 1706
    invoke-static {v0}, Lcom/facebook/b/bv;->a(Ljava/lang/String;)V

    .line 1707
    iget-object v1, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    iget-object v0, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    return-void

    .line 1709
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/Request;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1710
    invoke-static {}, Lcom/facebook/cu;->h()Ljava/lang/String;

    move-result-object v0

    .line 1711
    invoke-static {}, Lcom/facebook/cu;->i()Ljava/lang/String;

    move-result-object v1

    .line 1712
    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1713
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1714
    iget-object v1, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1716
    :cond_3
    sget-object v0, Lcom/facebook/Request;->TAG:Ljava/lang/String;

    goto :goto_0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/facebook/Request;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1753
    new-instance v0, Lcom/facebook/am;

    const-string v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1756
    :cond_0
    invoke-direct {p0}, Lcom/facebook/Request;->k()Ljava/lang/String;

    move-result-object v0

    .line 1757
    invoke-direct {p0}, Lcom/facebook/Request;->i()V

    .line 1758
    invoke-direct {p0, v0}, Lcom/facebook/Request;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1779
    sget-object v0, Lcom/facebook/Request;->b:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/facebook/Request;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1780
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/facebook/Request;->e:Ljava/lang/String;

    .line 1783
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/Request;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/Request;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/facebook/c/c;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/facebook/Request;->f:Lcom/facebook/c/c;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    .line 933
    return-void
.end method

.method public final a(Lcom/facebook/bk;)V
    .locals 0

    .prologue
    .line 1063
    iput-object p1, p0, Lcom/facebook/Request;->k:Lcom/facebook/bk;

    .line 1064
    return-void
.end method

.method public final a(Lcom/facebook/c/c;)V
    .locals 0

    .prologue
    .line 845
    iput-object p1, p0, Lcom/facebook/Request;->f:Lcom/facebook/c/c;

    .line 846
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/facebook/Request;->m:Ljava/lang/Object;

    .line 1074
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request;->o:Z

    .line 914
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/facebook/Request;->n:Ljava/lang/String;

    .line 907
    return-void
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public final d()Lcom/facebook/by;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/facebook/Request;->c:Lcom/facebook/by;

    return-object v0
.end method

.method public final e()Lcom/facebook/bk;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/facebook/Request;->k:Lcom/facebook/bk;

    return-object v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/facebook/Request;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final g()Lcom/facebook/bx;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1269
    new-array v0, v3, [Lcom/facebook/Request;

    aput-object p0, v0, v2

    const-string v1, "requests"

    invoke-static {v0, v1}, Lcom/facebook/b/cp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/facebook/br;

    invoke-direct {v1, v0}, Lcom/facebook/br;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/facebook/Request;->a(Lcom/facebook/br;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_0
    new-instance v0, Lcom/facebook/am;

    const-string v1, "invalid state: expected a single response"

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/bx;

    return-object v0
.end method

.method final h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/facebook/Request;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Lcom/facebook/Request;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1775
    :goto_0
    return-object v0

    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request;->d:Lcom/facebook/au;

    sget-object v1, Lcom/facebook/au;->POST:Lcom/facebook/au;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/Request;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/Request;->e:Ljava/lang/String;

    const-string v1, "/videos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1768
    invoke-static {}, Lcom/facebook/b/cf;->c()Ljava/lang/String;

    move-result-object v0

    .line 1772
    :goto_1
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/facebook/Request;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1774
    invoke-direct {p0}, Lcom/facebook/Request;->i()V

    .line 1775
    invoke-direct {p0, v0}, Lcom/facebook/Request;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1770
    :cond_1
    invoke-static {}, Lcom/facebook/b/cf;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Request:  session: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/Request;->c:Lcom/facebook/by;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->f:Lcom/facebook/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->d:Lcom/facebook/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
