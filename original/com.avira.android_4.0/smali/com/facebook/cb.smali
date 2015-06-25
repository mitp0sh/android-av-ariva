.class final Lcom/facebook/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/cs;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/facebook/by;


# direct methods
.method constructor <init>(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1538
    iput-object p1, p0, Lcom/facebook/cb;->c:Lcom/facebook/by;

    iput-object p2, p0, Lcom/facebook/cb;->a:Lcom/facebook/cs;

    iput-object p3, p0, Lcom/facebook/cb;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/facebook/cb;->c:Lcom/facebook/by;

    invoke-static {v0}, Lcom/facebook/by;->b(Lcom/facebook/by;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 1541
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cb;->c:Lcom/facebook/by;

    invoke-static {v0}, Lcom/facebook/by;->b(Lcom/facebook/by;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cn;

    .line 1542
    new-instance v3, Lcom/facebook/cc;

    invoke-direct {v3, p0, v0}, Lcom/facebook/cc;-><init>(Lcom/facebook/cb;Lcom/facebook/cn;)V

    .line 1549
    iget-object v0, p0, Lcom/facebook/cb;->c:Lcom/facebook/by;

    invoke-static {v0}, Lcom/facebook/by;->c(Lcom/facebook/by;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/by;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1551
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
