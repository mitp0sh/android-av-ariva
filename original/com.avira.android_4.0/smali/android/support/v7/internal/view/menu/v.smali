.class Landroid/support/v7/internal/view/menu/v;
.super Landroid/view/ActionProvider;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v4/view/n;

.field final synthetic b:Landroid/support/v7/internal/view/menu/u;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/u;Landroid/support/v4/view/n;)V
    .locals 2

    .prologue
    .line 372
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/u;

    .line 373
    invoke-virtual {p2}, Landroid/support/v4/view/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 374
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/n;

    .line 376
    invoke-static {p1}, Landroid/support/v7/internal/view/menu/u;->a(Landroid/support/v7/internal/view/menu/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/n;

    new-instance v1, Landroid/support/v7/internal/view/menu/w;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/view/menu/w;-><init>(Landroid/support/v7/internal/view/menu/v;Landroid/support/v7/internal/view/menu/u;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/n;->a(Landroid/support/v4/view/p;)V

    .line 386
    :cond_0
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/n;

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/u;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/u;->a(Landroid/support/v7/internal/view/menu/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/u;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/u;->b()Z

    .line 395
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/n;

    invoke-virtual {v0}, Landroid/support/v4/view/n;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/n;

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/n;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/u;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/u;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    .line 411
    return-void
.end method
