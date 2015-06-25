.class final Lcom/facebook/b/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/cn;


# instance fields
.field final synthetic a:Lcom/facebook/b/ch;

.field private final b:Lcom/facebook/cn;


# direct methods
.method public constructor <init>(Lcom/facebook/b/ch;Lcom/facebook/cn;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/facebook/b/cj;->a:Lcom/facebook/b/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/facebook/b/cj;->b:Lcom/facebook/cn;

    .line 225
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/b/cj;->b:Lcom/facebook/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/b/cj;->a:Lcom/facebook/b/ch;

    invoke-virtual {v0}, Lcom/facebook/b/ch;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/facebook/b/cj;->b:Lcom/facebook/cn;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/cn;->a(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/facebook/b/cj;->a:Lcom/facebook/b/ch;

    invoke-static {v0}, Lcom/facebook/b/ch;->b(Lcom/facebook/b/ch;)Lcom/facebook/by;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/facebook/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/facebook/b/cj;->a:Lcom/facebook/b/ch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/b/ch;->a(Lcom/facebook/by;)V

    .line 237
    :cond_1
    return-void
.end method
