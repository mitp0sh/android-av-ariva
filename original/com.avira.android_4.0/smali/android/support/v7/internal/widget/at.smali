.class final Landroid/support/v7/internal/widget/at;
.super Landroid/support/v7/internal/widget/ListPopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/av;


# instance fields
.field final synthetic b:Landroid/support/v7/internal/widget/aq;

.field private c:Ljava/lang/CharSequence;

.field private d:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/aq;Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 698
    iput-object p1, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    .line 699
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 701
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/at;->a(Landroid/view/View;)V

    .line 702
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/at;->b()V

    .line 703
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/at;->a()V

    .line 705
    new-instance v0, Landroid/support/v7/internal/widget/y;

    new-instance v1, Landroid/support/v7/internal/widget/au;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/widget/au;-><init>(Landroid/support/v7/internal/widget/at;Landroid/support/v7/internal/widget/aq;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/y;-><init>(Landroid/support/v7/internal/widget/v;Landroid/support/v7/internal/widget/x;)V

    .line 716
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/at;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 717
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/at;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 721
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 722
    iput-object p1, p0, Landroid/support/v7/internal/widget/at;->d:Landroid/widget/ListAdapter;

    .line 723
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Landroid/support/v7/internal/widget/at;->c:Ljava/lang/CharSequence;

    .line 732
    return-void
.end method

.method public final e()V
    .locals 6

    .prologue
    .line 736
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aq;->getPaddingLeft()I

    move-result v1

    .line 737
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    iget v0, v0, Landroid/support/v7/internal/widget/aq;->E:I

    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 738
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aq;->getWidth()I

    move-result v2

    .line 739
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aq;->getPaddingRight()I

    move-result v3

    .line 740
    iget-object v4, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->d:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/at;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/internal/widget/aq;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/at;->c(I)V

    .line 750
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/at;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 751
    const/4 v0, 0x0

    .line 752
    if-eqz v2, :cond_0

    .line 753
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    invoke-static {v0}, Landroid/support/v7/internal/widget/aq;->a(Landroid/support/v7/internal/widget/aq;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 754
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    invoke-static {v0}, Landroid/support/v7/internal/widget/aq;->a(Landroid/support/v7/internal/widget/aq;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    .line 756
    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/at;->a(I)V

    .line 757
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/at;->g()V

    .line 758
    invoke-super {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->e()V

    .line 759
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/at;->k()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 760
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aq;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/at;->d(I)V

    .line 761
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    iget v0, v0, Landroid/support/v7/internal/widget/aq;->E:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 744
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aq;->getWidth()I

    move-result v0

    .line 745
    iget-object v2, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/aq;->getPaddingRight()I

    move-result v2

    .line 746
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/at;->c(I)V

    goto :goto_0

    .line 748
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    iget v0, v0, Landroid/support/v7/internal/widget/aq;->E:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/at;->c(I)V

    goto :goto_0
.end method
