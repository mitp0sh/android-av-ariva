.class final Lcom/facebook/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/cn;


# instance fields
.field final synthetic a:Lcom/facebook/widget/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/facebook/widget/q;->a:Lcom/facebook/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LoginButton;B)V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/facebook/widget/q;-><init>(Lcom/facebook/widget/LoginButton;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/facebook/widget/q;->a:Lcom/facebook/widget/LoginButton;

    # invokes: Lcom/facebook/widget/LoginButton;->fetchUserInfo()V
    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$1700(Lcom/facebook/widget/LoginButton;)V

    .line 880
    iget-object v0, p0, Lcom/facebook/widget/q;->a:Lcom/facebook/widget/LoginButton;

    # invokes: Lcom/facebook/widget/LoginButton;->setButtonText()V
    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$1800(Lcom/facebook/widget/LoginButton;)V

    .line 884
    iget-object v0, p0, Lcom/facebook/widget/q;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/r;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/widget/r;->e(Lcom/facebook/widget/r;)Lcom/facebook/cn;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/facebook/widget/q;->a:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/r;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/widget/r;->e(Lcom/facebook/widget/r;)Lcom/facebook/cn;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/cn;->a(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    if-eqz p3, :cond_0

    .line 887
    iget-object v0, p0, Lcom/facebook/widget/q;->a:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0, p3}, Lcom/facebook/widget/LoginButton;->handleError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
