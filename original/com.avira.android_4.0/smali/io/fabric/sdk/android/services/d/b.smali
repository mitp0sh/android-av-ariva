.class public final Lio/fabric/sdk/android/services/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/d/m;


# static fields
.field private static final HTTPS:Ljava/lang/String; = "https"


# instance fields
.field private final a:Lio/fabric/sdk/android/q;

.field private b:Lio/fabric/sdk/android/services/d/n;

.field private c:Ljavax/net/ssl/SSLSocketFactory;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lio/fabric/sdk/android/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/a;-><init>(B)V

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/d/b;-><init>(Lio/fabric/sdk/android/q;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/q;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/fabric/sdk/android/services/d/b;->a:Lio/fabric/sdk/android/q;

    .line 37
    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lio/fabric/sdk/android/services/d/b;->d:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lio/fabric/sdk/android/services/d/b;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/d/b;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/d/b;->d:Z

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lio/fabric/sdk/android/services/d/b;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/d/b;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 108
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/d/b;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 112
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/fabric/sdk/android/services/d/b;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/d/b;->b:Lio/fabric/sdk/android/services/d/n;

    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    new-instance v3, Lio/fabric/sdk/android/services/d/p;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/d/n;->getKeyStoreStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {v0}, Lio/fabric/sdk/android/services/d/n;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lio/fabric/sdk/android/services/d/p;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v4, Lio/fabric/sdk/android/services/d/o;

    invoke-direct {v4, v3, v0}, Lio/fabric/sdk/android/services/d/o;-><init>(Lio/fabric/sdk/android/services/d/p;Lio/fabric/sdk/android/services/d/n;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 117
    iget-object v2, p0, Lio/fabric/sdk/android/services/d/b;->a:Lio/fabric/sdk/android/q;

    invoke-interface {v2}, Lio/fabric/sdk/android/q;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_0
    monitor-exit p0

    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    :try_start_2
    iget-object v2, p0, Lio/fabric/sdk/android/services/d/b;->a:Lio/fabric/sdk/android/q;

    const-string v3, "Fabric"

    const-string v4, "Exception while validating pinned certs"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 122
    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lio/fabric/sdk/android/services/d/d;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/fabric/sdk/android/services/d/b;->a(Lio/fabric/sdk/android/services/d/d;Ljava/lang/String;Ljava/util/Map;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/fabric/sdk/android/services/d/d;Ljava/lang/String;Ljava/util/Map;)Lio/fabric/sdk/android/services/d/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/d/d;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/fabric/sdk/android/services/d/e;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lio/fabric/sdk/android/services/d/c;->$SwitchMap$io$fabric$sdk$android$services$network$HttpMethod:[I

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/d/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported HTTP method!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_0
    invoke-static {p2, p3}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/CharSequence;Ljava/util/Map;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    move-object v1, v0

    .line 88
    :goto_0
    if-eqz p2, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/services/d/b;->b:Lio/fabric/sdk/android/services/d/n;

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lio/fabric/sdk/android/services/d/b;->b()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/d/e;->a()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 97
    :cond_0
    return-object v1

    .line 72
    :pswitch_1
    invoke-static {p2, p3}, Lio/fabric/sdk/android/services/d/e;->b(Ljava/lang/CharSequence;Ljava/util/Map;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    move-object v1, v0

    .line 73
    goto :goto_0

    .line 76
    :pswitch_2
    invoke-static {p2}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    move-object v1, v0

    .line 77
    goto :goto_0

    .line 80
    :pswitch_3
    invoke-static {p2}, Lio/fabric/sdk/android/services/d/e;->b(Ljava/lang/CharSequence;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    move-object v1, v0

    .line 81
    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lio/fabric/sdk/android/services/d/n;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lio/fabric/sdk/android/services/d/b;->b:Lio/fabric/sdk/android/services/d/n;

    if-eq v0, p1, :cond_0

    .line 47
    iput-object p1, p0, Lio/fabric/sdk/android/services/d/b;->b:Lio/fabric/sdk/android/services/d/n;

    .line 48
    invoke-direct {p0}, Lio/fabric/sdk/android/services/d/b;->a()V

    .line 50
    :cond_0
    return-void
.end method
