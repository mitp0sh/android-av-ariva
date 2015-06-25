.class final Landroid/support/v7/internal/view/menu/y;
.super Landroid/support/v7/internal/view/menu/l;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/view/menu/l",
        "<",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/support/v7/internal/view/menu/u;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/u;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/y;->b:Landroid/support/v7/internal/view/menu/u;

    .line 342
    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/l;-><init>(Ljava/lang/Object;)V

    .line 343
    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/y;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/y;->b:Landroid/support/v7/internal/view/menu/u;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/u;->a(Landroid/view/MenuItem;)Landroid/support/v4/a/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
