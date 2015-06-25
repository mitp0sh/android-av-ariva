.class public final Lcom/google/b/b/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2

    .prologue
    .line 72
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/b/b/ah;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/b/b/ah;-><init>(Ljava/lang/Appendable;B)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static a(Lcom/google/b/t;Lcom/google/b/d/d;)V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/b/b/a/y;->JSON_ELEMENT:Lcom/google/b/ae;

    invoke-virtual {v0, p1, p0}, Lcom/google/b/ae;->a(Lcom/google/b/d/d;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
