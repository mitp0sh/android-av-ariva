.class final Lcom/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/a/a/l",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/g;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/a/a/l",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private c:Lcom/a/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/l",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/g;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/a/a/h;->a:Lcom/a/a/g;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iget-object v0, p1, Lcom/a/a/g;->a:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/h;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/a/a/h;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/a/a/h;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/l;

    iput-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/l;

    iget-object v0, p0, Lcom/a/a/h;->c:Lcom/a/a/l;

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/a/a/h;->a:Lcom/a/a/g;

    iget-object v1, p0, Lcom/a/a/h;->c:Lcom/a/a/l;

    iget-object v1, v1, Lcom/a/a/l;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/g;->a(Lcom/a/a/g;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/a/a/h;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 287
    return-void
.end method
