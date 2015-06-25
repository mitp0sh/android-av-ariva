.class final Lcom/facebook/ad;
.super Lcom/facebook/ac;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic d:Lcom/facebook/q;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/q;)V
    .locals 0

    .prologue
    .line 801
    iput-object p1, p0, Lcom/facebook/ad;->d:Lcom/facebook/q;

    invoke-direct {p0, p1}, Lcom/facebook/ac;-><init>(Lcom/facebook/q;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 807
    const-string v0, "katana_proxy_auth"

    return-object v0
.end method

.method final a(ILandroid/content/Intent;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 828
    if-nez p2, :cond_0

    .line 830
    iget-object v0, p0, Lcom/facebook/ad;->d:Lcom/facebook/q;

    iget-object v0, v0, Lcom/facebook/q;->h:Lcom/facebook/y;

    const-string v1, "Operation canceled"

    invoke-static {v0, v1}, Lcom/facebook/af;->a(Lcom/facebook/y;Ljava/lang/String;)Lcom/facebook/af;

    move-result-object v0

    .line 839
    :goto_0
    if-eqz v0, :cond_9

    .line 840
    iget-object v1, p0, Lcom/facebook/ad;->d:Lcom/facebook/q;

    invoke-virtual {v1, v0}, Lcom/facebook/q;->a(Lcom/facebook/af;)V

    .line 844
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 831
    :cond_0
    if-nez p1, :cond_1

    .line 832
    iget-object v0, p0, Lcom/facebook/ad;->d:Lcom/facebook/q;

    iget-object v0, v0, Lcom/facebook/q;->h:Lcom/facebook/y;

    const-string v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/af;->a(Lcom/facebook/y;Ljava/lang/String;)Lcom/facebook/af;

    move-result-object v0

    goto :goto_0

    .line 833
    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 834
    iget-object v0, p0, Lcom/facebook/ad;->d:Lcom/facebook/q;

    iget-object v0, v0, Lcom/facebook/q;->h:Lcom/facebook/y;

    const-string v1, "Unexpected resultCode from authorization."

    invoke-static {v0, v1, v2}, Lcom/facebook/af;->a(Lcom/facebook/y;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/af;

    move-result-object v0

    goto :goto_0

    .line 836
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "error"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "error_type"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, "error_code"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "error_message"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "error_description"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v5, "e2e"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/facebook/ad;->d:Lcom/facebook/q;

    iget-object v7, p0, Lcom/facebook/ad;->e:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/facebook/q;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-nez v0, :cond_6

    if-nez v4, :cond_6

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/facebook/ad;->d:Lcom/facebook/q;

    iget-object v0, v0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-virtual {v0}, Lcom/facebook/y;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/facebook/b;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/b;

    invoke-static {v0, v3, v1}, Lcom/facebook/a;->a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/b;)Lcom/facebook/a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ad;->d:Lcom/facebook/q;

    iget-object v1, v1, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-static {v1, v0}, Lcom/facebook/af;->a(Lcom/facebook/y;Lcom/facebook/a;)Lcom/facebook/af;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v3, Lcom/facebook/b/cf;->errorsProxyAuthDisabled:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    sget-object v3, Lcom/facebook/b/cf;->errorsUserCanceled:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/facebook/ad;->d:Lcom/facebook/q;

    iget-object v0, v0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-static {v0, v2}, Lcom/facebook/af;->a(Lcom/facebook/y;Ljava/lang/String;)Lcom/facebook/af;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/facebook/ad;->d:Lcom/facebook/q;

    iget-object v2, v2, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-static {v2, v0, v1, v4}, Lcom/facebook/af;->a(Lcom/facebook/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/af;

    move-result-object v0

    goto/16 :goto_0

    .line 842
    :cond_9
    iget-object v0, p0, Lcom/facebook/ad;->d:Lcom/facebook/q;

    invoke-virtual {v0}, Lcom/facebook/q;->b()V

    goto/16 :goto_1
.end method

.method final a(Lcom/facebook/y;)Z
    .locals 6

    .prologue
    .line 812
    invoke-virtual {p1}, Lcom/facebook/y;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ad;->e:Ljava/lang/String;

    .line 814
    invoke-static {}, Lcom/facebook/q;->d()Ljava/lang/String;

    move-result-object v3

    .line 815
    iget-object v0, p0, Lcom/facebook/ad;->d:Lcom/facebook/q;

    iget-object v0, v0, Lcom/facebook/q;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/y;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/y;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/y;->k()Z

    move-result v4

    invoke-virtual {p1}, Lcom/facebook/y;->e()Lcom/facebook/cq;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/facebook/b/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/facebook/cq;)Landroid/content/Intent;

    move-result-object v0

    .line 818
    const-string v1, "e2e"

    invoke-virtual {p0, v1, v3}, Lcom/facebook/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 820
    invoke-virtual {p1}, Lcom/facebook/y;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ad;->a(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method
