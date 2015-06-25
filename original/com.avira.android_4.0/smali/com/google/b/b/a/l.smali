.class final Lcom/google/b/b/a/l;
.super Lcom/google/b/ae;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/b/ae",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/b/a/k;

.field private final b:Lcom/google/b/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/ae",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/b/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/ae",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/b/b/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/ae",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/b/b/a/k;Lcom/google/b/j;Ljava/lang/reflect/Type;Lcom/google/b/ae;Ljava/lang/reflect/Type;Lcom/google/b/ae;Lcom/google/b/b/ae;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/j;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/b/ae",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/b/ae",
            "<TV;>;",
            "Lcom/google/b/b/ae",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/b/b/a/l;->a:Lcom/google/b/b/a/k;

    invoke-direct {p0}, Lcom/google/b/ae;-><init>()V

    .line 153
    new-instance v0, Lcom/google/b/b/a/x;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/b/b/a/x;-><init>(Lcom/google/b/j;Lcom/google/b/ae;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/b/b/a/l;->b:Lcom/google/b/ae;

    .line 155
    new-instance v0, Lcom/google/b/b/a/x;

    invoke-direct {v0, p2, p6, p5}, Lcom/google/b/b/a/x;-><init>(Lcom/google/b/j;Lcom/google/b/ae;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/b/b/a/l;->c:Lcom/google/b/ae;

    .line 157
    iput-object p7, p0, Lcom/google/b/b/a/l;->d:Lcom/google/b/b/ae;

    .line 158
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/b/d/a;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/google/b/d/a;->f()Lcom/google/b/d/c;

    move-result-object v1

    sget-object v0, Lcom/google/b/d/c;->NULL:Lcom/google/b/d/c;

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/b/d/a;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/b/b/a/l;->d:Lcom/google/b/b/ae;

    invoke-interface {v0}, Lcom/google/b/b/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcom/google/b/d/c;->BEGIN_ARRAY:Lcom/google/b/d/c;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/b/d/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/b/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/b/d/a;->a()V

    iget-object v1, p0, Lcom/google/b/b/a/l;->b:Lcom/google/b/ae;

    invoke-virtual {v1, p1}, Lcom/google/b/ae;->a(Lcom/google/b/d/a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/b/b/a/l;->c:Lcom/google/b/ae;

    invoke-virtual {v2, p1}, Lcom/google/b/ae;->a(Lcom/google/b/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/b/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/b/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/b/d/a;->b()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/b/d/a;->b()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/b/d/a;->c()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/b/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/google/b/b/u;->a:Lcom/google/b/b/u;

    invoke-virtual {v1, p1}, Lcom/google/b/b/u;->a(Lcom/google/b/d/a;)V

    iget-object v1, p0, Lcom/google/b/b/a/l;->b:Lcom/google/b/ae;

    invoke-virtual {v1, p1}, Lcom/google/b/ae;->a(Lcom/google/b/d/a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/b/b/a/l;->c:Lcom/google/b/ae;

    invoke-virtual {v2, p1}, Lcom/google/b/ae;->a(Lcom/google/b/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/google/b/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/b/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/google/b/d/a;->d()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/b/d/d;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 145
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/b/d/d;->f()Lcom/google/b/d/d;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/b/b/a/l;->a:Lcom/google/b/b/a/k;

    invoke-static {v0}, Lcom/google/b/b/a/k;->a(Lcom/google/b/b/a/k;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/b/d/d;->d()Lcom/google/b/d/d;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/b/d/d;->a(Ljava/lang/String;)Lcom/google/b/d/d;

    iget-object v2, p0, Lcom/google/b/b/a/l;->c:Lcom/google/b/ae;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/b/ae;->a(Lcom/google/b/d/d;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/b/d/d;->e()Lcom/google/b/d/d;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/google/b/b/a/l;->b:Lcom/google/b/ae;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/b/ae;->a(Ljava/lang/Object;)Lcom/google/b/t;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/google/b/t;->g()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Lcom/google/b/t;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/b/d/d;->b()Lcom/google/b/d/d;

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p1}, Lcom/google/b/d/d;->b()Lcom/google/b/d/d;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/t;

    invoke-static {v0, p1}, Lcom/google/b/b/ag;->a(Lcom/google/b/t;Lcom/google/b/d/d;)V

    iget-object v0, p0, Lcom/google/b/b/a/l;->c:Lcom/google/b/ae;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/b/ae;->a(Lcom/google/b/d/d;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/b/d/d;->c()Lcom/google/b/d/d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/b/d/d;->c()Lcom/google/b/d/d;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/b/d/d;->d()Lcom/google/b/d/d;

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/t;

    invoke-virtual {v0}, Lcom/google/b/t;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/google/b/t;->m()Lcom/google/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/y;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/b/y;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0}, Lcom/google/b/d/d;->a(Ljava/lang/String;)Lcom/google/b/d/d;

    iget-object v0, p0, Lcom/google/b/b/a/l;->c:Lcom/google/b/ae;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/b/ae;->a(Lcom/google/b/d/d;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lcom/google/b/y;->n()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/b/y;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lcom/google/b/y;->p()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/google/b/y;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    invoke-virtual {v0}, Lcom/google/b/t;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "null"

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    invoke-virtual {p1}, Lcom/google/b/d/d;->e()Lcom/google/b/d/d;

    goto/16 :goto_0
.end method
