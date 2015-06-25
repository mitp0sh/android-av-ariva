.class final Lcom/facebook/b/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/b/ct;

.field final synthetic b:Lcom/facebook/b/cq;


# direct methods
.method constructor <init>(Lcom/facebook/b/cq;Lcom/facebook/b/ct;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/facebook/b/cr;->b:Lcom/facebook/b/cq;

    iput-object p2, p0, Lcom/facebook/b/cr;->a:Lcom/facebook/b/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/facebook/b/cr;->a:Lcom/facebook/b/ct;

    invoke-virtual {v0}, Lcom/facebook/b/ct;->c()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/facebook/b/cr;->b:Lcom/facebook/b/cq;

    iget-object v1, p0, Lcom/facebook/b/cr;->a:Lcom/facebook/b/ct;

    invoke-static {v0, v1}, Lcom/facebook/b/cq;->a(Lcom/facebook/b/cq;Lcom/facebook/b/ct;)V

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/b/cr;->b:Lcom/facebook/b/cq;

    iget-object v2, p0, Lcom/facebook/b/cr;->a:Lcom/facebook/b/ct;

    invoke-static {v1, v2}, Lcom/facebook/b/cq;->a(Lcom/facebook/b/cq;Lcom/facebook/b/ct;)V

    throw v0
.end method
