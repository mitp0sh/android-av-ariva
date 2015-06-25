.class final Lcom/avira/android/cropimage/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/cropimage/j;


# direct methods
.method constructor <init>(Lcom/avira/android/cropimage/j;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 632
    iget-object v0, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget-object v1, v0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    iget-object v0, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget v0, v0, Lcom/avira/android/cropimage/j;->d:I

    if-le v0, v6, :cond_4

    move v0, v6

    :goto_0
    iput-boolean v0, v1, Lcom/avira/android/cropimage/CropImage;->a:Z

    .line 633
    iget-object v0, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget v0, v0, Lcom/avira/android/cropimage/j;->d:I

    if-lez v0, :cond_6

    move v8, v7

    .line 635
    :goto_1
    iget-object v0, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget v0, v0, Lcom/avira/android/cropimage/j;->d:I

    if-ge v8, v0, :cond_7

    .line 637
    iget-object v9, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget-object v0, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget-object v0, v0, Lcom/avira/android/cropimage/j;->c:[Landroid/media/FaceDetector$Face;

    aget-object v0, v0, v8

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v0}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v2

    iget v3, v9, Lcom/avira/android/cropimage/j;->a:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {v0, v1}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v2, v9, Lcom/avira/android/cropimage/j;->a:F

    mul-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->x:F

    iget v0, v1, Landroid/graphics/PointF;->y:F

    iget v2, v9, Lcom/avira/android/cropimage/j;->a:F

    mul-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->y:F

    iget v0, v1, Landroid/graphics/PointF;->x:F

    float-to-int v5, v0

    iget v0, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v0

    new-instance v0, Lcom/avira/android/cropimage/n;

    iget-object v2, v9, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v2}, Lcom/avira/android/cropimage/CropImage;->d(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/CropImageView;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/avira/android/cropimage/n;-><init>(Landroid/view/View;)V

    iget-object v2, v9, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v2}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, v9, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v2}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v7, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v10, v5

    int-to-float v11, v1

    int-to-float v5, v5

    int-to-float v1, v1

    invoke-direct {v3, v10, v11, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    neg-int v1, v4

    int-to-float v1, v1

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget v1, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v12

    if-gez v1, :cond_0

    iget v1, v3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_0
    iget v1, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v12

    if-gez v1, :cond_1

    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_1
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_3
    iget-object v1, v9, Lcom/avira/android/cropimage/j;->b:Landroid/graphics/Matrix;

    iget-object v4, v9, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v4}, Lcom/avira/android/cropimage/CropImage;->f(Lcom/avira/android/cropimage/CropImage;)Z

    move-result v4

    iget-object v5, v9, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v5}, Lcom/avira/android/cropimage/CropImage;->g(Lcom/avira/android/cropimage/CropImage;)I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v9, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v5}, Lcom/avira/android/cropimage/CropImage;->h(Lcom/avira/android/cropimage/CropImage;)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual/range {v0 .. v5}, Lcom/avira/android/cropimage/n;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    iget-object v1, v9, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->d(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/cropimage/CropImageView;->a(Lcom/avira/android/cropimage/n;)V

    .line 635
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_1

    :cond_4
    move v0, v7

    .line 632
    goto/16 :goto_0

    :cond_5
    move v5, v7

    .line 637
    goto :goto_2

    .line 642
    :cond_6
    iget-object v8, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    new-instance v0, Lcom/avira/android/cropimage/n;

    iget-object v1, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->d(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/CropImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avira/android/cropimage/n;-><init>(Landroid/view/View;)V

    iget-object v1, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v1, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v7, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v3, v1, 0x5

    iget-object v1, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->g(Lcom/avira/android/cropimage/CropImage;)I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->h(Lcom/avira/android/cropimage/CropImage;)I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->g(Lcom/avira/android/cropimage/CropImage;)I

    move-result v1

    iget-object v4, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v4}, Lcom/avira/android/cropimage/CropImage;->h(Lcom/avira/android/cropimage/CropImage;)I

    move-result v4

    if-le v1, v4, :cond_a

    iget-object v1, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->h(Lcom/avira/android/cropimage/CropImage;)I

    move-result v1

    mul-int/2addr v1, v3

    iget-object v4, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v4}, Lcom/avira/android/cropimage/CropImage;->g(Lcom/avira/android/cropimage/CropImage;)I

    move-result v4

    div-int/2addr v1, v4

    move v4, v3

    :goto_3
    sub-int v3, v5, v4

    div-int/lit8 v5, v3, 0x2

    sub-int v3, v9, v1

    div-int/lit8 v9, v3, 0x2

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v10, v5

    int-to-float v11, v9

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-int/2addr v1, v9

    int-to-float v1, v1

    invoke-direct {v3, v10, v11, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, v8, Lcom/avira/android/cropimage/j;->b:Landroid/graphics/Matrix;

    iget-object v4, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v4}, Lcom/avira/android/cropimage/CropImage;->f(Lcom/avira/android/cropimage/CropImage;)Z

    move-result v4

    iget-object v5, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v5}, Lcom/avira/android/cropimage/CropImage;->g(Lcom/avira/android/cropimage/CropImage;)I

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v5}, Lcom/avira/android/cropimage/CropImage;->h(Lcom/avira/android/cropimage/CropImage;)I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v6

    :goto_4
    invoke-virtual/range {v0 .. v5}, Lcom/avira/android/cropimage/n;->a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V

    iget-object v1, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->d(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/CropImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/cropimage/CropImageView;->a(Lcom/avira/android/cropimage/n;)V

    .line 644
    :cond_7
    iget-object v0, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget-object v0, v0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->d(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/cropimage/CropImageView;->invalidate()V

    .line 645
    iget-object v0, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget-object v0, v0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->d(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_8

    .line 647
    iget-object v0, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget-object v1, v0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    iget-object v0, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget-object v0, v0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->d(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/n;

    iput-object v0, v1, Lcom/avira/android/cropimage/CropImage;->c:Lcom/avira/android/cropimage/n;

    .line 648
    iget-object v0, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget-object v0, v0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    iget-object v0, v0, Lcom/avira/android/cropimage/CropImage;->c:Lcom/avira/android/cropimage/n;

    iput-boolean v6, v0, Lcom/avira/android/cropimage/n;->b:Z

    .line 651
    :cond_8
    iget-object v0, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget v0, v0, Lcom/avira/android/cropimage/j;->d:I

    if-le v0, v6, :cond_9

    .line 653
    iget-object v0, p0, Lcom/avira/android/cropimage/k;->a:Lcom/avira/android/cropimage/j;

    iget-object v0, v0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    const v1, 0x7f0800d4

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 656
    :cond_9
    return-void

    .line 642
    :cond_a
    iget-object v1, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->g(Lcom/avira/android/cropimage/CropImage;)I

    move-result v1

    mul-int/2addr v1, v3

    iget-object v4, v8, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v4}, Lcom/avira/android/cropimage/CropImage;->h(Lcom/avira/android/cropimage/CropImage;)I

    move-result v4

    div-int/2addr v1, v4

    move v4, v1

    move v1, v3

    goto/16 :goto_3

    :cond_b
    move v5, v7

    goto :goto_4

    :cond_c
    move v1, v3

    move v4, v3

    goto/16 :goto_3
.end method
