.class public Lcom/avira/applock/common/ux/ParallaxScrollView;
.super Lcom/avira/applock/common/ux/ElasticScrollView;
.source "SourceFile"


# instance fields
.field mDisplayMatrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/avira/applock/common/ux/ElasticScrollView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxScrollView;->mDisplayMatrics:Landroid/util/DisplayMetrics;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/avira/applock/common/ux/ElasticScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxScrollView;->mDisplayMatrics:Landroid/util/DisplayMetrics;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/avira/applock/common/ux/ElasticScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/common/ux/ParallaxScrollView;->mDisplayMatrics:Landroid/util/DisplayMetrics;

    .line 42
    return-void
.end method

.method private measureChildHeight(Landroid/view/ViewGroup;II)V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 89
    const/4 v1, 0x0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v1, v0}, Lcom/avira/applock/common/ux/ParallaxScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 90
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 92
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/avira/applock/common/ux/ElasticScrollView;->onMeasure(II)V

    .line 50
    invoke-virtual {p0}, Lcom/avira/applock/common/ux/ParallaxScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/applock/common/ux/ParallaxScrollView;->mDisplayMatrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 55
    iget-object v0, p0, Lcom/avira/applock/common/ux/ParallaxScrollView;->mDisplayMatrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v0, 0x2

    .line 58
    invoke-virtual {p0, v4}, Lcom/avira/applock/common/ux/ParallaxScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ParrallaxScrollView takes exactly 2 child views in the container."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 67
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    .line 68
    if-ge v3, v2, :cond_1

    .line 71
    invoke-direct {p0, v1, v2, p1}, Lcom/avira/applock/common/ux/ParallaxScrollView;->measureChildHeight(Landroid/view/ViewGroup;II)V

    .line 75
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 76
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    .line 77
    add-int/lit8 v3, v3, 0x0

    .line 78
    invoke-direct {p0, v1, v3, p1}, Lcom/avira/applock/common/ux/ParallaxScrollView;->measureChildHeight(Landroid/view/ViewGroup;II)V

    .line 81
    add-int v1, v2, v3

    .line 82
    invoke-direct {p0, v0, v1, p1}, Lcom/avira/applock/common/ux/ParallaxScrollView;->measureChildHeight(Landroid/view/ViewGroup;II)V

    .line 84
    :cond_1
    return-void
.end method
