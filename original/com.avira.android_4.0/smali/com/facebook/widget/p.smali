.class final Lcom/facebook/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bl;


# instance fields
.field final synthetic a:Lcom/facebook/by;

.field final synthetic b:Lcom/facebook/widget/LoginButton;


# direct methods
.method constructor <init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/by;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/facebook/widget/p;->b:Lcom/facebook/widget/LoginButton;

    iput-object p2, p0, Lcom/facebook/widget/p;->a:Lcom/facebook/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/c/j;Lcom/facebook/bx;)V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/facebook/widget/p;->a:Lcom/facebook/by;

    iget-object v1, p0, Lcom/facebook/widget/p;->b:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;
    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->access$400(Lcom/facebook/widget/LoginButton;)Lcom/facebook/b/ch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/ch;->b()Lcom/facebook/by;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 768
    iget-object v0, p0, Lcom/facebook/widget/p;->b:Lcom/facebook/widget/LoginButton;

    # setter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/c/j;
    invoke-static {v0, p1}, Lcom/facebook/widget/LoginButton;->access$502(Lcom/facebook/widget/LoginButton;Lcom/facebook/c/j;)Lcom/facebook/c/j;

    .line 769
    iget-object v0, p0, Lcom/facebook/widget/p;->b:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/w;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$600(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/facebook/widget/p;->b:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/w;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$600(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/w;

    iget-object v0, p0, Lcom/facebook/widget/p;->b:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/c/j;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$500(Lcom/facebook/widget/LoginButton;)Lcom/facebook/c/j;

    .line 773
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/bx;->a()Lcom/facebook/ap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/facebook/widget/p;->b:Lcom/facebook/widget/LoginButton;

    invoke-virtual {p2}, Lcom/facebook/bx;->a()Lcom/facebook/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ap;->f()Lcom/facebook/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/LoginButton;->handleError(Ljava/lang/Exception;)V

    .line 776
    :cond_1
    return-void
.end method
