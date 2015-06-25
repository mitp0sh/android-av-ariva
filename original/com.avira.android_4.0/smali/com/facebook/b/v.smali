.class final Lcom/facebook/b/v;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field final a:Ljava/io/OutputStream;

.field final b:Lcom/facebook/b/z;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/b/z;)V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 436
    iput-object p1, p0, Lcom/facebook/b/v;->a:Ljava/io/OutputStream;

    .line 437
    iput-object p2, p0, Lcom/facebook/b/v;->b:Lcom/facebook/b/z;

    .line 438
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/facebook/b/v;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    iget-object v0, p0, Lcom/facebook/b/v;->b:Lcom/facebook/b/z;

    invoke-interface {v0}, Lcom/facebook/b/z;->a()V

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/b/v;->b:Lcom/facebook/b/z;

    invoke-interface {v1}, Lcom/facebook/b/z;->a()V

    throw v0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/facebook/b/v;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 452
    return-void
.end method

.method public final write(I)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/facebook/b/v;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 467
    return-void
.end method

.method public final write([B)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/facebook/b/v;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 462
    return-void
.end method

.method public final write([BII)V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/facebook/b/v;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 457
    return-void
.end method
