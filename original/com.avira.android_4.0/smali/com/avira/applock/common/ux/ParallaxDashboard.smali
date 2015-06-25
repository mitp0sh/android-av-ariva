.class public Lcom/avira/applock/common/ux/ParallaxDashboard;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/ux/d;


# static fields
.field protected static final ADJUSTMENT:F = 1.1f

.field protected static final PARALLAX_MULTIPLIER:F = 0.5f


# instance fields
.field protected mBackgroundView:Landroid/view/View;

.field protected mBackgroundViewInitialTranslationY:F

.field protected mBottomBackground:Landroid/view/View;

.field protected mContentView:Landroid/view/View;

.field protected mHeaderView:Landroid/view/View;

.field private mHeaderViewInitialTranslationY:F

.field protected mHideableOverlayTopView:Landroid/view/View;

.field private mScreenHeight:I

.field protected mScrollView:Lcom/avira/applock/common/ux/b;

.field private mScrollViewContent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHeaderViewInitialTranslationY:F

    .line 36
    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundViewInitialTranslationY:F

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHeaderViewInitialTranslationY:F

    .line 36
    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundViewInitialTranslationY:F

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHeaderViewInitialTranslationY:F

    .line 36
    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundViewInitialTranslationY:F

    .line 59
    return-void
.end method

.method private initParallax()V
    .locals 3

    .prologue
    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 154
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mScrollView:Lcom/avira/applock/common/ux/b;

    invoke-interface {v0}, Lcom/avira/applock/common/ux/b;->getMaxOverscrollDistance()I

    move-result v1

    .line 157
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBottomBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 159
    int-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 160
    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBottomBackground:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBottomBackground:Landroid/view/View;

    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/avira/applock/common/ux/ParallaxDashboard;->setBackgroundColor(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->getTranslationY(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHeaderViewInitialTranslationY:F

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->getTranslationY(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundViewInitialTranslationY:F

    .line 176
    iget v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundViewInitialTranslationY:F

    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mScrollView:Lcom/avira/applock/common/ux/b;

    invoke-interface {v1}, Lcom/avira/applock/common/ux/b;->getMaxOverscrollDistance()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundViewInitialTranslationY:F

    .line 177
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundView:Landroid/view/View;

    iget v1, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundViewInitialTranslationY:F

    invoke-virtual {p0, v0, v1}, Lcom/avira/applock/common/ux/ParallaxDashboard;->setTranslationY(Landroid/view/View;F)V

    .line 181
    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxOverscrollDistance()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mScrollView:Lcom/avira/applock/common/ux/b;

    invoke-interface {v0}, Lcom/avira/applock/common/ux/b;->getMaxOverscrollDistance()I

    move-result v0

    return v0
.end method

.method public getParallaxMultiplier()F
    .locals 1

    .prologue
    .line 73
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method protected getTranslationY(Landroid/view/View;)F
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 214
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateInnerLayouts(IIIII)V
    .locals 1

    .prologue
    .line 115
    sget v0, Lcom/avira/applock/d;->stub_content:I

    invoke-virtual {p0, v0, p1}, Lcom/avira/applock/common/ux/ParallaxDashboard;->inflateViewStub(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mContentView:Landroid/view/View;

    .line 118
    sget v0, Lcom/avira/applock/d;->stub_header:I

    invoke-virtual {p0, v0, p2}, Lcom/avira/applock/common/ux/ParallaxDashboard;->inflateViewStub(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHeaderView:Landroid/view/View;

    .line 121
    sget v0, Lcom/avira/applock/d;->stub_overscroll_background:I

    invoke-virtual {p0, v0, p3}, Lcom/avira/applock/common/ux/ParallaxDashboard;->inflateViewStub(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundView:Landroid/view/View;

    .line 124
    sget v0, Lcom/avira/applock/d;->stub_hideable_top_overlay:I

    invoke-virtual {p0, v0, p4}, Lcom/avira/applock/common/ux/ParallaxDashboard;->inflateViewStub(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHideableOverlayTopView:Landroid/view/View;

    .line 127
    sget v0, Lcom/avira/applock/d;->stub_non_hideable_top_overlay:I

    invoke-virtual {p0, v0, p5}, Lcom/avira/applock/common/ux/ParallaxDashboard;->inflateViewStub(II)Landroid/view/View;

    .line 130
    invoke-direct {p0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->initParallax()V

    .line 132
    return-void
.end method

.method protected inflateViewStub(II)Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/avira/applock/common/ux/ParallaxDashboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 140
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 143
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initLayouts()V
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/avira/applock/d;->elastic_scrollview:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/common/ux/ElasticScrollView;

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mScrollView:Lcom/avira/applock/common/ux/b;

    .line 106
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mScrollView:Lcom/avira/applock/common/ux/b;

    invoke-interface {v0, p0}, Lcom/avira/applock/common/ux/b;->setOnScrollListener(Lcom/avira/applock/common/ux/d;)V

    .line 107
    sget v0, Lcom/avira/applock/d;->bottom_background_view:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBottomBackground:Landroid/view/View;

    .line 108
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 90
    invoke-virtual {p0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->initLayouts()V

    .line 92
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 93
    invoke-virtual {p0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mScreenHeight:I

    .line 95
    const-class v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mScrollView:Lcom/avira/applock/common/ux/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mScrollView:Lcom/avira/applock/common/ux/b;

    check-cast v0, Landroid/widget/ScrollView;

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mScrollViewContent:Landroid/view/View;

    .line 101
    :cond_0
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 263
    .line 265
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mScrollViewContent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 267
    iget v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mScreenHeight:I

    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mScrollViewContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 270
    :goto_0
    if-lez v0, :cond_1

    if-lez p2, :cond_1

    .line 272
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBottomBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 274
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBottomBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :cond_0
    :goto_1
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBottomBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBottomBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, p2

    goto :goto_0
.end method

.method public onScrollChanged(Landroid/view/View;IIII)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 235
    int-to-float v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 237
    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHeaderView:Landroid/view/View;

    iget v2, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHeaderViewInitialTranslationY:F

    add-float/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/avira/applock/common/ux/ParallaxDashboard;->setTranslationY(Landroid/view/View;F)V

    .line 240
    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundView:Landroid/view/View;

    iget v2, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mBackgroundViewInitialTranslationY:F

    sub-float v0, v2, v0

    invoke-virtual {p0, v1, v0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->setTranslationY(Landroid/view/View;F)V

    .line 243
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHideableOverlayTopView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHideableOverlayTopView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 247
    if-lt p3, v0, :cond_1

    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHideableOverlayTopView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 249
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHideableOverlayTopView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHideableOverlayTopView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 253
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxDashboard;->mHideableOverlayTopView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setBackgroundColor(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 186
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    instance-of v1, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 194
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    .line 196
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 208
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 200
    :cond_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 201
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 204
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 205
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method protected setTranslationY(Landroid/view/View;F)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 224
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 226
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 229
    :cond_0
    return-void
.end method
