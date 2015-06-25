.class final Lcom/avira/android/cropimage/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:F

.field b:Landroid/graphics/Matrix;

.field c:[Landroid/media/FaceDetector$Face;

.field d:I

.field final synthetic e:Lcom/avira/android/cropimage/CropImage;


# direct methods
.method constructor <init>(Lcom/avira/android/cropimage/CropImage;)V
    .locals 1

    .prologue
    .line 501
    iput-object p1, p0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/avira/android/cropimage/j;->a:F

    .line 505
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/media/FaceDetector$Face;

    iput-object v0, p0, Lcom/avira/android/cropimage/j;->c:[Landroid/media/FaceDetector$Face;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 612
    iget-object v0, p0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->d(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/cropimage/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/cropimage/j;->b:Landroid/graphics/Matrix;

    .line 613
    iget-object v0, p0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 615
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/avira/android/cropimage/j;->a:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/avira/android/cropimage/j;->a:F

    .line 616
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->i(Lcom/avira/android/cropimage/CropImage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    new-instance v1, Landroid/media/FaceDetector;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/avira/android/cropimage/j;->c:[Landroid/media/FaceDetector$Face;

    array-length v4, v4

    invoke-direct {v1, v2, v3, v4}, Landroid/media/FaceDetector;-><init>(III)V

    .line 619
    iget-object v2, p0, Lcom/avira/android/cropimage/j;->c:[Landroid/media/FaceDetector$Face;

    invoke-virtual {v1, v0, v2}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result v1

    iput v1, p0, Lcom/avira/android/cropimage/j;->d:I

    .line 622
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 624
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->e(Lcom/avira/android/cropimage/CropImage;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/avira/android/cropimage/k;

    invoke-direct {v1, p0}, Lcom/avira/android/cropimage/k;-><init>(Lcom/avira/android/cropimage/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 658
    return-void

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_3

    const/high16 v0, 0x43800000    # 256.0f

    iget-object v2, p0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v2}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/avira/android/cropimage/j;->a:F

    :cond_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p0, Lcom/avira/android/cropimage/j;->a:F

    iget v2, p0, Lcom/avira/android/cropimage/j;->a:F

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v2}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/avira/android/cropimage/j;->e:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v2}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0
.end method
