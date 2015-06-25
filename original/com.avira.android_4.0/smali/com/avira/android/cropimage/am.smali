.class public final Lcom/avira/android/cropimage/am;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2

.field public static final NO_RECYCLE_INPUT:Z = false

.field public static final RECYCLE_INPUT:Z = true

.field private static final TAG:Ljava/lang/String; = "Util"


# direct methods
.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v10, -0x1

    .line 96
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v1

    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v1

    if-ne p2, v10, :cond_1

    move v1, v0

    :goto_0
    if-ne p1, v10, :cond_2

    const/16 v2, 0x80

    :goto_1
    if-ge v2, v1, :cond_3

    .line 99
    :cond_0
    :goto_2
    const/16 v2, 0x8

    if-gt v1, v2, :cond_5

    .line 102
    :goto_3
    if-ge v0, v1, :cond_6

    .line 104
    shl-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 96
    :cond_1
    mul-double v6, v2, v4

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    goto :goto_0

    :cond_2
    int-to-double v6, p1

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_1

    :cond_3
    if-ne p2, v10, :cond_4

    if-ne p1, v10, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    if-eq p1, v10, :cond_0

    move v1, v2

    goto :goto_2

    .line 109
    :cond_5
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    .line 112
    :cond_6
    return v0
.end method

.method private static a(Landroid/net/Uri;)I
    .locals 3

    .prologue
    .line 413
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 415
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-float v0, v0

    .line 417
    const/high16 v1, 0x40c00000    # 6.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 419
    const/16 v0, 0x5a

    .line 434
    :goto_0
    return v0

    .line 421
    :cond_0
    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 423
    const/16 v0, 0xb4

    goto :goto_0

    .line 425
    :cond_1
    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 427
    const/16 v0, 0x10e

    goto :goto_0

    :catch_0
    move-exception v0

    .line 434
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(IILandroid/net/Uri;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 289
    .line 292
    :try_start_0
    const-string v0, "r"

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 293
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_1
    invoke-static/range {v0 .. v5}, Lcom/avira/android/cropimage/am;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 306
    invoke-static {v4}, Lcom/avira/android/cropimage/am;->a(Landroid/os/ParcelFileDescriptor;)V

    .line 302
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v4, v6

    .line 306
    :goto_1
    invoke-static {v4}, Lcom/avira/android/cropimage/am;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v6

    .line 302
    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v6}, Lcom/avira/android/cropimage/am;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v4

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v7, 0x0

    .line 326
    if-nez p4, :cond_0

    .line 327
    :try_start_0
    invoke-static {p2, p3}, Lcom/avira/android/cropimage/am;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 328
    :cond_0
    if-nez p4, :cond_1

    .line 376
    invoke-static {p4}, Lcom/avira/android/cropimage/am;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v7

    .line 372
    :goto_0
    return-object v0

    .line 330
    :cond_1
    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 333
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 335
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 336
    invoke-static {}, Lcom/avira/android/cropimage/c;->a()Lcom/avira/android/cropimage/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/avira/android/cropimage/c;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 337
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v3, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_3

    .line 376
    :cond_2
    invoke-static {p4}, Lcom/avira/android/cropimage/am;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v7

    .line 339
    goto :goto_0

    .line 341
    :cond_3
    :try_start_2
    invoke-static {v1, p0, p1}, Lcom/avira/android/cropimage/am;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 342
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 344
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 345
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 346
    invoke-static {}, Lcom/avira/android/cropimage/c;->a()Lcom/avira/android/cropimage/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/avira/android/cropimage/c;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    if-nez v0, :cond_4

    .line 352
    invoke-static {p4}, Lcom/avira/android/cropimage/am;->a(Landroid/os/ParcelFileDescriptor;)V

    .line 353
    const-string v0, "r"

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p4

    .line 354
    invoke-static {}, Lcom/avira/android/cropimage/c;->a()Lcom/avira/android/cropimage/c;

    move-result-object v0

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/avira/android/cropimage/c;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    :cond_4
    if-eqz p5, :cond_5

    .line 359
    invoke-static {p2}, Lcom/avira/android/cropimage/am;->a(Landroid/net/Uri;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rotation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 376
    :cond_5
    invoke-static {p4}, Lcom/avira/android/cropimage/am;->a(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 366
    :try_start_3
    const-string v1, "Util"

    const-string v2, "Got oom exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 376
    invoke-static {p4}, Lcom/avira/android/cropimage/am;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v7

    .line 367
    goto/16 :goto_0

    .line 369
    :catch_1
    move-exception v0

    .line 371
    :try_start_4
    const-string v1, "Util"

    const-string v2, "Got FileNotFound exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 376
    invoke-static {p4}, Lcom/avira/android/cropimage/am;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v7

    .line 372
    goto/16 :goto_0

    .line 376
    :catchall_0
    move-exception v0

    invoke-static {p4}, Lcom/avira/android/cropimage/am;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 60
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 62
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 63
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    if-eq p0, v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 78
    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 444
    :try_start_0
    const-string v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 448
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .prologue
    .line 269
    if-nez p0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 273
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 478
    if-eq p0, p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
