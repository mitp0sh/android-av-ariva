.class final Lcom/facebook/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bk;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/facebook/q;


# direct methods
.method constructor <init>(Lcom/facebook/q;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/facebook/u;->c:Lcom/facebook/q;

    iput-object p2, p0, Lcom/facebook/u;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/facebook/u;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/bx;)V
    .locals 3

    .prologue
    .line 392
    :try_start_0
    invoke-static {p1}, Lcom/facebook/by;->a(Lcom/facebook/bx;)Lcom/facebook/cl;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    .line 394
    iget-object v1, p0, Lcom/facebook/u;->a:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/facebook/cl;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 395
    iget-object v1, p0, Lcom/facebook/u;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/facebook/cl;->b:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
