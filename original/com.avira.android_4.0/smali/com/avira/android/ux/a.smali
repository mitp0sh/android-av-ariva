.class public final Lcom/avira/android/ux/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:I

.field private g:F

.field private h:Landroid/view/View;

.field private i:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/avira/applock/common/ux/ParallaxDashboard;ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const v0, 0x7f0e01a9

    invoke-virtual {p2, v0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/ux/a;->a:Landroid/view/View;

    .line 42
    const v0, 0x7f0e00df

    invoke-virtual {p2, v0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/ux/a;->b:Landroid/view/View;

    .line 43
    const v0, 0x7f0e00cf

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/ux/a;->c:Landroid/view/View;

    .line 44
    const v0, 0x7f0e00dc

    invoke-virtual {p2, v0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/ux/a;->d:Landroid/view/View;

    .line 45
    const v0, 0x7f0e00fe

    invoke-virtual {p2, v0}, Lcom/avira/applock/common/ux/ParallaxDashboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/ux/a;->e:Landroid/view/View;

    .line 46
    iput-object p4, p0, Lcom/avira/android/ux/a;->i:Landroid/view/animation/Animation$AnimationListener;

    .line 48
    iput p3, p0, Lcom/avira/android/ux/a;->f:I

    .line 49
    invoke-virtual {p2}, Lcom/avira/applock/common/ux/ParallaxDashboard;->getMaxOverscrollDistance()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/avira/applock/common/ux/ParallaxDashboard;->getParallaxMultiplier()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/avira/android/ux/a;->g:F

    .line 50
    const v0, 0x7f0e00db

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/ux/a;->h:Landroid/view/View;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/avira/android/ux/a;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avira/android/ux/a;->i:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/android/ux/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avira/android/ux/a;->h:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 18

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avira/android/ux/a;->h:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/avira/android/ux/a;->c:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/avira/android/ux/a;->c:Landroid/view/View;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/avira/android/ux/a;->f:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/avira/android/ux/a;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    new-instance v13, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v13, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v13, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v13, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v14, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v15, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    neg-int v6, v12

    int-to-float v6, v6

    sub-int v7, v2, v12

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v15, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v15, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v17, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v2, v2

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x7d0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x43340000    # 180.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v14}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    neg-int v6, v12

    int-to-float v6, v6

    sub-int v7, v11, v12

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v3, Lcom/avira/android/ux/b;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v3, v0, v10, v1}, Lcom/avira/android/ux/b;-><init>(Lcom/avira/android/ux/a;Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v15, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v3, Lcom/avira/android/ux/c;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10, v2}, Lcom/avira/android/ux/c;-><init>(Lcom/avira/android/ux/a;Landroid/view/View;Landroid/view/animation/AnimationSet;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v3, Lcom/avira/android/ux/d;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcom/avira/android/ux/d;-><init>(Lcom/avira/android/ux/a;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v9, v15}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avira/android/ux/a;->a:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/avira/android/ux/a;->f:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avira/android/ux/a;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v3, v3

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v3, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0xdac

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avira/android/ux/a;->b:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/avira/android/ux/a;->f:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/avira/android/ux/a;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v3, v3

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v3, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0xfa0

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avira/android/ux/a;->d:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/avira/android/ux/a;->g:F

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v3, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0xfa0

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avira/android/ux/a;->e:Landroid/view/View;

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 65
    return-void
.end method
