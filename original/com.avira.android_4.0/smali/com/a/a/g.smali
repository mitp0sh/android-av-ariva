.class final Lcom/a/a/g;
.super Ljava/util/HashMap;
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
        "Ljava/util/HashMap",
        "<TK;",
        "Lcom/a/a/l",
        "<TK;TV;>;>;",
        "Lcom/a/a/f",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field a:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/a/a/l",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 232
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->a:Ljava/util/SortedSet;

    .line 229
    return-void
.end method

.method static synthetic a(Lcom/a/a/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 242
    iget-object v0, p0, Lcom/a/a/g;->a:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/g;->a:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

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
    .line 262
    iget-object v0, p0, Lcom/a/a/g;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/a/a/g;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 264
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
    .line 268
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0, p0}, Lcom/a/a/h;-><init>(Lcom/a/a/g;)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 237
    iget-object v0, p0, Lcom/a/a/g;->a:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 238
    return-void
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Object;

    check-cast p2, Lcom/a/a/l;

    iget-object v0, p0, Lcom/a/a/g;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/l;

    return-object v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/a/a/g;->a:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
