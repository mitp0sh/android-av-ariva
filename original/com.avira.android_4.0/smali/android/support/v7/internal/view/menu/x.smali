.class final Landroid/support/v7/internal/view/menu/x;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# instance fields
.field final a:Landroid/support/v7/a/c;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    .line 420
    check-cast v0, Landroid/support/v7/a/c;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/a/c;

    .line 421
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/x;->addView(Landroid/view/View;)V

    .line 422
    return-void
.end method


# virtual methods
.method final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/a/c;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final onActionViewCollapsed()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/a/c;

    invoke-interface {v0}, Landroid/support/v7/a/c;->onActionViewCollapsed()V

    .line 432
    return-void
.end method

.method public final onActionViewExpanded()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/a/c;

    invoke-interface {v0}, Landroid/support/v7/a/c;->onActionViewExpanded()V

    .line 427
    return-void
.end method
