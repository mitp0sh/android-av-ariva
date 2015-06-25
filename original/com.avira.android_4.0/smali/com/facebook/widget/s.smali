.class final Lcom/facebook/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/widget/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LoginButton;B)V
    .locals 0

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/facebook/widget/s;-><init>(Lcom/facebook/widget/LoginButton;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 804
    iget-object v0, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 805
    iget-object v1, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;
    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->access$400(Lcom/facebook/widget/LoginButton;)Lcom/facebook/b/ch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/ch;->b()Lcom/facebook/by;

    move-result-object v5

    .line 807
    if-eqz v5, :cond_4

    .line 809
    iget-object v1, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->confirmLogout:Z
    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->access$700(Lcom/facebook/widget/LoginButton;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 811
    iget-object v1, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/facebook/a/g;->com_facebook_loginview_log_out_action:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 812
    iget-object v1, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lcom/facebook/a/g;->com_facebook_loginview_cancel_action:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 814
    iget-object v1, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/c/j;
    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->access$500(Lcom/facebook/widget/LoginButton;)Lcom/facebook/c/j;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/c/j;
    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->access$500(Lcom/facebook/widget/LoginButton;)Lcom/facebook/c/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/c/j;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 815
    iget-object v1, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v8, Lcom/facebook/a/g;->com_facebook_loginview_logged_in_as:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/c/j;
    invoke-static {v9}, Lcom/facebook/widget/LoginButton;->access$500(Lcom/facebook/widget/LoginButton;)Lcom/facebook/c/j;

    move-result-object v9

    invoke-interface {v9}, Lcom/facebook/c/j;->g()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 819
    :goto_0
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 820
    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/widget/t;

    invoke-direct {v1, p0, v5}, Lcom/facebook/widget/t;-><init>(Lcom/facebook/widget/s;Lcom/facebook/by;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 828
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 862
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/c;->a(Landroid/content/Context;)Lcom/facebook/c;

    move-result-object v1

    .line 864
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 865
    const-string v6, "logging_in"

    if-eqz v5, :cond_9

    move v0, v2

    :goto_2
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 867
    iget-object v0, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$1500(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 869
    iget-object v0, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$1600(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$1600(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 872
    :cond_1
    return-void

    .line 817
    :cond_2
    iget-object v1, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v8, Lcom/facebook/a/g;->com_facebook_loginview_logged_in_using_facebook:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 830
    :cond_3
    invoke-virtual {v5}, Lcom/facebook/by;->g()V

    goto :goto_1

    .line 833
    :cond_4
    iget-object v1, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;
    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->access$400(Lcom/facebook/widget/LoginButton;)Lcom/facebook/b/ch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/ch;->a()Lcom/facebook/by;

    move-result-object v1

    .line 834
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/facebook/by;->c()Lcom/facebook/cs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/cs;->b()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 835
    :cond_5
    iget-object v1, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;
    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->access$400(Lcom/facebook/widget/LoginButton;)Lcom/facebook/b/ch;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/facebook/b/ch;->a(Lcom/facebook/by;)V

    .line 836
    new-instance v1, Lcom/facebook/cj;

    invoke-direct {v1, v0}, Lcom/facebook/cj;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/widget/LoginButton;->access$800(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/facebook/cj;->a(Ljava/lang/String;)Lcom/facebook/cj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/cj;->a()Lcom/facebook/by;

    move-result-object v1

    .line 837
    invoke-static {v1}, Lcom/facebook/by;->a(Lcom/facebook/by;)V

    .line 840
    :cond_6
    invoke-virtual {v1}, Lcom/facebook/by;->a()Z

    move-result v6

    if-nez v6, :cond_0

    .line 842
    iget-object v6, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v6}, Lcom/facebook/widget/LoginButton;->access$900(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 843
    new-instance v0, Lcom/facebook/ck;

    iget-object v4, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v4}, Lcom/facebook/widget/LoginButton;->access$900(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/facebook/ck;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 848
    :goto_3
    if-eqz v0, :cond_0

    .line 849
    iget-object v4, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;
    invoke-static {v4}, Lcom/facebook/widget/LoginButton;->access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/r;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/widget/r;->a(Lcom/facebook/widget/r;)Lcom/facebook/cq;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/ck;->b(Lcom/facebook/cq;)Lcom/facebook/ck;

    .line 850
    iget-object v4, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;
    invoke-static {v4}, Lcom/facebook/widget/LoginButton;->access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/r;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/widget/r;->b(Lcom/facebook/widget/r;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/ck;->b(Ljava/util/List;)Lcom/facebook/ck;

    .line 851
    iget-object v4, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;
    invoke-static {v4}, Lcom/facebook/widget/LoginButton;->access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/r;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/widget/r;->c(Lcom/facebook/widget/r;)Lcom/facebook/cr;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/ck;->b(Lcom/facebook/cr;)Lcom/facebook/ck;

    .line 853
    sget-object v4, Lcom/facebook/b/cg;->PUBLISH:Lcom/facebook/b/cg;

    iget-object v6, p0, Lcom/facebook/widget/s;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;
    invoke-static {v6}, Lcom/facebook/widget/LoginButton;->access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/r;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/widget/r;->d(Lcom/facebook/widget/r;)Lcom/facebook/b/cg;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/facebook/b/cg;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 854
    invoke-virtual {v1, v0}, Lcom/facebook/by;->b(Lcom/facebook/ck;)V

    goto/16 :goto_1

    .line 844
    :cond_7
    instance-of v6, v0, Landroid/app/Activity;

    if-eqz v6, :cond_a

    .line 845
    new-instance v4, Lcom/facebook/ck;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v4, v0}, Lcom/facebook/ck;-><init>(Landroid/app/Activity;)V

    move-object v0, v4

    goto :goto_3

    .line 856
    :cond_8
    invoke-virtual {v1, v0}, Lcom/facebook/by;->a(Lcom/facebook/ck;)V

    goto/16 :goto_1

    :cond_9
    move v0, v3

    .line 865
    goto/16 :goto_2

    :cond_a
    move-object v0, v4

    goto :goto_3
.end method
