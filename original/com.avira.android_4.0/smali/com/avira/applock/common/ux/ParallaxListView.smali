.class public Lcom/avira/applock/common/ux/ParallaxListView;
.super Lcom/avira/applock/common/ux/ElasticListView;
.source "SourceFile"


# static fields
.field private static final PARALLAX_MULTIPLIER:F = 0.5f


# instance fields
.field private mHeader:Landroid/view/View;

.field private mHeaderViewInitialTranslationY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/avira/applock/common/ux/ElasticListView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeaderViewInitialTranslationY:F

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/avira/applock/common/ux/ElasticListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeaderViewInitialTranslationY:F

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/avira/applock/common/ux/ElasticListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeaderViewInitialTranslationY:F

    .line 39
    return-void
.end method

.method private getTranslationY(Landroid/view/View;)F
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 88
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 92
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTranslationY(Landroid/view/View;F)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 98
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/avira/applock/common/ux/ElasticListView;->addHeaderView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0}, Lcom/avira/applock/common/ux/ParallaxListView;->getHeaderViewsCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "parallax list view has only one header"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeader:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeader:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/avira/applock/common/ux/ParallaxListView;->getTranslationY(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeaderViewInitialTranslationY:F

    .line 52
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/avira/applock/common/ux/ElasticListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 58
    invoke-virtual {p0}, Lcom/avira/applock/common/ux/ParallaxListView;->getHeaderViewsCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "parallax list view has only one header"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeader:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeader:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/avira/applock/common/ux/ParallaxListView;->getTranslationY(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeaderViewInitialTranslationY:F

    .line 65
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Lcom/avira/applock/common/ux/ElasticListView;->onOverScrolled(IIZZ)V

    .line 109
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 111
    if-gez p2, :cond_0

    .line 113
    int-to-float v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 115
    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeader:Landroid/view/View;

    iget v2, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeaderViewInitialTranslationY:F

    add-float/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/avira/applock/common/ux/ParallaxListView;->setTranslationY(Landroid/view/View;F)V

    .line 118
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Lcom/avira/applock/common/ux/ElasticListView;->onScrollChanged(IIII)V

    .line 73
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    .line 76
    if-lez v0, :cond_0

    .line 78
    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 80
    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeader:Landroid/view/View;

    iget v2, p0, Lcom/avira/applock/common/ux/ParallaxListView;->mHeaderViewInitialTranslationY:F

    add-float/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lcom/avira/applock/common/ux/ParallaxListView;->setTranslationY(Landroid/view/View;F)V

    .line 83
    :cond_0
    return-void
.end method
