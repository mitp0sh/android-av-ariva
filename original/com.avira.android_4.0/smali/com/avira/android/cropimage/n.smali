.class final Lcom/avira/android/cropimage/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field public static final MOVE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "HighlightView"


# instance fields
.field a:Landroid/view/View;

.field b:Z

.field c:Z

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/RectF;

.field f:Landroid/graphics/Matrix;

.field private g:Lcom/avira/android/cropimage/o;

.field private h:Landroid/graphics/RectF;

.field private i:Z

.field private j:F

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/graphics/Paint;

.field private final q:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    sget-object v0, Lcom/avira/android/cropimage/o;->None:Lcom/avira/android/cropimage/o;

    iput-object v0, p0, Lcom/avira/android/cropimage/n;->g:Lcom/avira/android/cropimage/o;

    .line 439
    iput-boolean v1, p0, Lcom/avira/android/cropimage/n;->i:Z

    .line 441
    iput-boolean v1, p0, Lcom/avira/android/cropimage/n;->k:Z

    .line 447
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/n;->o:Landroid/graphics/Paint;

    .line 448
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/n;->p:Landroid/graphics/Paint;

    .line 449
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/n;->q:Landroid/graphics/Paint;

    .line 50
    iput-object p1, p0, Lcom/avira/android/cropimage/n;->a:Landroid/view/View;

    .line 51
    return-void
.end method

.method private c()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 391
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 392
    iget-object v1, p0, Lcom/avira/android/cropimage/n;->f:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 393
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method


# virtual methods
.method public final a(FF)I
    .locals 10

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/high16 v8, 0x41a00000    # 20.0f

    .line 175
    invoke-direct {p0}, Lcom/avira/android/cropimage/n;->c()Landroid/graphics/Rect;

    move-result-object v5

    .line 179
    iget-boolean v0, p0, Lcom/avira/android/cropimage/n;->k:Z

    if-eqz v0, :cond_5

    .line 181
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 182
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    .line 183
    mul-float v3, v0, v0

    mul-float v5, v2, v2

    add-float/2addr v3, v5

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 184
    iget-object v5, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 185
    sub-int v6, v3, v5

    .line 186
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_4

    .line 188
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 190
    cmpg-float v0, v2, v9

    if-gez v0, :cond_1

    .line 192
    const/16 v1, 0x8

    .line 251
    :cond_0
    :goto_0
    return v1

    .line 196
    :cond_1
    const/16 v1, 0x10

    goto :goto_0

    .line 201
    :cond_2
    cmpg-float v0, v0, v9

    if-gez v0, :cond_3

    .line 203
    const/4 v1, 0x2

    goto :goto_0

    .line 207
    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    .line 211
    :cond_4
    if-ge v3, v5, :cond_0

    move v1, v4

    .line 213
    goto :goto_0

    .line 224
    :cond_5
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, v8

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_9

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, v8

    cmpg-float v0, p2, v0

    if-gez v0, :cond_9

    move v0, v1

    .line 225
    :goto_1
    iget v3, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v8

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_6

    iget v3, v5, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v8

    cmpg-float v3, p1, v3

    if-gez v3, :cond_6

    move v2, v1

    .line 228
    :cond_6
    iget v3, v5, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_c

    if-eqz v0, :cond_c

    .line 230
    const/4 v3, 0x3

    .line 232
    :goto_2
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_7

    if-eqz v0, :cond_7

    .line 234
    or-int/lit8 v3, v3, 0x4

    .line 236
    :cond_7
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_8

    if-eqz v2, :cond_8

    .line 238
    or-int/lit8 v3, v3, 0x8

    .line 240
    :cond_8
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_b

    if-eqz v2, :cond_b

    .line 242
    or-int/lit8 v3, v3, 0x10

    move v0, v3

    .line 246
    :goto_3
    if-ne v0, v1, :cond_a

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v4

    .line 248
    goto :goto_0

    :cond_9
    move v0, v2

    .line 224
    goto :goto_1

    :cond_a
    move v1, v0

    goto/16 :goto_0

    :cond_b
    move v0, v3

    goto :goto_3

    :cond_c
    move v3, v1

    goto :goto_2
.end method

.method public final a()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 385
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method final a(IFF)V
    .locals 8

    .prologue
    const/16 v6, -0xa

    const/4 v1, 0x1

    const/high16 v3, 0x41c80000    # 25.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0}, Lcom/avira/android/cropimage/n;->c()Landroid/graphics/Rect;

    move-result-object v2

    .line 259
    if-ne p1, v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 263
    :cond_0
    const/16 v4, 0x20

    if-ne p1, v4, :cond_1

    .line 266
    iget-object v1, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float/2addr v1, p2

    iget-object v3, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    mul-float/2addr v2, p3

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v4, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v4, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0}, Lcom/avira/android/cropimage/n;->c()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/avira/android/cropimage/n;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 270
    :cond_1
    and-int/lit8 v4, p1, 0x6

    if-nez v4, :cond_2

    move p2, v0

    .line 275
    :cond_2
    and-int/lit8 v4, p1, 0x18

    if-nez v4, :cond_3

    move p3, v0

    .line 281
    :cond_3
    iget-object v4, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p2

    .line 282
    iget-object v5, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v5, v2

    mul-float v5, p3, v2

    .line 283
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_c

    const/4 v2, -0x1

    :goto_1
    int-to-float v2, v2

    mul-float/2addr v2, v4

    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_4

    const/4 v1, -0x1

    :cond_4
    int-to-float v1, v1

    mul-float/2addr v1, v5

    iget-boolean v4, p0, Lcom/avira/android/cropimage/n;->i:Z

    if-eqz v4, :cond_5

    cmpl-float v4, v2, v0

    if-eqz v4, :cond_d

    iget v1, p0, Lcom/avira/android/cropimage/n;->j:F

    div-float v1, v2, v1

    :cond_5
    :goto_2
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    cmpl-float v5, v2, v0

    if-lez v5, :cond_6

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v6, v7, v2

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    iget-object v2, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v2, v5

    div-float/2addr v2, v7

    iget-boolean v5, p0, Lcom/avira/android/cropimage/n;->i:Z

    if-eqz v5, :cond_6

    iget v1, p0, Lcom/avira/android/cropimage/n;->j:F

    div-float v1, v2, v1

    :cond_6
    cmpl-float v5, v1, v0

    if-lez v5, :cond_7

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v6, v7, v1

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    iget-object v1, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v1, v5

    div-float/2addr v1, v7

    iget-boolean v5, p0, Lcom/avira/android/cropimage/n;->i:Z

    if-eqz v5, :cond_7

    iget v2, p0, Lcom/avira/android/cropimage/n;->j:F

    mul-float/2addr v2, v1

    :cond_7
    neg-float v2, v2

    neg-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_8

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v1, v3, v1

    neg-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v4, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_8
    iget-boolean v1, p0, Lcom/avira/android/cropimage/n;->i:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/avira/android/cropimage/n;->j:F

    div-float v1, v3, v1

    :goto_3
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_9

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    :cond_9
    iget v1, v4, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_f

    iget-object v1, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_a
    :goto_4
    iget v1, v4, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_10

    iget-object v1, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/avira/android/cropimage/n;->c()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/avira/android/cropimage/n;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_c
    move v2, v1

    goto/16 :goto_1

    :cond_d
    cmpl-float v4, v1, v0

    if-eqz v4, :cond_5

    iget v2, p0, Lcom/avira/android/cropimage/n;->j:F

    mul-float/2addr v2, v1

    goto/16 :goto_2

    :cond_e
    move v1, v3

    goto :goto_3

    :cond_f
    iget v1, v4, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    iget v1, v4, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v4, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_4

    :cond_10
    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_5
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 81
    iget-boolean v0, p0, Lcom/avira/android/cropimage/n;->c:Z

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 86
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 87
    iget-boolean v0, p0, Lcom/avira/android/cropimage/n;->b:Z

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->q:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/avira/android/cropimage/n;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 94
    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 95
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 96
    iget-boolean v0, p0, Lcom/avira/android/cropimage/n;->k:Z

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 99
    iget-object v3, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 100
    iget-object v4, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float v5, v0, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v3, v6

    add-float/2addr v3, v5

    div-float/2addr v0, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v3, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 101
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->q:Landroid/graphics/Paint;

    const v3, -0x10fb2a

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    :goto_1
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 109
    iget-boolean v0, p0, Lcom/avira/android/cropimage/n;->b:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/avira/android/cropimage/n;->o:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 112
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->g:Lcom/avira/android/cropimage/o;

    sget-object v1, Lcom/avira/android/cropimage/o;->Grow:Lcom/avira/android/cropimage/o;

    if-ne v0, v1, :cond_0

    .line 116
    iget-boolean v0, p0, Lcom/avira/android/cropimage/n;->k:Z

    if-eqz v0, :cond_5

    .line 118
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 119
    iget-object v1, p0, Lcom/avira/android/cropimage/n;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 121
    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 122
    iget-object v3, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    .line 123
    iget-object v3, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    .line 124
    iget-object v2, p0, Lcom/avira/android/cropimage/n;->n:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/avira/android/cropimage/n;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/avira/android/cropimage/n;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 105
    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 106
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->q:Landroid/graphics/Paint;

    const/16 v3, -0x7600

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->p:Landroid/graphics/Paint;

    goto/16 :goto_2

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    .line 131
    iget-object v1, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    .line 132
    iget-object v2, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x4

    .line 133
    iget-object v3, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x3

    .line 135
    iget-object v4, p0, Lcom/avira/android/cropimage/n;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 136
    iget-object v5, p0, Lcom/avira/android/cropimage/n;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 137
    iget-object v6, p0, Lcom/avira/android/cropimage/n;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 138
    iget-object v7, p0, Lcom/avira/android/cropimage/n;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 140
    iget-object v8, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 141
    iget-object v9, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 143
    iget-object v10, p0, Lcom/avira/android/cropimage/n;->l:Landroid/graphics/drawable/Drawable;

    sub-int v11, v0, v4

    sub-int v12, v9, v5

    add-int/2addr v0, v4

    add-int v13, v9, v5

    invoke-virtual {v10, v11, v12, v0, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->l:Landroid/graphics/drawable/Drawable;

    sub-int v10, v1, v4

    sub-int v11, v9, v5

    add-int/2addr v1, v4

    add-int v4, v9, v5

    invoke-virtual {v0, v10, v11, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 151
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->m:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v4, v2, v6

    add-int v5, v8, v7

    add-int/2addr v2, v6

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 153
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->m:Landroid/graphics/drawable/Drawable;

    sub-int v1, v8, v7

    sub-int v2, v3, v6

    add-int v4, v8, v7

    add-int/2addr v3, v6

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 157
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 5

    .prologue
    const/16 v4, 0x7d

    const/4 v0, 0x1

    const/16 v3, 0x32

    .line 403
    if-eqz p4, :cond_0

    move p5, v0

    .line 407
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, p0, Lcom/avira/android/cropimage/n;->f:Landroid/graphics/Matrix;

    .line 409
    iput-object p3, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    .line 410
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/avira/android/cropimage/n;->h:Landroid/graphics/RectF;

    .line 411
    iput-boolean p5, p0, Lcom/avira/android/cropimage/n;->i:Z

    .line 412
    iput-boolean p4, p0, Lcom/avira/android/cropimage/n;->k:Z

    .line 414
    iget-object v1, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/avira/android/cropimage/n;->j:F

    .line 415
    invoke-direct {p0}, Lcom/avira/android/cropimage/n;->c()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    .line 417
    iget-object v1, p0, Lcom/avira/android/cropimage/n;->o:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 418
    iget-object v1, p0, Lcom/avira/android/cropimage/n;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 419
    iget-object v1, p0, Lcom/avira/android/cropimage/n;->q:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 420
    iget-object v1, p0, Lcom/avira/android/cropimage/n;->q:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 421
    iget-object v1, p0, Lcom/avira/android/cropimage/n;->q:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 423
    sget-object v0, Lcom/avira/android/cropimage/o;->None:Lcom/avira/android/cropimage/o;

    iput-object v0, p0, Lcom/avira/android/cropimage/n;->g:Lcom/avira/android/cropimage/o;

    .line 424
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/avira/android/cropimage/n;->l:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/avira/android/cropimage/n;->m:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/cropimage/n;->n:Landroid/graphics/drawable/Drawable;

    .line 425
    return-void
.end method

.method public final a(Lcom/avira/android/cropimage/o;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->g:Lcom/avira/android/cropimage/o;

    if-eq p1, v0, :cond_0

    .line 167
    iput-object p1, p0, Lcom/avira/android/cropimage/n;->g:Lcom/avira/android/cropimage/o;

    .line 168
    iget-object v0, p0, Lcom/avira/android/cropimage/n;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 170
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/avira/android/cropimage/n;->c()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    .line 399
    return-void
.end method
