.class final Landroid/support/v7/internal/view/menu/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ae;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;B)V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/g;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/internal/view/menu/o;Z)V
    .locals 2

    .prologue
    .line 648
    instance-of v0, p1, Landroid/support/v7/internal/view/menu/aj;

    if-eqz v0, :cond_0

    .line 649
    check-cast p1, Landroid/support/v7/internal/view/menu/aj;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/aj;->q()Landroid/support/v7/internal/view/menu/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->a(Z)V

    .line 651
    :cond_0
    return-void
.end method

.method public final b(Landroid/support/v7/internal/view/menu/o;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 638
    if-nez p1, :cond_0

    .line 643
    :goto_0
    return v2

    .line 642
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    check-cast p1, Landroid/support/v7/internal/view/menu/aj;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/aj;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b:I

    goto :goto_0
.end method
