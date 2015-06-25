.class final Landroid/support/v7/internal/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ad;


# instance fields
.field a:Landroid/support/v7/internal/view/menu/o;

.field b:Landroid/support/v7/internal/view/menu/s;

.field final synthetic c:Landroid/support/v7/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 1366
    iput-object p1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;B)V
    .locals 0

    .prologue
    .line 1366
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/i;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;)V
    .locals 2

    .prologue
    .line 1374
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/s;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Landroid/support/v7/internal/view/menu/s;)Z

    .line 1377
    :cond_0
    iput-object p2, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/o;

    .line 1378
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/o;Z)V
    .locals 0

    .prologue
    .line 1420
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/aj;)Z
    .locals 1

    .prologue
    .line 1415
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 1429
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1430
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->access$500(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1431
    iput-object p1, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/s;

    .line 1432
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_0

    .line 1433
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, v1, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1435
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_1

    .line 1436
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1438
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$700(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1439
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$800(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1440
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$800(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1442
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$900(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1443
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$900(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1445
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/aq;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1446
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/aq;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/aq;->setVisibility(I)V

    .line 1448
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1449
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1451
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    .line 1452
    invoke-virtual {p1, v4}, Landroid/support/v7/internal/view/menu/s;->e(Z)V

    .line 1454
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/a/c;

    if-eqz v0, :cond_6

    .line 1455
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/support/v7/a/c;

    invoke-interface {v0}, Landroid/support/v7/a/c;->onActionViewExpanded()V

    .line 1458
    :cond_6
    return v4
.end method

.method public final c(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1388
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/s;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/o;

    if-eqz v0, :cond_2

    .line 1392
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->size()I

    move-result v3

    move v2, v1

    .line 1393
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1394
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/o;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/a/b;

    .line 1395
    iget-object v4, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/s;

    if-ne v0, v4, :cond_1

    .line 1396
    const/4 v0, 0x1

    .line 1402
    :goto_1
    if-nez v0, :cond_0

    .line 1404
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->a:Landroid/support/v7/internal/view/menu/o;

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/i;->c(Landroid/support/v7/internal/view/menu/s;)Z

    .line 1407
    :cond_0
    return-void

    .line 1393
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final c(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1465
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/a/c;

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/support/v7/a/c;

    invoke-interface {v0}, Landroid/support/v7/a/c;->onActionViewCollapsed()V

    .line 1469
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, v1, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1470
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1471
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1472
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1200(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1473
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$700(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1475
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1200(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1476
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$800(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1477
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # invokes: Landroid/support/v7/internal/widget/ActionBarView;->initTitle()V
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1300(Landroid/support/v7/internal/widget/ActionBarView;)V

    .line 1482
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$900(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1400(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1483
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$900(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1485
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/aq;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1400(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1486
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/aq;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/aq;->setVisibility(I)V

    .line 1488
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1200(Landroid/support/v7/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 1489
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$1100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1491
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1492
    iput-object v3, p0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/s;

    .line 1493
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    .line 1494
    invoke-virtual {p1, v2}, Landroid/support/v7/internal/view/menu/s;->e(Z)V

    .line 1496
    return v4

    .line 1479
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/i;->c:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$800(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 1424
    const/4 v0, 0x0

    return v0
.end method
