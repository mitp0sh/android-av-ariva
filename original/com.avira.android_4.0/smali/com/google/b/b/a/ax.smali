.class final Lcom/google/b/b/a/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/b/af;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/google/b/ae;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/google/b/ae;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/google/b/b/a/ax;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/b/b/a/ax;->b:Lcom/google/b/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/b/j;Lcom/google/b/c/a;)Lcom/google/b/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/j;",
            "Lcom/google/b/c/a",
            "<TT;>;)",
            "Lcom/google/b/ae",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/b/b/a/ax;->a:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/b/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/b/b/a/ax;->b:Lcom/google/b/ae;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[typeHierarchy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/b/b/a/ax;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/b/b/a/ax;->b:Lcom/google/b/ae;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
