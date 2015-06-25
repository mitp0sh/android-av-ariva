.class final Lcom/facebook/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/cn;

.field final synthetic b:Lcom/facebook/cb;


# direct methods
.method constructor <init>(Lcom/facebook/cb;Lcom/facebook/cn;)V
    .locals 0

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/facebook/cc;->b:Lcom/facebook/cb;

    iput-object p2, p0, Lcom/facebook/cc;->a:Lcom/facebook/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/facebook/cc;->a:Lcom/facebook/cn;

    iget-object v1, p0, Lcom/facebook/cc;->b:Lcom/facebook/cb;

    iget-object v1, v1, Lcom/facebook/cb;->c:Lcom/facebook/by;

    iget-object v2, p0, Lcom/facebook/cc;->b:Lcom/facebook/cb;

    iget-object v2, v2, Lcom/facebook/cb;->a:Lcom/facebook/cs;

    iget-object v3, p0, Lcom/facebook/cc;->b:Lcom/facebook/cb;

    iget-object v3, v3, Lcom/facebook/cb;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/cn;->a(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V

    .line 1546
    return-void
.end method
