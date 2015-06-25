.class public abstract Lcom/facebook/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/a",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/app/Activity;

.field protected final b:Ljava/lang/String;

.field protected final c:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field protected d:Landroid/support/v4/app/Fragment;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/a;->f:Ljava/util/HashMap;

    .line 546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/a;->g:Ljava/util/HashMap;

    .line 554
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/b/cp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    iput-object p1, p0, Lcom/facebook/widget/a;->a:Landroid/app/Activity;

    .line 557
    invoke-static {p1}, Lcom/facebook/b/cl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/a;->b:Ljava/lang/String;

    .line 558
    new-instance v0, Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-direct {v0}, Lcom/facebook/widget/FacebookDialog$PendingCall;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/a;->c:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 559
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<+",
            "Lcom/facebook/widget/d;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract b()Landroid/os/Bundle;
.end method

.method public final f()Lcom/facebook/widget/FacebookDialog;
    .locals 6

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/facebook/widget/a;->a()Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/widget/FacebookDialog;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 614
    iget-object v0, p0, Lcom/facebook/widget/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/widget/a;->a()Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/widget/FacebookDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)[I

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/facebook/b/bw;->a(Landroid/content/Context;Ljava/lang/String;[I)I

    move-result v3

    .line 617
    invoke-static {v3}, Lcom/facebook/b/bw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/facebook/widget/a;->b()Landroid/os/Bundle;

    move-result-object v5

    .line 626
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/a;->c:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/facebook/widget/a;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/facebook/b/bw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 633
    if-nez v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/facebook/widget/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/a;->d:Landroid/support/v4/app/Fragment;

    const-string v3, "com.facebook.platform.extra.PHOTOS"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/facebook/widget/FacebookDialog;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed"

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/widget/FacebookDialog;->a(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    new-instance v0, Lcom/facebook/am;

    const-string v1, "Unable to create Intent; this likely means the Facebook app is not installed."

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 642
    :cond_1
    iget-object v1, p0, Lcom/facebook/widget/a;->c:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-static {v1, v0}, Lcom/facebook/widget/FacebookDialog$PendingCall;->a(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/content/Intent;)V

    .line 644
    new-instance v0, Lcom/facebook/widget/FacebookDialog;

    iget-object v1, p0, Lcom/facebook/widget/a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/widget/a;->d:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/facebook/widget/a;->c:Lcom/facebook/widget/FacebookDialog$PendingCall;

    new-instance v4, Lcom/facebook/widget/b;

    invoke-direct {v4, p0}, Lcom/facebook/widget/b;-><init>(Lcom/facebook/widget/a;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/FacebookDialog;-><init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/e;B)V

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 652
    invoke-virtual {p0}, Lcom/facebook/widget/a;->a()Ljava/util/EnumSet;

    move-result-object v0

    .line 655
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/d;

    .line 658
    invoke-interface {v0}, Lcom/facebook/widget/d;->name()Ljava/lang/String;

    move-result-object v2

    .line 659
    invoke-interface {v0}, Lcom/facebook/widget/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 660
    :goto_0
    iget-object v3, p0, Lcom/facebook/widget/a;->b:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/b/cn;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/b/cn;->c()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 692
    :cond_0
    :goto_1
    return-object v1

    .line 671
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/widget/a;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 672
    invoke-static {}, Lcom/facebook/b/bw;->a()I

    move-result v3

    .line 673
    iget-object v4, p0, Lcom/facebook/widget/a;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcom/facebook/widget/a;->c:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v5}, Lcom/facebook/widget/FacebookDialog$PendingCall;->b()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/widget/a;->e:Ljava/lang/String;

    invoke-static {v4, v5, v3, v6, v2}, Lcom/facebook/b/cf;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 679
    if-eqz v2, :cond_0

    .line 685
    invoke-virtual {v0}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    invoke-static {}, Lcom/facebook/b/cf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 692
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/facebook/widget/a;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/facebook/widget/a;->a()Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->a(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method
