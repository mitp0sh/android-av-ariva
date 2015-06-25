.class final Lcom/facebook/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/am;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field final synthetic c:Lcom/facebook/widget/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/c;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/b/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/b/m;->b:Lcom/facebook/widget/FacebookDialog$PendingCall;

    iput-object p3, p0, Lcom/facebook/b/m;->c:Lcom/facebook/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;Lcom/facebook/am;)V
    .locals 4

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/facebook/b/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/b/m;->b:Lcom/facebook/widget/FacebookDialog$PendingCall;

    iget-object v2, p0, Lcom/facebook/b/m;->b:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->c()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/b/m;->c:Lcom/facebook/widget/c;

    invoke-static {v1, v2, v0, v3}, Lcom/facebook/widget/FacebookDialog;->a(Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/c;)Z

    .line 74
    return-void
.end method
