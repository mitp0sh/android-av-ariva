.class public final Lcom/google/android/gms/internal/fc;
.super Lcom/google/android/gms/internal/en;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/el;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/en;-><init>(Lcom/google/android/gms/internal/el;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 7

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1, v0}, Lcom/google/android/gms/internal/dz;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/dz;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string v3, "application/javascript"

    const-string v4, "UTF-8"

    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3, v4, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
.end method


# virtual methods
.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mraid.js"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/en;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/el;

    if-nez v1, :cond_1

    const-string v1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    invoke-static {v1}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/en;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/el;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/el;->bb()Lcom/google/android/gms/internal/en;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/en;->d()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/el;->Q()Lcom/google/android/gms/internal/ab;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ab;->e:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/ej;->a(I)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/el;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fc;->a:Lcom/google/android/gms/internal/el;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/el;->bd()Lcom/google/android/gms/internal/db;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;

    const-string v3, "http://media.admob.com/mraid/v1/mraid_app_interstitial.js"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/fc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/el;->be()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/ej;->a(I)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/el;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fc;->a:Lcom/google/android/gms/internal/el;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/el;->bd()Lcom/google/android/gms/internal/db;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;

    const-string v3, "http://media.admob.com/mraid/v1/mraid_app_expanded_banner.js"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/fc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/ej;->a(I)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/el;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fc;->a:Lcom/google/android/gms/internal/el;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/el;->bd()Lcom/google/android/gms/internal/db;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;

    const-string v3, "http://media.admob.com/mraid/v1/mraid_app_banner.js"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/fc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not fetching MRAID JS. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/en;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    goto/16 :goto_0
.end method
