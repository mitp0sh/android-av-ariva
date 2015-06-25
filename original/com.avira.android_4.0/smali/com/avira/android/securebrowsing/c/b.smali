.class final Lcom/avira/android/securebrowsing/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/securebrowsing/c/a;


# direct methods
.method constructor <init>(Lcom/avira/android/securebrowsing/c/a;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/avira/android/securebrowsing/c/b;->a:Lcom/avira/android/securebrowsing/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 212
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/b;->a:Lcom/avira/android/securebrowsing/c/a;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->a(Lcom/avira/android/securebrowsing/c/a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/b;->a:Lcom/avira/android/securebrowsing/c/a;

    invoke-virtual {v1, v0}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/net/Socket;)V

    .line 214
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 215
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/avira/android/securebrowsing/c/b;->a:Lcom/avira/android/securebrowsing/c/a;

    invoke-static {v2}, Lcom/avira/android/securebrowsing/c/a;->c(Lcom/avira/android/securebrowsing/c/a;)Lcom/avira/android/securebrowsing/c/d;

    move-result-object v2

    new-instance v3, Lcom/avira/android/securebrowsing/c/c;

    invoke-direct {v3, p0, v0, v1}, Lcom/avira/android/securebrowsing/c/c;-><init>(Lcom/avira/android/securebrowsing/c/b;Ljava/net/Socket;Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lcom/avira/android/securebrowsing/c/d;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/b;->a:Lcom/avira/android/securebrowsing/c/a;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->a(Lcom/avira/android/securebrowsing/c/a;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    return-void

    .line 250
    :catch_0
    move-exception v0

    goto :goto_0
.end method
