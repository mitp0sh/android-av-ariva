.class public final Lcom/avira/android/idsafeguard/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static a:D

.field private static b:I

.field private static c:I

.field private static d:I


# instance fields
.field private e:Z

.field private f:Z

.field private g:F

.field private h:Z

.field private i:Z

.field private final j:Landroid/content/Context;

.field private k:I

.field private l:Landroid/os/Handler;

.field private m:Landroid/view/ViewConfiguration;

.field private n:Lcom/avira/android/idsafeguard/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-wide v0, 0x3fe3333333333333L    # 0.6

    sput-wide v0, Lcom/avira/android/idsafeguard/d/b;->a:D

    .line 31
    const/16 v0, 0xa

    sput v0, Lcom/avira/android/idsafeguard/d/b;->b:I

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/avira/android/idsafeguard/d/b;->c:I

    .line 33
    const/16 v0, 0xc8

    sput v0, Lcom/avira/android/idsafeguard/d/b;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lcom/avira/android/idsafeguard/d/b;->e:Z

    .line 36
    iput-boolean v1, p0, Lcom/avira/android/idsafeguard/d/b;->f:Z

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/idsafeguard/d/b;->g:F

    .line 39
    iput-boolean v1, p0, Lcom/avira/android/idsafeguard/d/b;->h:Z

    .line 40
    iput-boolean v1, p0, Lcom/avira/android/idsafeguard/d/b;->i:Z

    .line 43
    iput v1, p0, Lcom/avira/android/idsafeguard/d/b;->k:I

    .line 51
    iput-object p1, p0, Lcom/avira/android/idsafeguard/d/b;->j:Landroid/content/Context;

    .line 52
    iput-boolean p2, p0, Lcom/avira/android/idsafeguard/d/b;->h:Z

    .line 53
    iput-boolean p3, p0, Lcom/avira/android/idsafeguard/d/b;->i:Z

    .line 55
    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/b;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/avira/android/idsafeguard/d/b;->k:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/d/b;->l:Landroid/os/Handler;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/b;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/d/b;->m:Landroid/view/ViewConfiguration;

    .line 56
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/avira/android/idsafeguard/d/b;->c:I

    return v0
.end method

.method private a(FLandroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 322
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 324
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/avira/android/idsafeguard/d/b;->k:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 326
    float-to-int v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 327
    float-to-int v1, p1

    neg-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 328
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 346
    if-nez p0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 355
    :cond_2
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 357
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avira/android/idsafeguard/d/b;FLandroid/view/View;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/avira/android/idsafeguard/d/b;->a(FLandroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/idsafeguard/d/b;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/b;->n:Lcom/avira/android/idsafeguard/b/e;

    invoke-interface {v0, p1}, Lcom/avira/android/idsafeguard/b/e;->onItemClicked(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/idsafeguard/d/b;ZLandroid/view/View;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/b;->n:Lcom/avira/android/idsafeguard/b/e;

    invoke-interface {v0, p1, p2}, Lcom/avira/android/idsafeguard/b/e;->a(ZLandroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/idsafeguard/d/b;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/avira/android/idsafeguard/d/b;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/avira/android/idsafeguard/d/b;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const v10, 0x7f06004c

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 28
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v1, v0

    :goto_1
    return v1

    :pswitch_0
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/avira/android/idsafeguard/d/b;->g:F

    iput-boolean v0, p0, Lcom/avira/android/idsafeguard/d/b;->e:Z

    iput-boolean v0, p0, Lcom/avira/android/idsafeguard/d/b;->f:Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/avira/android/idsafeguard/d/b;->g:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/avira/android/idsafeguard/d/b;->m:Landroid/view/ViewConfiguration;

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    cmpg-float v3, v2, v8

    if-gez v3, :cond_2

    iget-boolean v3, p0, Lcom/avira/android/idsafeguard/d/b;->h:Z

    if-eqz v3, :cond_2

    invoke-static {p2, v1}, Lcom/avira/android/idsafeguard/d/b;->a(Landroid/view/View;Z)V

    invoke-static {p3, v0}, Lcom/avira/android/idsafeguard/d/b;->a(Landroid/view/View;Z)V

    float-to-double v4, v2

    sget-wide v6, Lcom/avira/android/idsafeguard/d/b;->a:D

    neg-double v6, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v6, v8

    sget v3, Lcom/avira/android/idsafeguard/d/b;->b:I

    int-to-double v8, v3

    add-double/2addr v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    const v3, 0x7f06004b

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    invoke-direct {p0, v2, p1}, Lcom/avira/android/idsafeguard/d/b;->a(FLandroid/view/View;)V

    iput-boolean v1, p0, Lcom/avira/android/idsafeguard/d/b;->e:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    cmpl-float v3, v2, v8

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lcom/avira/android/idsafeguard/d/b;->i:Z

    if-eqz v3, :cond_0

    invoke-static {p2, v0}, Lcom/avira/android/idsafeguard/d/b;->a(Landroid/view/View;Z)V

    invoke-static {p3, v1}, Lcom/avira/android/idsafeguard/d/b;->a(Landroid/view/View;Z)V

    float-to-double v4, v2

    sget-wide v6, Lcom/avira/android/idsafeguard/d/b;->a:D

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v8, v3

    mul-double/2addr v6, v8

    sget v3, Lcom/avira/android/idsafeguard/d/b;->b:I

    int-to-double v8, v3

    sub-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    const v3, 0x7f060049

    invoke-virtual {p3, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    invoke-direct {p0, v2, p1}, Lcom/avira/android/idsafeguard/d/b;->a(FLandroid/view/View;)V

    iput-boolean v1, p0, Lcom/avira/android/idsafeguard/d/b;->e:Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p3, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_2
    iget-boolean v2, p0, Lcom/avira/android/idsafeguard/d/b;->e:Z

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/avira/android/idsafeguard/d/b;->g:F

    sub-float/2addr v2, v3

    cmpg-float v3, v2, v8

    if-gez v3, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    sget-wide v4, Lcom/avira/android/idsafeguard/d/b;->a:D

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    :goto_4
    iput-boolean v1, p0, Lcom/avira/android/idsafeguard/d/b;->f:Z

    :goto_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/avira/android/idsafeguard/d/e;

    invoke-direct {v4, p0, v0, p1}, Lcom/avira/android/idsafeguard/d/e;-><init>(Lcom/avira/android/idsafeguard/d/b;ZLandroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v3, Lcom/avira/android/idsafeguard/d/b;->d:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_4

    :cond_6
    sget v2, Lcom/avira/android/idsafeguard/d/b;->c:I

    int-to-float v2, v2

    goto :goto_5

    :cond_7
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v8, v2, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    sget v2, Lcom/avira/android/idsafeguard/d/b;->d:I

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/avira/android/idsafeguard/d/b;->l:Landroid/os/Handler;

    new-instance v4, Lcom/avira/android/idsafeguard/d/f;

    invoke-direct {v4, p0, p1, v0}, Lcom/avira/android/idsafeguard/d/f;-><init>(Lcom/avira/android/idsafeguard/d/b;Landroid/view/View;Z)V

    invoke-virtual {v3}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/avira/android/idsafeguard/d/c;

    invoke-direct {v0, p0}, Lcom/avira/android/idsafeguard/d/c;-><init>(Lcom/avira/android/idsafeguard/d/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v0, Lcom/avira/android/idsafeguard/d/d;

    invoke-direct {v0, p0, p2, p3}, Lcom/avira/android/idsafeguard/d/d;-><init>(Lcom/avira/android/idsafeguard/d/b;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    return-void
.end method

.method public final a(Lcom/avira/android/idsafeguard/b/e;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/avira/android/idsafeguard/d/b;->n:Lcom/avira/android/idsafeguard/b/e;

    .line 61
    return-void
.end method
