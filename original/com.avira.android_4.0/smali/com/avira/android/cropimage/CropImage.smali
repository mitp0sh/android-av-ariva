.class public Lcom/avira/android/cropimage/CropImage;
.super Lcom/avira/android/cropimage/MonitoredActivity;
.source "SourceFile"


# static fields
.field public static final ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final ASPECT_Y:Ljava/lang/String; = "aspectY"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final RESULT_CODE_RETAKE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CropImage"

.field public static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/avira/android/cropimage/n;

.field d:Ljava/lang/Runnable;

.field private e:Landroid/graphics/Bitmap$CompressFormat;

.field private f:Landroid/net/Uri;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private final n:Landroid/os/Handler;

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Lcom/avira/android/cropimage/CropImageView;

.field private t:Landroid/content/ContentResolver;

.field private u:Landroid/graphics/Bitmap;

.field private v:Lcom/avira/android/cropimage/q;

.field private w:Lcom/avira/android/cropimage/p;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/avira/android/cropimage/MonitoredActivity;-><init>()V

    .line 72
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImage;->e:Landroid/graphics/Bitmap$CompressFormat;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImage;->f:Landroid/net/Uri;

    .line 78
    iput-boolean v1, p0, Lcom/avira/android/cropimage/CropImage;->g:Z

    .line 81
    iput-boolean v2, p0, Lcom/avira/android/cropimage/CropImage;->l:Z

    .line 82
    iput-boolean v1, p0, Lcom/avira/android/cropimage/CropImage;->m:Z

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImage;->n:Landroid/os/Handler;

    .line 89
    iput-boolean v2, p0, Lcom/avira/android/cropimage/CropImage;->r:Z

    .line 500
    new-instance v0, Lcom/avira/android/cropimage/j;

    invoke-direct {v0, p0}, Lcom/avira/android/cropimage/j;-><init>(Lcom/avira/android/cropimage/CropImage;)V

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImage;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/cropimage/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/avira/android/cropimage/CropImage;->u:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/avira/android/cropimage/CropImage;)V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const v11, 0x3f666666    # 0.9f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->c:Lcom/avira/android/cropimage/n;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/avira/android/cropimage/CropImage;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/cropimage/CropImage;->b:Z

    iget v0, p0, Lcom/avira/android/cropimage/CropImage;->o:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/avira/android/cropimage/CropImage;->p:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/avira/android/cropimage/CropImage;->q:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/avira/android/cropimage/CropImage;->o:I

    iget v2, p0, Lcom/avira/android/cropimage/CropImage;->p:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/avira/android/cropimage/CropImage;->c:Lcom/avira/android/cropimage/n;

    invoke-virtual {v3}, Lcom/avira/android/cropimage/n;->a()Landroid/graphics/Rect;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    iget v6, p0, Lcom/avira/android/cropimage/CropImage;->o:I

    iget v7, p0, Lcom/avira/android/cropimage/CropImage;->p:I

    invoke-direct {v4, v1, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    neg-int v6, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v7, v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->inset(II)V

    iget-object v6, p0, Lcom/avira/android/cropimage/CropImage;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/avira/android/cropimage/CropImage;->s:Lcom/avira/android/cropimage/CropImageView;

    invoke-virtual {v2}, Lcom/avira/android/cropimage/CropImageView;->a()V

    iget-object v2, p0, Lcom/avira/android/cropimage/CropImage;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/avira/android/cropimage/CropImage;->s:Lcom/avira/android/cropimage/CropImageView;

    invoke-virtual {v2, v0}, Lcom/avira/android/cropimage/CropImageView;->a(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/avira/android/cropimage/CropImage;->s:Lcom/avira/android/cropimage/CropImageView;

    invoke-virtual {v2}, Lcom/avira/android/cropimage/CropImageView;->b()V

    iget-object v2, p0, Lcom/avira/android/cropimage/CropImage;->s:Lcom/avira/android/cropimage/CropImageView;

    iget-object v2, v2, Lcom/avira/android/cropimage/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v3, p0, Lcom/avira/android/cropimage/CropImage;->k:I

    iget v4, p0, Lcom/avira/android/cropimage/CropImage;->j:I

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/avira/android/cropimage/CropImage;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImage;->finish()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->c:Lcom/avira/android/cropimage/n;

    invoke-virtual {v0}, Lcom/avira/android/cropimage/n;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-boolean v0, p0, Lcom/avira/android/cropimage/CropImage;->m:Z

    if-eqz v0, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v8, p0, Lcom/avira/android/cropimage/CropImage;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v8, v2, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/avira/android/cropimage/CropImage;->s:Lcom/avira/android/cropimage/CropImageView;

    invoke-virtual {v2}, Lcom/avira/android/cropimage/CropImageView;->a()V

    iget-object v2, p0, Lcom/avira/android/cropimage/CropImage;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iget-boolean v2, p0, Lcom/avira/android/cropimage/CropImage;->m:Z

    if-eqz v2, :cond_3

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    int-to-float v7, v3

    div-float/2addr v7, v9

    int-to-float v4, v4

    div-float/2addr v4, v9

    int-to-float v3, v3

    div-float/2addr v3, v9

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v4, v3, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    iget v2, p0, Lcom/avira/android/cropimage/CropImage;->o:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/avira/android/cropimage/CropImage;->p:I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/avira/android/cropimage/CropImage;->q:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v7, p0, Lcom/avira/android/cropimage/CropImage;->o:I

    iget v8, p0, Lcom/avira/android/cropimage/CropImage;->p:I

    iget-boolean v3, p0, Lcom/avira/android/cropimage/CropImage;->r:Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v8

    if-nez v3, :cond_6

    if-ltz v4, :cond_4

    if-gez v6, :cond_6

    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int/lit8 v6, v6, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/2addr v11, v6

    invoke-direct {v9, v4, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int v4, v7, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v6, v8, v6

    div-int/lit8 v6, v6, 0x2

    new-instance v10, Landroid/graphics/Rect;

    sub-int/2addr v7, v4

    sub-int/2addr v8, v6

    invoke-direct {v10, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v6, v3, v4

    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    cmpl-float v6, v6, v9

    if-lez v6, :cond_a

    int-to-float v3, v8

    div-float/2addr v3, v4

    cmpg-float v4, v3, v11

    if-ltz v4, :cond_7

    cmpl-float v4, v3, v12

    if-lez v4, :cond_8

    :cond_7
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, v2

    :cond_8
    :goto_2
    if-eqz v5, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_3
    if-eq v2, v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_a
    int-to-float v4, v7

    div-float v3, v4, v3

    cmpg-float v4, v3, v11

    if-ltz v4, :cond_b

    cmpl-float v4, v3, v12

    if-lez v4, :cond_8

    :cond_b
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, v2

    goto :goto_2

    :cond_c
    move-object v2, v0

    goto :goto_3
.end method

.method static synthetic b(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/p;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->w:Lcom/avira/android/cropimage/p;

    return-object v0
.end method

.method static synthetic c(Lcom/avira/android/cropimage/CropImage;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->u:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic d(Lcom/avira/android/cropimage/CropImage;)Lcom/avira/android/cropimage/CropImageView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->s:Lcom/avira/android/cropimage/CropImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/avira/android/cropimage/CropImage;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/avira/android/cropimage/CropImage;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/avira/android/cropimage/CropImage;->m:Z

    return v0
.end method

.method static synthetic g(Lcom/avira/android/cropimage/CropImage;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/avira/android/cropimage/CropImage;->h:I

    return v0
.end method

.method static synthetic h(Lcom/avira/android/cropimage/CropImage;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/avira/android/cropimage/CropImage;->i:I

    return v0
.end method

.method static synthetic i(Lcom/avira/android/cropimage/CropImage;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/avira/android/cropimage/CropImage;->l:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 106
    invoke-super {p0, p1}, Lcom/avira/android/cropimage/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImage;->t:Landroid/content/ContentResolver;

    .line 109
    invoke-virtual {p0, v2}, Lcom/avira/android/cropimage/CropImage;->requestWindowFeature(I)Z

    .line 110
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/CropImage;->setContentView(I)V

    .line 112
    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/CropImageView;

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImage;->s:Lcom/avira/android/cropimage/CropImageView;

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-le v0, v3, :cond_0

    .line 119
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->s:Lcom/avira/android/cropimage/CropImageView;

    invoke-virtual {v0, v2, v5}, Lcom/avira/android/cropimage/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 122
    :cond_0
    invoke-static {p0}, Lcom/avira/android/cropimage/ag;->a(Landroid/app/Activity;)V

    .line 124
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 127
    if-eqz v4, :cond_3

    .line 129
    const-string v0, "circleCrop"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iput-boolean v2, p0, Lcom/avira/android/cropimage/CropImage;->m:Z

    .line 132
    iput v2, p0, Lcom/avira/android/cropimage/CropImage;->h:I

    .line 133
    iput v2, p0, Lcom/avira/android/cropimage/CropImage;->i:I

    .line 135
    :cond_1
    const-string v0, "output"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImage;->f:Landroid/net/Uri;

    .line 136
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->f:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 138
    const-string v0, "outputFormat"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_2

    .line 141
    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImage;->e:Landroid/graphics/Bitmap$CompressFormat;

    .line 149
    :cond_2
    :goto_0
    const-string v0, "data"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImage;->u:Landroid/graphics/Bitmap;

    .line 150
    const-string v0, "aspectX"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avira/android/cropimage/CropImage;->h:I

    .line 151
    const-string v0, "aspectY"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avira/android/cropimage/CropImage;->i:I

    .line 152
    const-string v0, "height"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avira/android/cropimage/CropImage;->j:I

    .line 153
    const-string v0, "width"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avira/android/cropimage/CropImage;->k:I

    .line 154
    const-string v0, "outputX"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avira/android/cropimage/CropImage;->o:I

    .line 155
    const-string v0, "outputY"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avira/android/cropimage/CropImage;->p:I

    .line 156
    const-string v0, "scale"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avira/android/cropimage/CropImage;->q:Z

    .line 157
    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avira/android/cropimage/CropImage;->r:Z

    .line 158
    const-string v0, "noFaceDetection"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "noFaceDetection"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/avira/android/cropimage/CropImage;->l:Z

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->u:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 163
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 164
    iget-object v3, p0, Lcom/avira/android/cropimage/CropImage;->t:Landroid/content/ContentResolver;

    invoke-static {v3, v0}, Lcom/avira/android/cropimage/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/avira/android/cropimage/q;

    move-result-object v3

    iput-object v3, p0, Lcom/avira/android/cropimage/CropImage;->v:Lcom/avira/android/cropimage/q;

    .line 165
    iget-object v3, p0, Lcom/avira/android/cropimage/CropImage;->v:Lcom/avira/android/cropimage/q;

    invoke-interface {v3, v0}, Lcom/avira/android/cropimage/q;->a(Landroid/net/Uri;)Lcom/avira/android/cropimage/p;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImage;->w:Lcom/avira/android/cropimage/p;

    .line 166
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->w:Lcom/avira/android/cropimage/p;

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->w:Lcom/avira/android/cropimage/p;

    invoke-interface {v0}, Lcom/avira/android/cropimage/p;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/cropimage/CropImage;->u:Landroid/graphics/Bitmap;

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->u:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 178
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImage;->finish()V

    .line 205
    :cond_5
    :goto_2
    return-void

    .line 146
    :cond_6
    const-string v0, "setWallpaper"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avira/android/cropimage/CropImage;->g:Z

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 158
    goto :goto_1

    .line 183
    :cond_8
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 185
    const v0, 0x7f0e00c5

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/avira/android/cropimage/f;

    invoke-direct {v3, p0}, Lcom/avira/android/cropimage/f;-><init>(Lcom/avira/android/cropimage/CropImage;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v0, 0x7f0e00c6

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/avira/android/cropimage/g;

    invoke-direct {v3, p0}, Lcom/avira/android/cropimage/g;-><init>(Lcom/avira/android/cropimage/CropImage;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImage;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->s:Lcom/avira/android/cropimage/CropImageView;

    iget-object v3, p0, Lcom/avira/android/cropimage/CropImage;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/avira/android/cropimage/CropImageView;->a(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/avira/android/cropimage/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0800d7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/avira/android/cropimage/h;

    invoke-direct {v3, p0}, Lcom/avira/android/cropimage/h;-><init>(Lcom/avira/android/cropimage/CropImage;)V

    iget-object v4, p0, Lcom/avira/android/cropimage/CropImage;->n:Landroid/os/Handler;

    invoke-static {p0, v5, v0, v2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/avira/android/cropimage/an;

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/avira/android/cropimage/an;-><init>(Lcom/avira/android/cropimage/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->v:Lcom/avira/android/cropimage/q;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/avira/android/cropimage/CropImage;->v:Lcom/avira/android/cropimage/q;

    invoke-interface {v0}, Lcom/avira/android/cropimage/q;->a()V

    .line 497
    :cond_0
    invoke-super {p0}, Lcom/avira/android/cropimage/MonitoredActivity;->onDestroy()V

    .line 498
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 486
    invoke-super {p0}, Lcom/avira/android/cropimage/MonitoredActivity;->onPause()V

    .line 487
    return-void
.end method
