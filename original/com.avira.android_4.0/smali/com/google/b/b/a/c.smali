.class public final Lcom/google/b/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/b/af;


# instance fields
.field private final a:Lcom/google/b/b/f;


# direct methods
.method public constructor <init>(Lcom/google/b/b/f;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/b/b/a/c;->a:Lcom/google/b/b/f;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/b/j;Lcom/google/b/c/a;)Lcom/google/b/ae;
    .locals 4
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
    .line 44
    invoke-virtual {p2}, Lcom/google/b/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lcom/google/b/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {v0, v1}, Lcom/google/b/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/google/b/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/b/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/b/j;->a(Lcom/google/b/c/a;)Lcom/google/b/ae;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lcom/google/b/b/a/c;->a:Lcom/google/b/b/f;

    invoke-virtual {v0, p2}, Lcom/google/b/b/f;->a(Lcom/google/b/c/a;)Lcom/google/b/b/ae;

    move-result-object v3

    .line 56
    new-instance v0, Lcom/google/b/b/a/d;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/b/b/a/d;-><init>(Lcom/google/b/j;Ljava/lang/reflect/Type;Lcom/google/b/ae;Lcom/google/b/b/ae;)V

    goto :goto_0
.end method
