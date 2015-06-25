.class final Lcom/facebook/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/bb",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ay;


# direct methods
.method constructor <init>(Lcom/facebook/ay;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/ba;->a:Lcom/facebook/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 94
    check-cast p1, Ljava/io/File;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v3}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_0
    invoke-static {v3}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
