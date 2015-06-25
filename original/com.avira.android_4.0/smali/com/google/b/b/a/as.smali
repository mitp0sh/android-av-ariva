.class final Lcom/google/b/b/a/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/b/af;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 752
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
    .line 755
    invoke-virtual {p2}, Lcom/google/b/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 756
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Ljava/lang/Enum;

    if-ne v0, v1, :cond_1

    .line 757
    :cond_0
    const/4 v0, 0x0

    .line 762
    :goto_0
    return-object v0

    .line 759
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_2

    .line 760
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 762
    :cond_2
    new-instance v1, Lcom/google/b/b/a/bf;

    invoke-direct {v1, v0}, Lcom/google/b/b/a/bf;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_0
.end method
