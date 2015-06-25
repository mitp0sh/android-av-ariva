.class final Lcom/facebook/b/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/b/bo;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/facebook/b/an;


# direct methods
.method constructor <init>(Lcom/facebook/b/an;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 769
    iput-object p1, p0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    iput-object p2, p0, Lcom/facebook/b/av;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/facebook/b/av;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 772
    iget-object v0, p0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    invoke-static {v0}, Lcom/facebook/b/an;->d(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 775
    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v2, "Invalid Object Id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v1, p0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    invoke-static {v1}, Lcom/facebook/b/an;->c(Lcom/facebook/b/an;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    const-string v3, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/b/an;->a(Landroid/content/Context;Lcom/facebook/b/an;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 816
    :goto_0
    return-void

    .line 782
    :cond_0
    new-instance v0, Lcom/facebook/br;

    invoke-direct {v0}, Lcom/facebook/br;-><init>()V

    .line 783
    new-instance v1, Lcom/facebook/b/bm;

    iget-object v2, p0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    iget-object v3, p0, Lcom/facebook/b/av;->c:Lcom/facebook/b/an;

    invoke-static {v3}, Lcom/facebook/b/an;->d(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/b/bm;-><init>(Lcom/facebook/b/an;Ljava/lang/String;)V

    .line 784
    invoke-virtual {v1, v0}, Lcom/facebook/b/bm;->a(Lcom/facebook/br;)V

    .line 785
    new-instance v2, Lcom/facebook/b/aw;

    invoke-direct {v2, p0, v1}, Lcom/facebook/b/aw;-><init>(Lcom/facebook/b/av;Lcom/facebook/b/bm;)V

    invoke-virtual {v0, v2}, Lcom/facebook/br;->a(Lcom/facebook/bs;)V

    .line 815
    invoke-virtual {v0}, Lcom/facebook/br;->h()Lcom/facebook/bq;

    goto :goto_0
.end method
