.class final Lcom/google/b/b/a/ao;
.super Lcom/google/b/ae;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/ae",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/ae;

.field final synthetic b:Lcom/google/b/b/a/an;


# direct methods
.method constructor <init>(Lcom/google/b/b/a/an;Lcom/google/b/ae;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/google/b/b/a/ao;->b:Lcom/google/b/b/a/an;

    iput-object p2, p0, Lcom/google/b/b/a/ao;->a:Lcom/google/b/ae;

    invoke-direct {p0}, Lcom/google/b/ae;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/b/d/a;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/b/b/a/ao;->a:Lcom/google/b/ae;

    invoke-virtual {v0, p1}, Lcom/google/b/ae;->a(Lcom/google/b/d/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/google/b/d/d;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 524
    check-cast p2, Ljava/sql/Timestamp;

    iget-object v0, p0, Lcom/google/b/b/a/ao;->a:Lcom/google/b/ae;

    invoke-virtual {v0, p1, p2}, Lcom/google/b/ae;->a(Lcom/google/b/d/d;Ljava/lang/Object;)V

    return-void
.end method
