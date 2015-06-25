.class public final Lcom/facebook/b/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHE_READ_QUEUE_MAX_CONCURRENT:I = 0x2

.field private static final DOWNLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static a:Landroid/os/Handler;

.field private static b:Lcom/facebook/b/cq;

.field private static c:Lcom/facebook/b/cq;

.field private static final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/b/ag;",
            "Lcom/facebook/b/af;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/facebook/b/cq;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/b/cq;-><init>(I)V

    sput-object v0, Lcom/facebook/b/ab;->b:Lcom/facebook/b/cq;

    .line 42
    new-instance v0, Lcom/facebook/b/cq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/b/cq;-><init>(I)V

    sput-object v0, Lcom/facebook/b/ab;->c:Lcom/facebook/b/cq;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/b/ab;->pendingRequests:Ljava/util/Map;

    return-void
.end method

.method private static declared-synchronized a()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 281
    const-class v1, Lcom/facebook/b/ab;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/b/ab;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/b/ab;->a:Landroid/os/Handler;

    .line 284
    :cond_0
    sget-object v0, Lcom/facebook/b/ab;->a:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/facebook/b/ag;)Lcom/facebook/b/af;
    .locals 2

    .prologue
    .line 288
    sget-object v1, Lcom/facebook/b/ab;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 289
    :try_start_0
    sget-object v0, Lcom/facebook/b/ab;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/b/af;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 109
    invoke-static {p0}, Lcom/facebook/b/al;->a(Landroid/content/Context;)V

    .line 110
    invoke-static {p0}, Lcom/facebook/b/ck;->a(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/facebook/b/ag;Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 37
    const/4 v1, 0x1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/facebook/b/ag;->a:Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v5

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v5, :cond_3

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x80

    new-array v7, v7, [C

    :goto_0
    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual {v4, v7, v8, v9}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v8

    if-lez v8, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    :goto_1
    invoke-static {v5}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/facebook/b/cl;->a(Ljava/net/URLConnection;)V

    :goto_2
    if-eqz v1, :cond_0

    invoke-static {p0, v0, v3, v2}, Lcom/facebook/b/ab;->a(Lcom/facebook/b/ag;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    :cond_0
    return-void

    :sswitch_0
    :try_start_3
    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/b/ag;->a:Ljava/net/URI;

    invoke-static {p1, v1, v4}, Lcom/facebook/b/ck;->a(Landroid/content/Context;Ljava/net/URI;Ljava/net/URI;)V

    invoke-static {p0}, Lcom/facebook/b/ab;->a(Lcom/facebook/b/ag;)Lcom/facebook/b/af;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v5, v1, Lcom/facebook/b/af;->c:Z

    if-nez v5, :cond_1

    iget-object v1, v1, Lcom/facebook/b/af;->b:Lcom/facebook/b/ah;

    new-instance v5, Lcom/facebook/b/ag;

    iget-object v6, p0, Lcom/facebook/b/ag;->b:Ljava/lang/Object;

    invoke-direct {v5, v4, v6}, Lcom/facebook/b/ag;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-static {v1, v5, v4}, Lcom/facebook/b/ab;->a(Lcom/facebook/b/ah;Lcom/facebook/b/ag;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    move v1, v2

    move-object v4, v3

    move-object v5, v3

    :goto_3
    invoke-static {v5}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/net/URLConnection;)V

    move-object v0, v4

    goto :goto_2

    :sswitch_1
    :try_start_4
    invoke-static {p1, v0}, Lcom/facebook/b/al;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v5

    :try_start_5
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_3

    :cond_2
    invoke-static {v4}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    :goto_4
    new-instance v4, Lcom/facebook/am;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    :goto_5
    invoke-static {v5}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/facebook/b/cl;->a(Ljava/net/URLConnection;)V

    goto :goto_2

    :cond_3
    :try_start_6
    sget v4, Lcom/facebook/a/g;->com_facebook_image_download_unknown_error:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v3, v5

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_6
    invoke-static {v3}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/net/URLConnection;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v5, v3

    move-object v4, v3

    goto :goto_5

    :catch_3
    move-exception v4

    move-object v5, v3

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v5, v3

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v5, v3

    move-object v4, v3

    goto/16 :goto_1

    :catch_6
    move-exception v4

    move-object v5, v3

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto/16 :goto_1

    :catch_7
    move-exception v1

    move-object v5, v3

    move-object v4, v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_1

    :cond_4
    move v1, v2

    move-object v4, v3

    move-object v5, v3

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/facebook/b/ag;Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 37
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/facebook/b/ag;->a:Ljava/net/URI;

    invoke-static {p1, v1}, Lcom/facebook/b/ck;->a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1, p1}, Lcom/facebook/b/al;->a(Ljava/net/URI;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/facebook/b/ag;->a:Ljava/net/URI;

    invoke-static {v0, p1}, Lcom/facebook/b/al;->a(Ljava/net/URI;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    invoke-static {p0, v2, v3, v1}, Lcom/facebook/b/ab;->a(Lcom/facebook/b/ag;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {p0}, Lcom/facebook/b/ab;->a(Lcom/facebook/b/ag;)Lcom/facebook/b/af;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/facebook/b/af;->c:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/facebook/b/af;->b:Lcom/facebook/b/ah;

    sget-object v1, Lcom/facebook/b/ab;->b:Lcom/facebook/b/cq;

    new-instance v2, Lcom/facebook/b/ae;

    invoke-virtual {v0}, Lcom/facebook/b/ah;->a()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/facebook/b/ae;-><init>(Landroid/content/Context;Lcom/facebook/b/ag;)V

    invoke-static {v0, p0, v1, v2}, Lcom/facebook/b/ab;->a(Lcom/facebook/b/ah;Lcom/facebook/b/ag;Lcom/facebook/b/cq;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method private static a(Lcom/facebook/b/ag;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 7

    .prologue
    .line 157
    invoke-static {p0}, Lcom/facebook/b/ab;->a(Lcom/facebook/b/ag;)Lcom/facebook/b/af;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/facebook/b/af;->c:Z

    if-nez v1, :cond_0

    .line 159
    iget-object v1, v0, Lcom/facebook/b/af;->b:Lcom/facebook/b/ah;

    .line 160
    invoke-virtual {v1}, Lcom/facebook/b/ah;->c()Lcom/facebook/b/aj;

    move-result-object v5

    .line 161
    if-eqz v5, :cond_0

    .line 162
    invoke-static {}, Lcom/facebook/b/ab;->a()Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/facebook/b/ac;

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/b/ac;-><init>(Lcom/facebook/b/ah;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/b/aj;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_0
    return-void
.end method

.method public static a(Lcom/facebook/b/ah;)V
    .locals 3

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v1, Lcom/facebook/b/ag;

    invoke-virtual {p0}, Lcom/facebook/b/ah;->b()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/b/ah;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/facebook/b/ag;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    .line 62
    sget-object v2, Lcom/facebook/b/ab;->pendingRequests:Ljava/util/Map;

    monitor-enter v2

    .line 63
    :try_start_0
    sget-object v0, Lcom/facebook/b/ab;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/b/af;

    .line 64
    if-eqz v0, :cond_1

    .line 65
    iput-object p0, v0, Lcom/facebook/b/af;->b:Lcom/facebook/b/ah;

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/facebook/b/af;->c:Z

    .line 67
    iget-object v0, v0, Lcom/facebook/b/af;->a:Lcom/facebook/b/cs;

    invoke-interface {v0}, Lcom/facebook/b/cs;->b()V

    .line 71
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 69
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/b/ah;->d()Z

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/facebook/b/ab;->a(Lcom/facebook/b/ah;Lcom/facebook/b/ag;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static a(Lcom/facebook/b/ah;Lcom/facebook/b/ag;Lcom/facebook/b/cq;Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 134
    sget-object v1, Lcom/facebook/b/ab;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 135
    :try_start_0
    new-instance v0, Lcom/facebook/b/af;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/facebook/b/af;-><init>(B)V

    .line 136
    iput-object p0, v0, Lcom/facebook/b/af;->b:Lcom/facebook/b/ah;

    .line 137
    sget-object v2, Lcom/facebook/b/ab;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p2, p3}, Lcom/facebook/b/cq;->a(Ljava/lang/Runnable;)Lcom/facebook/b/cs;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/b/af;->a:Lcom/facebook/b/cs;

    .line 147
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/facebook/b/ah;Lcom/facebook/b/ag;Z)V
    .locals 3

    .prologue
    .line 114
    sget-object v0, Lcom/facebook/b/ab;->c:Lcom/facebook/b/cq;

    new-instance v1, Lcom/facebook/b/ad;

    invoke-virtual {p0}, Lcom/facebook/b/ah;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/b/ad;-><init>(Landroid/content/Context;Lcom/facebook/b/ag;Z)V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/b/ab;->a(Lcom/facebook/b/ah;Lcom/facebook/b/ag;Lcom/facebook/b/cq;Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public static b(Lcom/facebook/b/ah;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 75
    const/4 v2, 0x0

    .line 76
    new-instance v3, Lcom/facebook/b/ag;

    invoke-virtual {p0}, Lcom/facebook/b/ah;->b()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/b/ah;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/facebook/b/ag;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    .line 77
    sget-object v4, Lcom/facebook/b/ab;->pendingRequests:Ljava/util/Map;

    monitor-enter v4

    .line 78
    :try_start_0
    sget-object v0, Lcom/facebook/b/ab;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/b/af;

    .line 79
    if-eqz v0, :cond_1

    .line 85
    iget-object v2, v0, Lcom/facebook/b/af;->a:Lcom/facebook/b/cs;

    invoke-interface {v2}, Lcom/facebook/b/cs;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    sget-object v0, Lcom/facebook/b/ab;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 93
    :goto_0
    monitor-exit v4

    .line 95
    return v0

    .line 90
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/facebook/b/af;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
