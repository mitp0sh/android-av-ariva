.class final Landroid/support/v7/internal/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Landroid/support/v7/internal/widget/g;->a:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/internal/widget/g;->a:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/i;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/s;

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->collapseActionView()Z

    .line 156
    :cond_0
    return-void
.end method
