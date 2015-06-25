.class public final Lcom/avira/applock/common/web/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/avira/applock/common/web/b;


# instance fields
.field private final b:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 53
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 72
    :goto_0
    new-instance v1, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 74
    new-instance v0, Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {v2}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    invoke-direct {v0, v2, v1}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    iput-object v0, p0, Lcom/avira/applock/common/web/b;->b:Lcom/android/volley/RequestQueue;

    .line 75
    iget-object v0, p0, Lcom/avira/applock/common/web/b;->b:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->start()V

    .line 76
    return-void

    .line 57
    :cond_0
    const-string v0, "volley/0"

    .line 60
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_1
    new-instance v1, Lcom/android/volley/toolbox/HttpClientStack;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    move-object v0, v1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/avira/applock/common/web/b;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/avira/applock/common/web/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/applock/common/web/b;->a:Lcom/avira/applock/common/web/b;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/avira/applock/common/web/b;

    invoke-direct {v0, p0}, Lcom/avira/applock/common/web/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/avira/applock/common/web/b;->a:Lcom/avira/applock/common/web/b;

    .line 45
    :cond_0
    sget-object v0, Lcom/avira/applock/common/web/b;->a:Lcom/avira/applock/common/web/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;)V
    .locals 7

    .prologue
    .line 90
    const/16 v4, 0x9c4

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/avira/applock/common/web/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;IIF)V

    .line 92
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/avira/applock/common/web/a;IIF)V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/avira/applock/common/web/c;

    invoke-direct {v0, p2, p1, p3}, Lcom/avira/applock/common/web/c;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/avira/applock/common/web/a;)V

    .line 115
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v1, p4, p5, p6}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/web/c;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 117
    iget-object v1, p0, Lcom/avira/applock/common/web/b;->b:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 118
    return-void
.end method
