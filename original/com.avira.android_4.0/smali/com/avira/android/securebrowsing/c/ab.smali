.class public Lcom/avira/android/securebrowsing/c/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static b:Lcom/avira/android/securebrowsing/c/ab;

.field private static c:Lcom/avira/android/securebrowsing/c/x;


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final d:Lcom/avira/android/securebrowsing/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/android/securebrowsing/c/ab;->b:Lcom/avira/android/securebrowsing/c/ab;

    .line 36
    const-class v0, Lcom/avira/android/securebrowsing/c/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/securebrowsing/c/ab;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/ab;->a:Ljava/util/concurrent/ExecutorService;

    .line 41
    new-instance v0, Lcom/avira/android/securebrowsing/a/e;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/a/e;-><init>(Landroid/content/Context;Lcom/avira/android/database/h;)V

    .line 43
    new-instance v1, Lcom/avira/android/securebrowsing/a/a;

    new-instance v2, Lcom/avira/android/securebrowsing/a/d;

    invoke-static {}, Lcom/avira/android/common/web/o;->a()Lcom/avira/android/common/web/o;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/avira/android/securebrowsing/a/d;-><init>(Lcom/avira/android/securebrowsing/a/e;Lcom/avira/android/common/web/o;)V

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/avira/android/securebrowsing/a/a;-><init>(Lcom/avira/android/securebrowsing/a/f;Lcom/avira/android/utilities/t;)V

    iput-object v1, p0, Lcom/avira/android/securebrowsing/c/ab;->d:Lcom/avira/android/securebrowsing/a/f;

    .line 45
    new-instance v0, Lcom/avira/android/securebrowsing/c/w;

    invoke-direct {v0}, Lcom/avira/android/securebrowsing/c/w;-><init>()V

    sput-object v0, Lcom/avira/android/securebrowsing/c/ab;->c:Lcom/avira/android/securebrowsing/c/x;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/avira/android/securebrowsing/c/ab;)Lcom/avira/android/securebrowsing/a/f;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/ab;->d:Lcom/avira/android/securebrowsing/a/f;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/avira/android/securebrowsing/c/ab;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/avira/android/securebrowsing/c/ab;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/securebrowsing/c/ab;->b:Lcom/avira/android/securebrowsing/c/ab;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/avira/android/securebrowsing/c/ab;

    invoke-direct {v0}, Lcom/avira/android/securebrowsing/c/ab;-><init>()V

    sput-object v0, Lcom/avira/android/securebrowsing/c/ab;->b:Lcom/avira/android/securebrowsing/c/ab;

    .line 59
    :cond_0
    sget-object v0, Lcom/avira/android/securebrowsing/c/ab;->b:Lcom/avira/android/securebrowsing/c/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lorg/json/JSONObject;)Lcom/avira/android/securebrowsing/c/y;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/avira/android/securebrowsing/c/ab;->b(Lorg/json/JSONObject;)Lcom/avira/android/securebrowsing/c/y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Lcom/avira/android/securebrowsing/c/y;Lcom/avira/android/securebrowsing/c/v;)Z
    .locals 3

    .prologue
    .line 29
    invoke-static {p0}, Lcom/avira/android/securebrowsing/c/t;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/avira/android/securebrowsing/c/y;->a(Lcom/avira/android/securebrowsing/c/y;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/avira/android/securebrowsing/c/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/avira/android/securebrowsing/c/t;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data:text/html;charset=utf-8;base64,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/avira/android/securebrowsing/c/ae;->a(Landroid/content/Context;Lcom/avira/android/securebrowsing/c/v;Landroid/net/Uri;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/securebrowsing/c/ab;->TAG:Ljava/lang/String;

    const-string v2, "Error in generating Mediator Content"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/avira/android/securebrowsing/c/y;
    .locals 4

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 83
    :try_start_0
    sget-object v0, Lcom/avira/android/securebrowsing/c/y;->UNKNOWN:Lcom/avira/android/securebrowsing/c/y;

    .line 100
    :goto_0
    return-object v0

    .line 85
    :cond_0
    const-string v0, "categories"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v1, Lcom/avira/android/securebrowsing/c/ab;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCategoryId - categories = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 92
    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/y;->a(I)Lcom/avira/android/securebrowsing/c/y;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/securebrowsing/c/ab;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected Error in retrieving URL category."

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/avira/android/securebrowsing/c/y;->UNKNOWN:Lcom/avira/android/securebrowsing/c/y;

    goto :goto_0

    .line 100
    :cond_1
    sget-object v0, Lcom/avira/android/securebrowsing/c/y;->UNKNOWN:Lcom/avira/android/securebrowsing/c/y;

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/avira/android/securebrowsing/c/ab;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/avira/android/securebrowsing/c/ab;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ljava/lang/String;Lcom/avira/android/securebrowsing/c/y;Lcom/avira/android/securebrowsing/c/v;)Z
    .locals 3

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/avira/android/securebrowsing/c/t;->a(Ljava/lang/String;Lcom/avira/android/securebrowsing/c/y;Lcom/avira/android/securebrowsing/c/v;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/avira/android/securebrowsing/c/ae;->a(Landroid/content/Context;Lcom/avira/android/securebrowsing/c/v;Landroid/net/Uri;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/securebrowsing/c/ab;->TAG:Ljava/lang/String;

    const-string v2, "Error in generating BlockPage Url"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Lcom/avira/android/securebrowsing/c/x;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/avira/android/securebrowsing/c/ab;->c:Lcom/avira/android/securebrowsing/c/x;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/avira/android/securebrowsing/c/ab;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 114
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/avira/android/securebrowsing/c/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 120
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 135
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 141
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/avira/android/securebrowsing/c/v;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/ab;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/avira/android/securebrowsing/c/ad;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/avira/android/securebrowsing/c/ad;-><init>(Lcom/avira/android/securebrowsing/c/ab;Lcom/avira/android/securebrowsing/c/v;Landroid/net/Uri;B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/avira/android/securebrowsing/c/ab;->c:Lcom/avira/android/securebrowsing/c/x;

    invoke-interface {v0, p1}, Lcom/avira/android/securebrowsing/c/x;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 189
    monitor-enter p0

    :try_start_0
    invoke-static {p4, p1}, Lcom/avira/android/securebrowsing/c/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    sget-object v2, Lcom/avira/android/securebrowsing/c/ab;->TAG:Ljava/lang/String;

    const-string v3, "Invalid Session Detected. Abort launching Block Page."

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :goto_0
    monitor-exit p0

    return v0

    .line 195
    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3, p4}, Lcom/avira/android/securebrowsing/c/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v1}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {p3}, Lcom/avira/android/securebrowsing/c/v;->a(Ljava/lang/String;)Lcom/avira/android/securebrowsing/c/v;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/avira/android/securebrowsing/c/ae;->a(Landroid/content/Context;Lcom/avira/android/securebrowsing/c/v;Landroid/net/Uri;)V

    .line 200
    const/4 v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    sget-object v2, Lcom/avira/android/securebrowsing/c/ab;->TAG:Ljava/lang/String;

    const-string v3, "Error in forming BlockPage Url"

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
