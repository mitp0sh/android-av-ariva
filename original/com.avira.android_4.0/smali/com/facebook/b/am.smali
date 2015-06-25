.class final Lcom/facebook/b/am;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"


# instance fields
.field a:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 112
    iput-object p2, p0, Lcom/facebook/b/am;->a:Ljava/net/HttpURLConnection;

    .line 113
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 118
    iget-object v0, p0, Lcom/facebook/b/am;->a:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/net/URLConnection;)V

    .line 119
    return-void
.end method
