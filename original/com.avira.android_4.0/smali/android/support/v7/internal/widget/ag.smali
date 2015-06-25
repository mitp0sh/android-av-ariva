.class final Landroid/support/v7/internal/widget/ag;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1356
    iput-object p1, p0, Landroid/support/v7/internal/widget/ag;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V
    .locals 0

    .prologue
    .line 1356
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ag;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->e()V

    .line 1364
    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Landroid/support/v7/internal/widget/ag;->a:Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->f()V

    .line 1369
    return-void
.end method
