.class final Lcom/avira/android/cropimage/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/cropimage/CropImage;


# direct methods
.method constructor <init>(Lcom/avira/android/cropimage/CropImage;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/avira/android/cropimage/h;->a:Lcom/avira/android/cropimage/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 221
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 222
    iget-object v0, p0, Lcom/avira/android/cropimage/h;->a:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->b(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/cropimage/h;->a:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->b(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/p;

    move-result-object v0

    const/4 v2, -0x1

    const/high16 v3, 0x100000

    invoke-interface {v0, v2, v3}, Lcom/avira/android/cropimage/p;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    :goto_0
    iget-object v2, p0, Lcom/avira/android/cropimage/h;->a:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v2}, Lcom/avira/android/cropimage/CropImage;->e(Lcom/avira/android/cropimage/CropImage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/avira/android/cropimage/i;

    invoke-direct {v3, p0, v0, v1}, Lcom/avira/android/cropimage/i;-><init>(Lcom/avira/android/cropimage/h;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    iget-object v0, p0, Lcom/avira/android/cropimage/h;->a:Lcom/avira/android/cropimage/CropImage;

    iget-object v0, v0, Lcom/avira/android/cropimage/CropImage;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 250
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/avira/android/cropimage/h;->a:Lcom/avira/android/cropimage/CropImage;

    invoke-static {v0}, Lcom/avira/android/cropimage/CropImage;->c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 247
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
