.class final Lcom/facebook/b/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/c;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/facebook/b/an;


# direct methods
.method constructor <init>(Lcom/facebook/b/an;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/facebook/b/au;->b:Lcom/facebook/b/an;

    iput-object p2, p0, Lcom/facebook/b/au;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 686
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 691
    :cond_0
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 692
    const-string v0, "like_count_string"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 693
    const-string v0, "social_sentence"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 694
    const-string v0, "unlike_token"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 696
    iget-object v0, p0, Lcom/facebook/b/au;->a:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 697
    :goto_1
    const-string v3, "call_id"

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->b()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v3, p0, Lcom/facebook/b/au;->b:Lcom/facebook/b/an;

    invoke-static {v3}, Lcom/facebook/b/an;->b(Lcom/facebook/b/an;)Lcom/facebook/c;

    move-result-object v3

    const-string v5, "fb_like_control_dialog_did_succeed"

    invoke-virtual {v3, v5, v0}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 700
    iget-object v0, p0, Lcom/facebook/b/au;->b:Lcom/facebook/b/an;

    move-object v3, v2

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/facebook/b/au;->a:Landroid/os/Bundle;

    goto :goto_1
.end method

.method public final a(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 711
    sget-object v0, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    invoke-static {}, Lcom/facebook/b/an;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Like Dialog failed with error : %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    iget-object v0, p0, Lcom/facebook/b/au;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 714
    :goto_0
    const-string v1, "call_id"

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/facebook/b/au;->b:Lcom/facebook/b/an;

    const-string v2, "present_dialog"

    invoke-static {v1, v2, v0}, Lcom/facebook/b/an;->a(Lcom/facebook/b/an;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 719
    iget-object v0, p0, Lcom/facebook/b/au;->b:Lcom/facebook/b/an;

    invoke-static {v0}, Lcom/facebook/b/an;->c(Lcom/facebook/b/an;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/au;->b:Lcom/facebook/b/an;

    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {v0, v1, v2, p3}, Lcom/facebook/b/an;->a(Landroid/content/Context;Lcom/facebook/b/an;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 720
    return-void

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/facebook/b/au;->a:Landroid/os/Bundle;

    goto :goto_0
.end method
