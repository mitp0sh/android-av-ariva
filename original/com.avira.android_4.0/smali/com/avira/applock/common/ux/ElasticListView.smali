.class public Lcom/avira/applock/common/ux/ElasticListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/ux/b;


# instance fields
.field private mMaxYOverscrollDistance:I

.field private mScrollViewListener:Lcom/avira/applock/common/ux/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/applock/common/ux/ElasticListView;->mMaxYOverscrollDistance:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/applock/common/ux/ElasticListView;->mMaxYOverscrollDistance:I

    .line 36
    invoke-direct {p0, p2}, Lcom/avira/applock/common/ux/ElasticListView;->initAttributes(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/applock/common/ux/ElasticListView;->mMaxYOverscrollDistance:I

    .line 42
    invoke-direct {p0, p2}, Lcom/avira/applock/common/ux/ElasticListView;->initAttributes(Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private initAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/avira/applock/common/ux/ElasticListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/avira/applock/h;->ElasticScrollView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    sget v1, Lcom/avira/applock/h;->ElasticScrollView_maxOverscrollDistance:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/avira/applock/common/ux/ElasticListView;->mMaxYOverscrollDistance:I

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public canScrollVertically(I)Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public getMaxOverscrollDistance()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/avira/applock/common/ux/ElasticListView;->mMaxYOverscrollDistance:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/ListView;->onFinishInflate()V

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/ux/ElasticListView;->setOverScrollMode(I)V

    .line 74
    :cond_0
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onOverScrolled(IIZZ)V

    .line 98
    iget-object v0, p0, Lcom/avira/applock/common/ux/ElasticListView;->mScrollViewListener:Lcom/avira/applock/common/ux/d;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/avira/applock/common/ux/ElasticListView;->mScrollViewListener:Lcom/avira/applock/common/ux/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/avira/applock/common/ux/d;->onOverScrolled(IIZZ)V

    .line 103
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .prologue
    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 109
    iget-object v0, p0, Lcom/avira/applock/common/ux/ElasticListView;->mScrollViewListener:Lcom/avira/applock/common/ux/d;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/avira/applock/common/ux/ElasticListView;->mScrollViewListener:Lcom/avira/applock/common/ux/d;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/avira/applock/common/ux/d;->onScrollChanged(Landroid/view/View;IIII)V

    .line 113
    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 84
    iget v0, p0, Lcom/avira/applock/common/ux/ElasticListView;->mMaxYOverscrollDistance:I

    if-lez v0, :cond_0

    iget v8, p0, Lcom/avira/applock/common/ux/ElasticListView;->mMaxYOverscrollDistance:I

    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 87
    :goto_1
    return v0

    :cond_0
    move/from16 v8, p8

    .line 84
    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnScrollListener(Lcom/avira/applock/common/ux/d;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avira/applock/common/ux/ElasticListView;->mScrollViewListener:Lcom/avira/applock/common/ux/d;

    .line 128
    return-void
.end method
