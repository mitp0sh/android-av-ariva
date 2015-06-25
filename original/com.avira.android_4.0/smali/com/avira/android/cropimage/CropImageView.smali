.class Lcom/avira/android/cropimage/CropImageView;
.super Lcom/avira/android/cropimage/ImageViewTouchBase;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/cropimage/n;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/avira/android/cropimage/n;

.field c:F

.field d:F

.field e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 689
    invoke-direct {p0, p1, p2}, Lcom/avira/android/cropimage/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->b:Lcom/avira/android/cropimage/n;

    .line 690
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 741
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/n;

    .line 744
    iput-boolean v2, v0, Lcom/avira/android/cropimage/n;->b:Z

    .line 745
    invoke-virtual {v0}, Lcom/avira/android/cropimage/n;->b()V

    .line 741
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 748
    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/n;

    .line 751
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/avira/android/cropimage/n;->a(FF)I

    move-result v1

    .line 752
    if-eq v1, v4, :cond_0

    .line 754
    iget-boolean v1, v0, Lcom/avira/android/cropimage/n;->b:Z

    if-nez v1, :cond_2

    .line 756
    iput-boolean v4, v0, Lcom/avira/android/cropimage/n;->b:Z

    .line 757
    invoke-virtual {v0}, Lcom/avira/android/cropimage/n;->b()V

    .line 762
    :cond_2
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->invalidate()V

    .line 763
    return-void
.end method

.method private b(Lcom/avira/android/cropimage/n;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 877
    iget-object v1, p1, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    .line 879
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->getLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 880
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->getRight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 882
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->getTop()I

    move-result v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 883
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->getBottom()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 885
    if-eqz v2, :cond_2

    .line 886
    :goto_0
    if-eqz v0, :cond_3

    .line 888
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 890
    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/avira/android/cropimage/CropImageView;->b(FF)V

    .line 892
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 885
    goto :goto_0

    :cond_3
    move v0, v1

    .line 886
    goto :goto_1
.end method

.method private c(Lcom/avira/android/cropimage/n;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v4, 0x3f19999a    # 0.6f

    .line 898
    iget-object v0, p1, Lcom/avira/android/cropimage/n;->d:Landroid/graphics/Rect;

    .line 900
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 901
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 903
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 904
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 906
    div-float v1, v2, v1

    mul-float/2addr v1, v4

    .line 907
    div-float v0, v3, v0

    mul-float/2addr v0, v4

    .line 909
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 910
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->c()F

    move-result v1

    mul-float/2addr v0, v1

    .line 911
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 913
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->c()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 915
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v6

    iget-object v2, p1, Lcom/avira/android/cropimage/n;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v7

    .line 916
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 917
    aget v2, v1, v6

    aget v1, v1, v7

    invoke-virtual {p0, v0, v2, v1}, Lcom/avira/android/cropimage/CropImageView;->b(FFF)V

    .line 920
    :cond_0
    invoke-direct {p0, p1}, Lcom/avira/android/cropimage/CropImageView;->b(Lcom/avira/android/cropimage/n;)V

    .line 921
    return-void
.end method


# virtual methods
.method protected final a(FF)V
    .locals 3

    .prologue
    .line 728
    invoke-super {p0, p1, p2}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(FF)V

    .line 729
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/n;

    .line 732
    iget-object v2, v0, Lcom/avira/android/cropimage/n;->f:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 733
    invoke-virtual {v0}, Lcom/avira/android/cropimage/n;->b()V

    .line 729
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 735
    :cond_0
    return-void
.end method

.method protected final a(FFF)V
    .locals 4

    .prologue
    .line 695
    invoke-super {p0, p1, p2, p3}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(FFF)V

    .line 696
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/n;

    .line 698
    iget-object v2, v0, Lcom/avira/android/cropimage/n;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 699
    invoke-virtual {v0}, Lcom/avira/android/cropimage/n;->b()V

    goto :goto_0

    .line 701
    :cond_0
    return-void
.end method

.method public final a(Lcom/avira/android/cropimage/n;)V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->invalidate()V

    .line 938
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 926
    invoke-super {p0, p1}, Lcom/avira/android/cropimage/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 928
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/n;

    invoke-virtual {v0, p1}, Lcom/avira/android/cropimage/n;->a(Landroid/graphics/Canvas;)V

    .line 928
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 932
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 672
    invoke-super/range {p0 .. p5}, Lcom/avira/android/cropimage/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 673
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->h:Lcom/avira/android/cropimage/aj;

    invoke-virtual {v0}, Lcom/avira/android/cropimage/aj;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/n;

    .line 677
    iget-object v2, v0, Lcom/avira/android/cropimage/n;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 678
    invoke-virtual {v0}, Lcom/avira/android/cropimage/n;->b()V

    .line 679
    iget-boolean v2, v0, Lcom/avira/android/cropimage/n;->b:Z

    if-eqz v2, :cond_0

    .line 681
    invoke-direct {p0, v0}, Lcom/avira/android/cropimage/CropImageView;->c(Lcom/avira/android/cropimage/n;)V

    goto :goto_0

    .line 685
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 768
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/CropImage;

    .line 769
    iget-boolean v1, v0, Lcom/avira/android/cropimage/CropImage;->b:Z

    if-eqz v1, :cond_0

    .line 871
    :goto_0
    return v2

    .line 774
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 854
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_2
    :goto_2
    move v2, v5

    .line 871
    goto :goto_0

    .line 777
    :pswitch_0
    iget-boolean v0, v0, Lcom/avira/android/cropimage/CropImage;->a:Z

    if-eqz v0, :cond_3

    .line 779
    invoke-direct {p0, p1}, Lcom/avira/android/cropimage/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 783
    :goto_3
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/n;

    .line 786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/cropimage/n;->a(FF)I

    move-result v2

    .line 787
    if-eq v2, v5, :cond_5

    .line 789
    iput v2, p0, Lcom/avira/android/cropimage/CropImageView;->e:I

    .line 790
    iput-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->b:Lcom/avira/android/cropimage/n;

    .line 791
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/avira/android/cropimage/CropImageView;->c:F

    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/avira/android/cropimage/CropImageView;->d:F

    .line 793
    iget-object v1, p0, Lcom/avira/android/cropimage/CropImageView;->b:Lcom/avira/android/cropimage/n;

    const/16 v0, 0x20

    if-ne v2, v0, :cond_4

    sget-object v0, Lcom/avira/android/cropimage/o;->Move:Lcom/avira/android/cropimage/o;

    :goto_4
    invoke-virtual {v1, v0}, Lcom/avira/android/cropimage/n;->a(Lcom/avira/android/cropimage/o;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/avira/android/cropimage/o;->Grow:Lcom/avira/android/cropimage/o;

    goto :goto_4

    .line 783
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 801
    :pswitch_1
    iget-boolean v1, v0, Lcom/avira/android/cropimage/CropImage;->a:Z

    if-eqz v1, :cond_9

    move v3, v2

    .line 803
    :goto_5
    iget-object v1, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    .line 805
    iget-object v1, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/android/cropimage/n;

    .line 806
    iget-boolean v4, v1, Lcom/avira/android/cropimage/n;->b:Z

    if-eqz v4, :cond_8

    .line 808
    iput-object v1, v0, Lcom/avira/android/cropimage/CropImage;->c:Lcom/avira/android/cropimage/n;

    move v4, v2

    .line 809
    :goto_6
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 811
    if-eq v4, v3, :cond_6

    .line 813
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/n;

    iput-boolean v5, v0, Lcom/avira/android/cropimage/n;->c:Z

    .line 809
    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    .line 817
    :cond_7
    invoke-direct {p0, v1}, Lcom/avira/android/cropimage/CropImageView;->c(Lcom/avira/android/cropimage/n;)V

    .line 818
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/CropImage;

    iput-boolean v2, v0, Lcom/avira/android/cropimage/CropImage;->a:Z

    move v2, v5

    .line 819
    goto/16 :goto_0

    .line 803
    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    .line 823
    :cond_9
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->b:Lcom/avira/android/cropimage/n;

    if-eqz v0, :cond_a

    .line 825
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->b:Lcom/avira/android/cropimage/n;

    invoke-direct {p0, v0}, Lcom/avira/android/cropimage/CropImageView;->c(Lcom/avira/android/cropimage/n;)V

    .line 826
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->b:Lcom/avira/android/cropimage/n;

    sget-object v1, Lcom/avira/android/cropimage/o;->None:Lcom/avira/android/cropimage/o;

    invoke-virtual {v0, v1}, Lcom/avira/android/cropimage/n;->a(Lcom/avira/android/cropimage/o;)V

    .line 828
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->b:Lcom/avira/android/cropimage/n;

    goto/16 :goto_1

    .line 831
    :pswitch_2
    iget-boolean v0, v0, Lcom/avira/android/cropimage/CropImage;->a:Z

    if-eqz v0, :cond_b

    .line 833
    invoke-direct {p0, p1}, Lcom/avira/android/cropimage/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 835
    :cond_b
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->b:Lcom/avira/android/cropimage/n;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->b:Lcom/avira/android/cropimage/n;

    iget v1, p0, Lcom/avira/android/cropimage/CropImageView;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/avira/android/cropimage/CropImageView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/avira/android/cropimage/CropImageView;->d:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/avira/android/cropimage/n;->a(IFF)V

    .line 838
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/avira/android/cropimage/CropImageView;->c:F

    .line 839
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/avira/android/cropimage/CropImageView;->d:F

    .line 848
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImageView;->b:Lcom/avira/android/cropimage/n;

    invoke-direct {p0, v0}, Lcom/avira/android/cropimage/CropImageView;->b(Lcom/avira/android/cropimage/n;)V

    goto/16 :goto_1

    .line 857
    :pswitch_3
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->b()V

    goto/16 :goto_2

    .line 864
    :pswitch_4
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->c()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 866
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImageView;->b()V

    goto/16 :goto_2

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 854
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
