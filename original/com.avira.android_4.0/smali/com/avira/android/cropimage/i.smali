.class final Lcom/avira/android/cropimage/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/avira/android/cropimage/h;


# direct methods
.method constructor <init>(Lcom/avira/android/cropimage/h;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/avira/android/cropimage/i;->c:Lcom/avira/android/cropimage/h;

    iput-object p2, p0, Lcom/avira/android/cropimage/i;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/avira/android/cropimage/i;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/avira/android/cropimage/i;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/avira/android/cropimage/i;->c:Lcom/avira/android/cropimage/h;

    iget-object v1, v1, Lcom/avira/android/cropimage/h;->a:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v1}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/avira/android/cropimage/i;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/avira/android/cropimage/i;->c:Lcom/avira/android/cropimage/h;

    iget-object v0, v0, Lcom/avira/android/cropimage/h;->a:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->d(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/cropimage/i;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/avira/android/cropimage/CropImageView;->a(Landroid/graphics/Bitmap;)V

    .line 231
    iget-object v0, p0, Lcom/avira/android/cropimage/i;->c:Lcom/avira/android/cropimage/h;

    iget-object v0, v0, Lcom/avira/android/cropimage/h;->a:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 232
    iget-object v0, p0, Lcom/avira/android/cropimage/i;->c:Lcom/avira/android/cropimage/h;

    iget-object v0, v0, Lcom/avira/android/cropimage/h;->a:Lcom/avira/android/cropimage/CropImage;

    iget-object v1, p0, Lcom/avira/android/cropimage/i;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/avira/android/cropimage/CropImage;->a(Lcom/avira/android/cropimage/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/avira/android/cropimage/i;->c:Lcom/avira/android/cropimage/h;

    iget-object v0, v0, Lcom/avira/android/cropimage/h;->a:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->d(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/cropimage/CropImageView;->c()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/avira/android/cropimage/i;->c:Lcom/avira/android/cropimage/h;

    iget-object v0, v0, Lcom/avira/android/cropimage/h;->a:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->d(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/cropimage/CropImageView;->b()V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/avira/android/cropimage/i;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 239
    return-void
.end method
