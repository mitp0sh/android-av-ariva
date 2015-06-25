.class final Lcom/google/b/p;
.super Lcom/google/b/ae;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/b/ae",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/b/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/ae",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/google/b/ae;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/b/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/d/a;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Lcom/google/b/p;->a:Lcom/google/b/ae;

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/google/b/p;->a:Lcom/google/b/ae;

    invoke-virtual {v0, p1}, Lcom/google/b/ae;->a(Lcom/google/b/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/b/ae;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/ae",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lcom/google/b/p;->a:Lcom/google/b/ae;

    if-eqz v0, :cond_0

    .line 876
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 878
    :cond_0
    iput-object p1, p0, Lcom/google/b/p;->a:Lcom/google/b/ae;

    .line 879
    return-void
.end method

.method public final a(Lcom/google/b/d/d;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/d/d;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/b/p;->a:Lcom/google/b/ae;

    if-nez v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/google/b/p;->a:Lcom/google/b/ae;

    invoke-virtual {v0, p1, p2}, Lcom/google/b/ae;->a(Lcom/google/b/d/d;Ljava/lang/Object;)V

    .line 893
    return-void
.end method
