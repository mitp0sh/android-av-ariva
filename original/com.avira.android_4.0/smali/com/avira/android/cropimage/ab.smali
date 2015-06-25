.class final Lcom/avira/android/cropimage/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lcom/avira/android/cropimage/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/avira/android/cropimage/ImageViewTouchBase;JFFFF)V
    .locals 2

    .prologue
    .line 370
    iput-object p1, p0, Lcom/avira/android/cropimage/ab;->g:Lcom/avira/android/cropimage/ImageViewTouchBase;

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/avira/android/cropimage/ab;->a:F

    iput-wide p2, p0, Lcom/avira/android/cropimage/ab;->b:J

    iput p4, p0, Lcom/avira/android/cropimage/ab;->c:F

    iput p5, p0, Lcom/avira/android/cropimage/ab;->d:F

    iput p6, p0, Lcom/avira/android/cropimage/ab;->e:F

    iput p7, p0, Lcom/avira/android/cropimage/ab;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 375
    iget v2, p0, Lcom/avira/android/cropimage/ab;->a:F

    iget-wide v4, p0, Lcom/avira/android/cropimage/ab;->b:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 376
    iget v1, p0, Lcom/avira/android/cropimage/ab;->c:F

    iget v2, p0, Lcom/avira/android/cropimage/ab;->d:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 377
    iget-object v2, p0, Lcom/avira/android/cropimage/ab;->g:Lcom/avira/android/cropimage/ImageViewTouchBase;

    iget v3, p0, Lcom/avira/android/cropimage/ab;->e:F

    iget v4, p0, Lcom/avira/android/cropimage/ab;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/avira/android/cropimage/ImageViewTouchBase;->a(FFF)V

    .line 379
    iget v1, p0, Lcom/avira/android/cropimage/ab;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/avira/android/cropimage/ab;->g:Lcom/avira/android/cropimage/ImageViewTouchBase;

    iget-object v0, v0, Lcom/avira/android/cropimage/ImageViewTouchBase;->l:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 383
    :cond_0
    return-void
.end method
