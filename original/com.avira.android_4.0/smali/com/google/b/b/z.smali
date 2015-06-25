.class final Lcom/google/b/b/z;
.super Lcom/google/b/b/ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/b/w",
        "<TK;TV;>.com/google/b/b/ac<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/b/y;


# direct methods
.method constructor <init>(Lcom/google/b/b/y;)V
    .locals 2

    .prologue
    .line 563
    iput-object p1, p0, Lcom/google/b/b/z;->a:Lcom/google/b/b/y;

    iget-object v0, p1, Lcom/google/b/b/y;->a:Lcom/google/b/b/w;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/b/b/ac;-><init>(Lcom/google/b/b/w;B)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/google/b/b/z;->a()Lcom/google/b/b/ad;

    move-result-object v0

    return-object v0
.end method
