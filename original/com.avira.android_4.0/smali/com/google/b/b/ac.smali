.class abstract Lcom/google/b/b/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/google/b/b/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/ad",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/b/b/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/ad",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/google/b/b/w;


# direct methods
.method private constructor <init>(Lcom/google/b/b/w;)V
    .locals 1

    .prologue
    .line 526
    iput-object p1, p0, Lcom/google/b/b/ac;->e:Lcom/google/b/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object v0, p0, Lcom/google/b/b/ac;->e:Lcom/google/b/b/w;

    iget-object v0, v0, Lcom/google/b/b/w;->e:Lcom/google/b/b/ad;

    iget-object v0, v0, Lcom/google/b/b/ad;->d:Lcom/google/b/b/ad;

    iput-object v0, p0, Lcom/google/b/b/ac;->b:Lcom/google/b/b/ad;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/b/ac;->c:Lcom/google/b/b/ad;

    .line 529
    iget-object v0, p0, Lcom/google/b/b/ac;->e:Lcom/google/b/b/w;

    iget v0, v0, Lcom/google/b/b/w;->d:I

    iput v0, p0, Lcom/google/b/b/ac;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/b/b/w;B)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/google/b/b/ac;-><init>(Lcom/google/b/b/w;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/b/b/ad;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/b/ad",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/b/b/ac;->b:Lcom/google/b/b/ad;

    .line 537
    iget-object v1, p0, Lcom/google/b/b/ac;->e:Lcom/google/b/b/w;

    iget-object v1, v1, Lcom/google/b/b/w;->e:Lcom/google/b/b/ad;

    if-ne v0, v1, :cond_0

    .line 538
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/google/b/b/ac;->e:Lcom/google/b/b/w;

    iget v1, v1, Lcom/google/b/b/w;->d:I

    iget v2, p0, Lcom/google/b/b/ac;->d:I

    if-eq v1, v2, :cond_1

    .line 541
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 543
    :cond_1
    iget-object v1, v0, Lcom/google/b/b/ad;->d:Lcom/google/b/b/ad;

    iput-object v1, p0, Lcom/google/b/b/ac;->b:Lcom/google/b/b/ad;

    .line 544
    iput-object v0, p0, Lcom/google/b/b/ac;->c:Lcom/google/b/b/ad;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/b/b/ac;->b:Lcom/google/b/b/ad;

    iget-object v1, p0, Lcom/google/b/b/ac;->e:Lcom/google/b/b/w;

    iget-object v1, v1, Lcom/google/b/b/w;->e:Lcom/google/b/b/ad;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/b/b/ac;->c:Lcom/google/b/b/ad;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/google/b/b/ac;->e:Lcom/google/b/b/w;

    iget-object v1, p0, Lcom/google/b/b/ac;->c:Lcom/google/b/b/ad;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/b/b/w;->a(Lcom/google/b/b/ad;Z)V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/b/ac;->c:Lcom/google/b/b/ad;

    .line 553
    iget-object v0, p0, Lcom/google/b/b/ac;->e:Lcom/google/b/b/w;

    iget v0, v0, Lcom/google/b/b/w;->d:I

    iput v0, p0, Lcom/google/b/b/ac;->d:I

    .line 554
    return-void
.end method
