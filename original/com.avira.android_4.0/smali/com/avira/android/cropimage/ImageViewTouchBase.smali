.class abstract Lcom/avira/android/cropimage/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:[F

.field private c:Lcom/avira/android/cropimage/ac;

.field private d:Ljava/lang/Runnable;

.field protected f:Landroid/graphics/Matrix;

.field protected g:Landroid/graphics/Matrix;

.field protected final h:Lcom/avira/android/cropimage/aj;

.field i:I

.field j:I

.field k:F

.field protected l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 265
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->b:[F

    .line 59
    new-instance v0, Lcom/avira/android/cropimage/aj;

    invoke-direct {v0, v2}, Lcom/avira/android/cropimage/aj;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    .line 61
    iput v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->i:I

    iput v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->j:I

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->l:Landroid/os/Handler;

    .line 157
    iput-object v2, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 266
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 271
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    .line 53
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    .line 56
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->b:[F

    .line 59
    new-instance v0, Lcom/avira/android/cropimage/aj;

    invoke-direct {v0, v2}, Lcom/avira/android/cropimage/aj;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    .line 61
    iput v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->i:I

    iput v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->j:I

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->l:Landroid/os/Handler;

    .line 157
    iput-object v2, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 272
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 273
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    invoke-virtual {v0}, Lcom/avira/android/cropimage/aj;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    invoke-virtual {v1, p1}, Lcom/avira/android/cropimage/aj;->a(Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    invoke-virtual {v1, p2}, Lcom/avira/android/cropimage/aj;->a(I)V

    .line 146
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->c:Lcom/avira/android/cropimage/ac;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->c:Lcom/avira/android/cropimage/ac;

    .line 150
    :cond_1
    return-void
.end method

.method private a(Lcom/avira/android/cropimage/aj;Landroid/graphics/Matrix;)V
    .locals 8

    .prologue
    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 300
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 301
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 303
    invoke-virtual {p1}, Lcom/avira/android/cropimage/aj;->e()I

    move-result v2

    int-to-float v2, v2

    .line 304
    invoke-virtual {p1}, Lcom/avira/android/cropimage/aj;->d()I

    move-result v3

    int-to-float v3, v3

    .line 305
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 309
    div-float v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 310
    div-float v5, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 311
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 313
    invoke-virtual {p1}, Lcom/avira/android/cropimage/aj;->c()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 314
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 316
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 317
    return-void
.end method

.method private d()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 325
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 326
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->a:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;)V

    .line 155
    return-void
.end method

.method protected a(FF)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 461
    return-void
.end method

.method protected a(FFF)V
    .locals 2

    .prologue
    .line 350
    iget v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->k:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 352
    iget p1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->k:F

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->c()F

    move-result v0

    .line 356
    div-float v0, p1, v0

    .line 358
    iget-object v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 359
    invoke-direct {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 360
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->b()V

    .line 361
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/avira/android/cropimage/aj;

    invoke-direct {v0, p1}, Lcom/avira/android/cropimage/aj;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(Lcom/avira/android/cropimage/aj;Z)V

    .line 164
    return-void
.end method

.method public final a(Lcom/avira/android/cropimage/aj;Z)V
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 170
    if-gtz v0, :cond_0

    .line 172
    new-instance v0, Lcom/avira/android/cropimage/aa;

    invoke-direct {v0, p0, p1, p2}, Lcom/avira/android/cropimage/aa;-><init>(Lcom/avira/android/cropimage/ImageViewTouchBase;Lcom/avira/android/cropimage/aj;Z)V

    iput-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 200
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p1}, Lcom/avira/android/cropimage/aj;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(Lcom/avira/android/cropimage/aj;Landroid/graphics/Matrix;)V

    .line 186
    invoke-virtual {p1}, Lcom/avira/android/cropimage/aj;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avira/android/cropimage/aj;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 194
    :goto_1
    if-eqz p2, :cond_1

    .line 196
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 198
    :cond_1
    invoke-direct {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 199
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    invoke-virtual {v0}, Lcom/avira/android/cropimage/aj;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    iput v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->k:F

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    invoke-virtual {v0}, Lcom/avira/android/cropimage/aj;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    invoke-virtual {v1}, Lcom/avira/android/cropimage/aj;->d()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    goto :goto_2
.end method

.method protected final b()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    invoke-virtual {v0}, Lcom/avira/android/cropimage/aj;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    .line 216
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    invoke-virtual {v3}, Lcom/avira/android/cropimage/aj;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    invoke-virtual {v4}, Lcom/avira/android/cropimage/aj;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 218
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 220
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 221
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 225
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v4

    .line 228
    int-to-float v5, v4

    cmpg-float v5, v0, v5

    if-gez v5, :cond_2

    .line 230
    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    .line 242
    :goto_1
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v4

    .line 245
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    .line 247
    int-to-float v1, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 259
    :cond_1
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(FF)V

    .line 260
    invoke-direct {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 232
    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 234
    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    .line 236
    :cond_3
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    .line 238
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto :goto_1

    .line 249
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_5

    .line 251
    iget v1, v2, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto :goto_2

    .line 253
    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 255
    int-to-float v1, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method protected final b(FF)V
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0, p1, p2}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(FF)V

    .line 466
    invoke-direct {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 467
    return-void
.end method

.method protected final b(FFF)V
    .locals 9

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->c()F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v1, 0x43960000    # 300.0f

    div-float v5, v0, v1

    .line 366
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->c()F

    move-result v4

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 369
    iget-object v8, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->l:Landroid/os/Handler;

    new-instance v0, Lcom/avira/android/cropimage/ab;

    move-object v1, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/avira/android/cropimage/ab;-><init>(Lcom/avira/android/cropimage/ImageViewTouchBase;JFFFF)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 385
    return-void
.end method

.method protected final c()F
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->b:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->b:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 112
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->c()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(FFF)V

    .line 119
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 82
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 83
    sub-int v0, p4, p2

    iput v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->i:I

    .line 84
    sub-int v0, p5, p3

    iput v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->j:I

    .line 85
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 86
    if-eqz v0, :cond_0

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->d:Ljava/lang/Runnable;

    .line 89
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    invoke-virtual {v0}, Lcom/avira/android/cropimage/aj;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->h:Lcom/avira/android/cropimage/aj;

    iget-object v1, p0, Lcom/avira/android/cropimage/ImageViewTouchBase;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(Lcom/avira/android/cropimage/aj;Landroid/graphics/Matrix;)V

    .line 94
    invoke-direct {p0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->d()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 96
    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;I)V

    .line 131
    return-void
.end method
