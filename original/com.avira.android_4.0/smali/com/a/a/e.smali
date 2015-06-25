.class final Lcom/a/a/e;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"

# interfaces
.implements Lcom/a/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;",
        "Lcom/a/a/l",
        "<TK;TV;>;>;",
        "Lcom/a/a/f",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/a/a/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/a/a/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/a/a/e;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/l;

    goto :goto_0
.end method

.method public final a(Lcom/a/a/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p1, Lcom/a/a/l;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/a/a/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p1, Lcom/a/a/l;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/a/a/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public final b()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/a/a/l",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/a/a/e;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
