.class final Lcom/facebook/ai;
.super Lcom/facebook/x;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic c:Lcom/facebook/q;

.field private transient d:Lcom/facebook/widget/af;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/q;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/facebook/ai;->c:Lcom/facebook/q;

    invoke-direct {p0, p1}, Lcom/facebook/x;-><init>(Lcom/facebook/q;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    const-string v0, "web_view"

    return-object v0
.end method

.method final a(Lcom/facebook/y;Landroid/os/Bundle;Lcom/facebook/am;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 641
    if-eqz p2, :cond_2

    .line 643
    const-string v0, "e2e"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    const-string v0, "e2e"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ai;->f:Ljava/lang/String;

    .line 647
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/y;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/facebook/b;->WEB_VIEW:Lcom/facebook/b;

    invoke-static {v0, p2, v1}, Lcom/facebook/a;->a(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/b;)Lcom/facebook/a;

    move-result-object v1

    .line 649
    iget-object v0, p0, Lcom/facebook/ai;->c:Lcom/facebook/q;

    iget-object v0, v0, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-static {v0, v1}, Lcom/facebook/af;->a(Lcom/facebook/y;Lcom/facebook/a;)Lcom/facebook/af;

    move-result-object v0

    .line 654
    iget-object v2, p0, Lcom/facebook/ai;->c:Lcom/facebook/q;

    iget-object v2, v2, Lcom/facebook/q;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v2

    .line 655
    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 656
    invoke-virtual {v1}, Lcom/facebook/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ai;->c:Lcom/facebook/q;

    invoke-virtual {v2}, Lcom/facebook/q;->c()Lcom/facebook/ah;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/ah;->a()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "TOKEN"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 675
    :goto_0
    iget-object v1, p0, Lcom/facebook/ai;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/facebook/ai;->c:Lcom/facebook/q;

    iget-object v2, p0, Lcom/facebook/ai;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/ai;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/facebook/q;->a(Lcom/facebook/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/facebook/ai;->c:Lcom/facebook/q;

    invoke-virtual {v1, v0}, Lcom/facebook/q;->a(Lcom/facebook/af;)V

    .line 680
    return-void

    .line 658
    :cond_2
    instance-of v0, p3, Lcom/facebook/ao;

    if-eqz v0, :cond_3

    .line 659
    iget-object v0, p0, Lcom/facebook/ai;->c:Lcom/facebook/q;

    iget-object v0, v0, Lcom/facebook/q;->h:Lcom/facebook/y;

    const-string v1, "User canceled log in."

    invoke-static {v0, v1}, Lcom/facebook/af;->a(Lcom/facebook/y;Ljava/lang/String;)Lcom/facebook/af;

    move-result-object v0

    goto :goto_0

    .line 662
    :cond_3
    iput-object v1, p0, Lcom/facebook/ai;->f:Ljava/lang/String;

    .line 665
    invoke-virtual {p3}, Lcom/facebook/am;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 666
    instance-of v2, p3, Lcom/facebook/as;

    if-eqz v2, :cond_4

    .line 667
    check-cast p3, Lcom/facebook/as;

    invoke-virtual {p3}, Lcom/facebook/as;->a()Lcom/facebook/ap;

    move-result-object v2

    .line 668
    const-string v0, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/facebook/ap;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {v2}, Lcom/facebook/ap;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    :goto_1
    iget-object v3, p0, Lcom/facebook/ai;->c:Lcom/facebook/q;

    iget-object v3, v3, Lcom/facebook/q;->h:Lcom/facebook/y;

    invoke-static {v3, v1, v2, v0}, Lcom/facebook/af;->a(Lcom/facebook/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/af;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v2, v0

    move-object v0, v1

    goto :goto_1
.end method

.method final a(Lcom/facebook/y;)Z
    .locals 5

    .prologue
    .line 595
    invoke-virtual {p1}, Lcom/facebook/y;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ai;->e:Ljava/lang/String;

    .line 596
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 597
    invoke-virtual {p1}, Lcom/facebook/y;->b()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    const-string v1, ","

    invoke-virtual {p1}, Lcom/facebook/y;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 599
    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v2, "scope"

    invoke-virtual {p0, v2, v1}, Lcom/facebook/ai;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/y;->e()Lcom/facebook/cq;

    move-result-object v1

    .line 604
    const-string v2, "default_audience"

    invoke-virtual {v1}, Lcom/facebook/cq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Lcom/facebook/y;->h()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/facebook/ai;->c:Lcom/facebook/q;

    invoke-virtual {v2}, Lcom/facebook/q;->c()Lcom/facebook/ah;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/ah;->a()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "TOKEN"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 608
    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v1, "access_token"

    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, Lcom/facebook/ai;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 617
    :goto_0
    new-instance v1, Lcom/facebook/aj;

    invoke-direct {v1, p0, p1}, Lcom/facebook/aj;-><init>(Lcom/facebook/ai;Lcom/facebook/y;)V

    .line 624
    invoke-static {}, Lcom/facebook/q;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ai;->f:Ljava/lang/String;

    .line 625
    const-string v2, "e2e"

    iget-object v3, p0, Lcom/facebook/ai;->f:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/ai;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 627
    new-instance v2, Lcom/facebook/w;

    iget-object v3, p0, Lcom/facebook/ai;->c:Lcom/facebook/q;

    invoke-virtual {v3}, Lcom/facebook/q;->c()Lcom/facebook/ah;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/ah;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ai;->e:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/facebook/w;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/ai;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/w;->a(Ljava/lang/String;)Lcom/facebook/w;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/y;->k()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/facebook/w;->a(Z)Lcom/facebook/w;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/w;->a(Lcom/facebook/widget/am;)Lcom/facebook/widget/ak;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/aj;

    .line 632
    invoke-virtual {v0}, Lcom/facebook/widget/aj;->a()Lcom/facebook/widget/af;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ai;->d:Lcom/facebook/widget/af;

    .line 633
    iget-object v0, p0, Lcom/facebook/ai;->d:Lcom/facebook/widget/af;

    invoke-virtual {v0}, Lcom/facebook/widget/af;->show()V

    .line 635
    const/4 v0, 0x1

    return v0

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/facebook/ai;->c:Lcom/facebook/q;

    iget-object v1, v1, Lcom/facebook/q;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/b/cl;->b(Landroid/content/Context;)V

    .line 614
    const-string v1, "access_token"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/facebook/ai;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x1

    return v0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    return v0
.end method

.method final d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 584
    iget-object v0, p0, Lcom/facebook/ai;->d:Lcom/facebook/widget/af;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/facebook/ai;->d:Lcom/facebook/widget/af;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/af;->a(Lcom/facebook/widget/am;)V

    .line 588
    iget-object v0, p0, Lcom/facebook/ai;->d:Lcom/facebook/widget/af;

    invoke-virtual {v0}, Lcom/facebook/widget/af;->dismiss()V

    .line 589
    iput-object v1, p0, Lcom/facebook/ai;->d:Lcom/facebook/widget/af;

    .line 591
    :cond_0
    return-void
.end method
