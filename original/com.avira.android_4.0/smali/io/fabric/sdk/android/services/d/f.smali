.class final Lio/fabric/sdk/android/services/d/f;
.super Lio/fabric/sdk/android/services/d/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/d/g",
        "<",
        "Lio/fabric/sdk/android/services/d/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Lio/fabric/sdk/android/services/d/e;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/d/e;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 2402
    iput-object p1, p0, Lio/fabric/sdk/android/services/d/f;->c:Lio/fabric/sdk/android/services/d/e;

    iput-object p4, p0, Lio/fabric/sdk/android/services/d/f;->a:Ljava/io/InputStream;

    iput-object p5, p0, Lio/fabric/sdk/android/services/d/f;->b:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lio/fabric/sdk/android/services/d/g;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2402
    iget-object v0, p0, Lio/fabric/sdk/android/services/d/f;->c:Lio/fabric/sdk/android/services/d/e;

    invoke-static {v0}, Lio/fabric/sdk/android/services/d/e;->a(Lio/fabric/sdk/android/services/d/e;)I

    move-result v0

    new-array v0, v0, [B

    :goto_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/d/f;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lio/fabric/sdk/android/services/d/f;->b:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/d/f;->c:Lio/fabric/sdk/android/services/d/e;

    return-object v0
.end method
