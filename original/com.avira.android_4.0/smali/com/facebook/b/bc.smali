.class final Lcom/facebook/b/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bk;


# instance fields
.field final synthetic a:Lcom/facebook/b/bb;


# direct methods
.method constructor <init>(Lcom/facebook/b/bb;)V
    .locals 0

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/facebook/b/bc;->a:Lcom/facebook/b/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/bx;)V
    .locals 2

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/facebook/b/bc;->a:Lcom/facebook/b/bb;

    invoke-virtual {p1}, Lcom/facebook/bx;->a()Lcom/facebook/ap;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/b/bb;->b:Lcom/facebook/ap;

    .line 1269
    iget-object v0, p0, Lcom/facebook/b/bc;->a:Lcom/facebook/b/bb;

    iget-object v0, v0, Lcom/facebook/b/bb;->b:Lcom/facebook/ap;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/facebook/b/bc;->a:Lcom/facebook/b/bb;

    iget-object v1, p0, Lcom/facebook/b/bc;->a:Lcom/facebook/b/bb;

    iget-object v1, v1, Lcom/facebook/b/bb;->b:Lcom/facebook/ap;

    invoke-virtual {v0, v1}, Lcom/facebook/b/bb;->a(Lcom/facebook/ap;)V

    .line 1274
    :goto_0
    return-void

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/facebook/b/bc;->a:Lcom/facebook/b/bb;

    invoke-virtual {v0, p1}, Lcom/facebook/b/bb;->a(Lcom/facebook/bx;)V

    goto :goto_0
.end method
