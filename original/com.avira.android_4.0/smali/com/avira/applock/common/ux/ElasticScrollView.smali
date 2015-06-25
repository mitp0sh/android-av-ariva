.class public Lcom/avira/applock/common/ux/ElasticScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/ux/b;


# static fields
.field private static final BOUNCE_BACK_HACK_DELAY:I = 0x32

.field private static final LOLLIPOP:I = 0x15


# instance fields
.field private mBounceBackHackRunnable:Ljava/lang/Runnable;

.field private mBounceBackHackTargetPosition:I

.field private mIsTouched:Z

.field private mMaxYOverscrollDistance:I

.field private mScrollViewListener:Lcom/avira/applock/common/ux/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mMaxYOverscrollDistance:I

    .line 28
    iput-boolean v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mIsTouched:Z

    .line 29
    iput v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackTargetPosition:I

    .line 36
    new-instance v0, Lcom/avira/applock/common/ux/a;

    invoke-direct {v0, p0}, Lcom/avira/applock/common/ux/a;-><init>(Lcom/avira/applock/common/ux/ElasticScrollView;)V

    iput-object v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackRunnable:Ljava/lang/Runnable;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mMaxYOverscrollDistance:I

    .line 28
    iput-boolean v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mIsTouched:Z

    .line 29
    iput v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackTargetPosition:I

    .line 36
    new-instance v0, Lcom/avira/applock/common/ux/a;

    invoke-direct {v0, p0}, Lcom/avira/applock/common/ux/a;-><init>(Lcom/avira/applock/common/ux/ElasticScrollView;)V

    iput-object v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackRunnable:Ljava/lang/Runnable;

    .line 59
    invoke-direct {p0, p2}, Lcom/avira/applock/common/ux/ElasticScrollView;->initAttributes(Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mMaxYOverscrollDistance:I

    .line 28
    iput-boolean v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mIsTouched:Z

    .line 29
    iput v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackTargetPosition:I

    .line 36
    new-instance v0, Lcom/avira/applock/common/ux/a;

    invoke-direct {v0, p0}, Lcom/avira/applock/common/ux/a;-><init>(Lcom/avira/applock/common/ux/ElasticScrollView;)V

    iput-object v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackRunnable:Ljava/lang/Runnable;

    .line 65
    invoke-direct {p0, p2}, Lcom/avira/applock/common/ux/ElasticScrollView;->initAttributes(Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/avira/applock/common/ux/ElasticScrollView;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mIsTouched:Z

    return v0
.end method

.method static synthetic access$100(Lcom/avira/applock/common/ux/ElasticScrollView;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackTargetPosition:I

    return v0
.end method

.method private initAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/avira/applock/common/ux/ElasticScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/avira/applock/h;->ElasticScrollView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    sget v1, Lcom/avira/applock/h;->ElasticScrollView_maxOverscrollDistance:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mMaxYOverscrollDistance:I

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public canScrollVertically(I)Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public getMaxOverscrollDistance()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mMaxYOverscrollDistance:I

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
    .line 95
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/ux/ElasticScrollView;->setOverScrollMode(I)V

    .line 101
    :cond_0
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x32

    const/4 v2, 0x0

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 125
    iget-object v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mScrollViewListener:Lcom/avira/applock/common/ux/d;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mScrollViewListener:Lcom/avira/applock/common/ux/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/avira/applock/common/ux/d;->onOverScrolled(IIZZ)V

    .line 130
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 134
    if-gtz p2, :cond_2

    .line 136
    iput v2, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackTargetPosition:I

    .line 137
    iget-object v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/ux/ElasticScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 138
    iget-object v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4, v5}, Lcom/avira/applock/common/ux/ElasticScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/avira/applock/common/ux/ElasticScrollView;->getHeight()I

    move-result v0

    .line 144
    invoke-virtual {p0, v2}, Lcom/avira/applock/common/ux/ElasticScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 145
    sub-int v2, v1, v0

    sub-int/2addr v2, p2

    if-gez v2, :cond_1

    .line 148
    sub-int v0, v1, v0

    iput v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackTargetPosition:I

    .line 149
    iget-object v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/avira/applock/common/ux/ElasticScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 150
    iget-object v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4, v5}, Lcom/avira/applock/common/ux/ElasticScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .prologue
    .line 163
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 164
    iget-object v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mScrollViewListener:Lcom/avira/applock/common/ux/d;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mScrollViewListener:Lcom/avira/applock/common/ux/d;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/avira/applock/common/ux/d;->onScrollChanged(Landroid/view/View;IIII)V

    .line 169
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 187
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mIsTouched:Z

    goto :goto_0

    .line 190
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mIsTouched:Z

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 111
    iget v0, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mMaxYOverscrollDistance:I

    if-lez v0, :cond_0

    iget v8, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mMaxYOverscrollDistance:I

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

    invoke-super/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    .line 114
    :goto_1
    return v0

    :cond_0
    move/from16 v8, p8

    .line 111
    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnScrollListener(Lcom/avira/applock/common/ux/d;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/avira/applock/common/ux/ElasticScrollView;->mScrollViewListener:Lcom/avira/applock/common/ux/d;

    .line 89
    return-void
.end method
