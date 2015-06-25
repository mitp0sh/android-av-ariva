.class public Lcom/avira/applock/common/ux/ParallaxListViewDashboard;
.super Lcom/avira/applock/common/ux/ParallaxDashboard;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/avira/applock/common/ux/ParallaxDashboard;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/avira/applock/common/ux/ParallaxDashboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/avira/applock/common/ux/ParallaxDashboard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method private initParallax()V
    .locals 3

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mScrollView:Lcom/avira/applock/common/ux/b;

    invoke-interface {v0}, Lcom/avira/applock/common/ux/b;->getMaxOverscrollDistance()I

    move-result v1

    .line 61
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mBottomBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    int-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 64
    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mBottomBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->getTranslationY(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mBackgroundViewInitialTranslationY:F

    .line 69
    iget v0, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mBackgroundViewInitialTranslationY:F

    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mScrollView:Lcom/avira/applock/common/ux/b;

    invoke-interface {v1}, Lcom/avira/applock/common/ux/b;->getMaxOverscrollDistance()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mBackgroundViewInitialTranslationY:F

    .line 70
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mBackgroundView:Landroid/view/View;

    iget v1, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mBackgroundViewInitialTranslationY:F

    invoke-virtual {p0, v0, v1}, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->setTranslationY(Landroid/view/View;F)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public inflateInnerLayouts(I)V
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/avira/applock/d;->stub_plv_background:I

    invoke-virtual {p0, v0, p1}, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->inflateViewStub(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mBackgroundView:Landroid/view/View;

    .line 51
    invoke-direct {p0}, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->initParallax()V

    .line 52
    return-void
.end method

.method protected initLayouts()V
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/avira/applock/d;->parallax_listview:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/common/ux/ElasticListView;

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mScrollView:Lcom/avira/applock/common/ux/b;

    .line 41
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mScrollView:Lcom/avira/applock/common/ux/b;

    invoke-interface {v0, p0}, Lcom/avira/applock/common/ux/b;->setOnScrollListener(Lcom/avira/applock/common/ux/d;)V

    .line 42
    sget v0, Lcom/avira/applock/d;->bottom_plv_background_view:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->mBottomBackground:Landroid/view/View;

    .line 43
    return-void
.end method
