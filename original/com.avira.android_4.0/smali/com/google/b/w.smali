.class public final Lcom/google/b/w;
.super Lcom/google/b/t;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/b/b/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/w",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/b/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/b/t;-><init>()V

    .line 33
    new-instance v0, Lcom/google/b/b/w;

    invoke-direct {v0}, Lcom/google/b/b/w;-><init>()V

    iput-object v0, p0, Lcom/google/b/w;->a:Lcom/google/b/b/w;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/b/t;)V
    .locals 1

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/google/b/v;->INSTANCE:Lcom/google/b/v;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/b/w;->a:Lcom/google/b/b/w;

    invoke-virtual {v0, p1, p2}, Lcom/google/b/b/w;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/b/w;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/b/w;

    iget-object v0, p1, Lcom/google/b/w;->a:Lcom/google/b/b/w;

    iget-object v1, p0, Lcom/google/b/w;->a:Lcom/google/b/b/w;

    invoke-virtual {v0, v1}, Lcom/google/b/b/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/b/w;->a:Lcom/google/b/b/w;

    invoke-virtual {v0}, Lcom/google/b/b/w;->hashCode()I

    move-result v0

    return v0
.end method

.method public final n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/b/t;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/b/w;->a:Lcom/google/b/b/w;

    invoke-virtual {v0}, Lcom/google/b/b/w;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
