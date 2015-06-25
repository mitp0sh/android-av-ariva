.class public abstract Lcom/avira/android/securebrowsing/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field private static final QUERY_STRING_PARAMETER:Ljava/lang/String; = "NanoHttpd.QUERY_STRING"

.field public static final SOCKET_READ_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "NanoHTTPD"

.field private static f:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Ljava/net/ServerSocket;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Thread;

.field private g:Lcom/avira/android/securebrowsing/c/d;

.field private h:Lcom/avira/android/securebrowsing/c/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-string v0, ""

    sput-object v0, Lcom/avira/android/securebrowsing/c/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->d:Ljava/util/Set;

    .line 112
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "NanoHTTPD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NanoHTTPD port: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/avira/android/utilities/c;->a()Ljava/net/InetAddress;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->a:Ljava/lang/String;

    .line 116
    iput p2, p0, Lcom/avira/android/securebrowsing/c/a;->b:I

    .line 117
    new-instance v0, Lcom/avira/android/securebrowsing/c/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avira/android/securebrowsing/c/j;-><init>(Lcom/avira/android/securebrowsing/c/a;B)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->h:Lcom/avira/android/securebrowsing/c/s;

    .line 118
    new-instance v0, Lcom/avira/android/securebrowsing/c/g;

    invoke-direct {v0}, Lcom/avira/android/securebrowsing/c/g;-><init>()V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->g:Lcom/avira/android/securebrowsing/c/d;

    .line 119
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 181
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "NanoHTTPD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAppDir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/avira/android/securebrowsing/c/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/avira/android/securebrowsing/c/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/securebrowsing/c/a;)Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->c:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 60
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 170
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "NanoHTTPD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAppDir "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sput-object p0, Lcom/avira/android/securebrowsing/c/a;->f:Ljava/lang/String;

    .line 172
    return-void
.end method

.method static synthetic b(Lcom/avira/android/securebrowsing/c/a;)Lcom/avira/android/securebrowsing/c/s;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->h:Lcom/avira/android/securebrowsing/c/s;

    return-object v0
.end method

.method protected static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 393
    :try_start_0
    const-string v1, "UTF8"

    invoke-static {p0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/avira/android/securebrowsing/c/a;)Lcom/avira/android/securebrowsing/c/d;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->g:Lcom/avira/android/securebrowsing/c/d;

    return-object v0
.end method

.method static synthetic c(Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0}, Lcom/avira/android/securebrowsing/c/a;->d(Ljava/net/Socket;)V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 2

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 307
    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->d(Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 309
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private static final d(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 137
    if-eqz p0, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/avira/android/securebrowsing/c/l;)Lcom/avira/android/securebrowsing/c/n;
    .locals 6

    .prologue
    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 358
    invoke-interface {p1}, Lcom/avira/android/securebrowsing/c/l;->f()Lcom/avira/android/securebrowsing/c/m;

    move-result-object v1

    .line 359
    sget-object v2, Lcom/avira/android/securebrowsing/c/m;->PUT:Lcom/avira/android/securebrowsing/c/m;

    invoke-virtual {v2, v1}, Lcom/avira/android/securebrowsing/c/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/avira/android/securebrowsing/c/m;->POST:Lcom/avira/android/securebrowsing/c/m;

    invoke-virtual {v2, v1}, Lcom/avira/android/securebrowsing/c/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Lcom/avira/android/securebrowsing/c/l;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/avira/android/securebrowsing/c/p; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    :cond_1
    invoke-interface {p1}, Lcom/avira/android/securebrowsing/c/l;->b()Ljava/util/Map;

    move-result-object v0

    .line 377
    const-string v2, "NanoHttpd.QUERY_STRING"

    invoke-interface {p1}, Lcom/avira/android/securebrowsing/c/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-interface {p1}, Lcom/avira/android/securebrowsing/c/l;->e()Ljava/lang/String;

    invoke-interface {p1}, Lcom/avira/android/securebrowsing/c/l;->d()Ljava/util/Map;

    invoke-virtual {p0, v1, v0}, Lcom/avira/android/securebrowsing/c/a;->a(Lcom/avira/android/securebrowsing/c/m;Ljava/util/Map;)Lcom/avira/android/securebrowsing/c/n;

    move-result-object v0

    :goto_0
    return-object v0

    .line 365
    :catch_0
    move-exception v1

    .line 367
    new-instance v0, Lcom/avira/android/securebrowsing/c/n;

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->INTERNAL_ERROR:Lcom/avira/android/securebrowsing/c/o;

    const-string v3, "text/plain"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/avira/android/securebrowsing/c/n;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :catch_1
    move-exception v1

    .line 372
    new-instance v0, Lcom/avira/android/securebrowsing/c/n;

    invoke-virtual {v1}, Lcom/avira/android/securebrowsing/c/p;->a()Lcom/avira/android/securebrowsing/c/o;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-virtual {v1}, Lcom/avira/android/securebrowsing/c/p;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/avira/android/securebrowsing/c/n;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/avira/android/securebrowsing/c/m;Ljava/util/Map;)Lcom/avira/android/securebrowsing/c/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avira/android/securebrowsing/c/m;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avira/android/securebrowsing/c/n;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 344
    new-instance v0, Lcom/avira/android/securebrowsing/c/n;

    sget-object v1, Lcom/avira/android/securebrowsing/c/o;->NOT_FOUND:Lcom/avira/android/securebrowsing/c/o;

    const-string v2, "text/plain"

    const-string v3, "Not Found"

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/securebrowsing/c/n;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 195
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0}, Ljava/net/ServerSocket;-><init>()V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->c:Ljava/net/ServerSocket;

    .line 196
    invoke-static {}, Lcom/avira/android/utilities/c;->a()Ljava/net/InetAddress;

    move-result-object v1

    .line 198
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v2, p0, Lcom/avira/android/securebrowsing/c/a;->b:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 200
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v2, "NanoHTTPD"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Server will be started on address "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/a;->c:Ljava/net/ServerSocket;

    iget-object v2, p0, Lcom/avira/android/securebrowsing/c/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 203
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avira/android/securebrowsing/c/b;

    invoke-direct {v1, p0}, Lcom/avira/android/securebrowsing/c/b;-><init>(Lcom/avira/android/securebrowsing/c/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->e:Ljava/lang/Thread;

    .line 256
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->e:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 257
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->e:Ljava/lang/Thread;

    const-string v1, "NanoHttpd Main Listener"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 259
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v2, p0, Lcom/avira/android/securebrowsing/c/a;->b:I

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0
.end method

.method public final declared-synchronized b(Ljava/net/Socket;)V
    .locals 1

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->c:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    :cond_0
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/avira/android/securebrowsing/c/a;->d()V

    .line 270
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 275
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 274
    :catch_1
    move-exception v0

    goto :goto_1
.end method
