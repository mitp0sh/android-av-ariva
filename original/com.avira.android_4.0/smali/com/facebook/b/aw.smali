.class final Lcom/facebook/b/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bs;


# instance fields
.field final synthetic a:Lcom/facebook/b/bm;

.field final synthetic b:Lcom/facebook/b/av;


# direct methods
.method constructor <init>(Lcom/facebook/b/av;Lcom/facebook/b/bm;)V
    .locals 0

    .prologue
    .line 785
    iput-object p1, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iput-object p2, p0, Lcom/facebook/b/aw;->a:Lcom/facebook/b/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 788
    iget-object v0, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v0, v0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    invoke-static {v0}, Lcom/facebook/b/an;->e(Lcom/facebook/b/an;)Z

    .line 790
    iget-object v0, p0, Lcom/facebook/b/aw;->a:Lcom/facebook/b/bm;

    iget-object v0, v0, Lcom/facebook/b/bm;->b:Lcom/facebook/ap;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v0, v0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v2, v2, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    invoke-static {v2}, Lcom/facebook/b/an;->f(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v3, v3, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    invoke-static {v3}, Lcom/facebook/b/an;->g(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v4, v4, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    invoke-static {v4}, Lcom/facebook/b/an;->h(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v5, v5, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    invoke-static {v5}, Lcom/facebook/b/an;->i(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v6, v6, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    invoke-static {v6}, Lcom/facebook/b/an;->j(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v0, v0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    iget-object v1, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v1, v1, Lcom/facebook/b/av;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v2, v2, Lcom/facebook/b/av;->b:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 812
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v0, v0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    iget-object v1, p0, Lcom/facebook/b/aw;->a:Lcom/facebook/b/bm;

    iget-object v1, v1, Lcom/facebook/b/bm;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;Ljava/lang/String;)Ljava/lang/String;

    .line 806
    iget-object v0, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v0, v0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;Z)Z

    .line 808
    iget-object v0, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v0, v0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    invoke-static {v0}, Lcom/facebook/b/an;->b(Lcom/facebook/b/an;)Lcom/facebook/c;

    move-result-object v0

    const-string v1, "fb_like_control_did_like"

    iget-object v2, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v2, v2, Lcom/facebook/b/av;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 810
    iget-object v0, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v0, v0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    iget-object v1, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v1, v1, Lcom/facebook/b/av;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/b/aw;->b:Lcom/facebook/b/av;

    iget-object v2, v2, Lcom/facebook/b/av;->b:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/b/an;->b(Lcom/facebook/b/an;Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method
