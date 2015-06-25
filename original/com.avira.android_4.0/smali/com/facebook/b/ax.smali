.class final Lcom/facebook/b/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bs;


# instance fields
.field final synthetic a:Lcom/facebook/b/bn;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/facebook/b/an;


# direct methods
.method constructor <init>(Lcom/facebook/b/an;Lcom/facebook/b/bn;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    iput-object p2, p0, Lcom/facebook/b/ax;->a:Lcom/facebook/b/bn;

    iput-object p3, p0, Lcom/facebook/b/ax;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/facebook/b/ax;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 830
    iget-object v0, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    invoke-static {v0}, Lcom/facebook/b/an;->e(Lcom/facebook/b/an;)Z

    .line 832
    iget-object v0, p0, Lcom/facebook/b/ax;->a:Lcom/facebook/b/bn;

    iget-object v0, v0, Lcom/facebook/b/bn;->b:Lcom/facebook/ap;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    invoke-static {v2}, Lcom/facebook/b/an;->f(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    invoke-static {v3}, Lcom/facebook/b/an;->g(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    invoke-static {v4}, Lcom/facebook/b/an;->h(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    invoke-static {v5}, Lcom/facebook/b/an;->i(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    invoke-static {v6}, Lcom/facebook/b/an;->j(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    iget-object v1, p0, Lcom/facebook/b/ax;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/b/ax;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 854
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;Ljava/lang/String;)Ljava/lang/String;

    .line 848
    iget-object v0, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;Z)Z

    .line 850
    iget-object v0, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    invoke-static {v0}, Lcom/facebook/b/an;->b(Lcom/facebook/b/an;)Lcom/facebook/c;

    move-result-object v0

    const-string v1, "fb_like_control_did_unlike"

    iget-object v2, p0, Lcom/facebook/b/ax;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 852
    iget-object v0, p0, Lcom/facebook/b/ax;->d:Lcom/facebook/b/an;

    iget-object v1, p0, Lcom/facebook/b/ax;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/b/ax;->c:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/b/an;->b(Lcom/facebook/b/an;Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method
