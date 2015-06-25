.class final Lcom/avira/android/securebrowsing/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/net/Socket;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:Lcom/avira/android/securebrowsing/c/b;


# direct methods
.method constructor <init>(Lcom/avira/android/securebrowsing/c/b;Ljava/net/Socket;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/avira/android/securebrowsing/c/c;->c:Lcom/avira/android/securebrowsing/c/b;

    iput-object p2, p0, Lcom/avira/android/securebrowsing/c/c;->a:Ljava/net/Socket;

    iput-object p3, p0, Lcom/avira/android/securebrowsing/c/c;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 221
    const/4 v4, 0x0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/c;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 225
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/c;->c:Lcom/avira/android/securebrowsing/c/b;

    iget-object v0, v0, Lcom/avira/android/securebrowsing/c/b;->a:Lcom/avira/android/securebrowsing/c/a;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->b(Lcom/avira/android/securebrowsing/c/a;)Lcom/avira/android/securebrowsing/c/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/securebrowsing/c/s;->a()Lcom/avira/android/securebrowsing/c/r;

    move-result-object v2

    .line 226
    new-instance v0, Lcom/avira/android/securebrowsing/c/k;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/c;->c:Lcom/avira/android/securebrowsing/c/b;

    iget-object v1, v1, Lcom/avira/android/securebrowsing/c/b;->a:Lcom/avira/android/securebrowsing/c/a;

    iget-object v3, p0, Lcom/avira/android/securebrowsing/c/c;->b:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/avira/android/securebrowsing/c/c;->a:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/avira/android/securebrowsing/c/k;-><init>(Lcom/avira/android/securebrowsing/c/a;Lcom/avira/android/securebrowsing/c/r;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V

    .line 228
    :goto_0
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/c;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/c/k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 235
    :try_start_1
    instance-of v1, v0, Ljava/net/SocketException;

    if-eqz v1, :cond_0

    const-string v1, "NanoHttpd Shutdown"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :cond_0
    invoke-static {v4}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 243
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/c;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 244
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/c;->a:Ljava/net/Socket;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->c(Ljava/net/Socket;)V

    .line 245
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/c;->c:Lcom/avira/android/securebrowsing/c/b;

    iget-object v0, v0, Lcom/avira/android/securebrowsing/c/b;->a:Lcom/avira/android/securebrowsing/c/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/c;->a:Ljava/net/Socket;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/avira/android/securebrowsing/c/a;->b(Ljava/net/Socket;)V

    .line 246
    return-void

    .line 242
    :catchall_0
    move-exception v0

    invoke-static {v4}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 243
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/c;->b:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 244
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/c;->a:Ljava/net/Socket;

    invoke-static {v1}, Lcom/avira/android/securebrowsing/c/a;->c(Ljava/net/Socket;)V

    .line 245
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/c;->c:Lcom/avira/android/securebrowsing/c/b;

    iget-object v1, v1, Lcom/avira/android/securebrowsing/c/b;->a:Lcom/avira/android/securebrowsing/c/a;

    iget-object v2, p0, Lcom/avira/android/securebrowsing/c/c;->a:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Lcom/avira/android/securebrowsing/c/a;->b(Ljava/net/Socket;)V

    .line 242
    throw v0

    :cond_1
    invoke-static {v4}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 243
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/c;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 244
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/c;->a:Ljava/net/Socket;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->c(Ljava/net/Socket;)V

    .line 245
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/c;->c:Lcom/avira/android/securebrowsing/c/b;

    iget-object v0, v0, Lcom/avira/android/securebrowsing/c/b;->a:Lcom/avira/android/securebrowsing/c/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/c;->a:Ljava/net/Socket;

    goto :goto_1
.end method
