.class public final Lcom/avira/android/cropimage/ImageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

.field public static final INCLUDE_DRM_IMAGES:I = 0x2

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final STORAGE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMB_URI:Landroid/net/Uri;

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/avira/android/cropimage/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 52
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/avira/android/cropimage/ImageManager;->THUMB_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avira/android/cropimage/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    sput-object v0, Lcom/avira/android/cropimage/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/cropimage/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/avira/android/cropimage/q;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 380
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    :goto_0
    const-string v2, "content://drm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    sget-object v0, Lcom/avira/android/cropimage/x;->ALL:Lcom/avira/android/cropimage/x;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v3}, Lcom/avira/android/cropimage/ImageManager;->a(Landroid/content/ContentResolver;Lcom/avira/android/cropimage/x;ILjava/lang/String;)Lcom/avira/android/cropimage/q;

    move-result-object v0

    .line 401
    :goto_1
    return-object v0

    .line 380
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 390
    :cond_1
    const-string v2, "content://media/external/video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 392
    sget-object v0, Lcom/avira/android/cropimage/x;->EXTERNAL:Lcom/avira/android/cropimage/x;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1, v3}, Lcom/avira/android/cropimage/ImageManager;->a(Landroid/content/ContentResolver;Lcom/avira/android/cropimage/x;ILjava/lang/String;)Lcom/avira/android/cropimage/q;

    move-result-object v0

    goto :goto_1

    .line 394
    :cond_2
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    .line 396
    new-instance v0, Lcom/avira/android/cropimage/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/avira/android/cropimage/ImageManager$ImageListParam;-><init>()V

    iput-object p1, v0, Lcom/avira/android/cropimage/ImageManager$ImageListParam;->e:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/avira/android/cropimage/ImageManager;->a(Landroid/content/ContentResolver;Lcom/avira/android/cropimage/ImageManager$ImageListParam;)Lcom/avira/android/cropimage/q;

    move-result-object v0

    goto :goto_1

    .line 394
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 400
    :cond_4
    const-string v0, "bucketId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    sget-object v2, Lcom/avira/android/cropimage/x;->ALL:Lcom/avira/android/cropimage/x;

    invoke-static {p0, v2, v1, v0}, Lcom/avira/android/cropimage/ImageManager;->a(Landroid/content/ContentResolver;Lcom/avira/android/cropimage/x;ILjava/lang/String;)Lcom/avira/android/cropimage/q;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Landroid/content/ContentResolver;Lcom/avira/android/cropimage/ImageManager$ImageListParam;)Lcom/avira/android/cropimage/q;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 306
    iget-object v0, p1, Lcom/avira/android/cropimage/ImageManager$ImageListParam;->a:Lcom/avira/android/cropimage/x;

    .line 307
    iget v1, p1, Lcom/avira/android/cropimage/ImageManager$ImageListParam;->b:I

    .line 308
    iget v2, p1, Lcom/avira/android/cropimage/ImageManager$ImageListParam;->c:I

    .line 309
    iget-object v3, p1, Lcom/avira/android/cropimage/ImageManager$ImageListParam;->d:Ljava/lang/String;

    .line 310
    iget-object v4, p1, Lcom/avira/android/cropimage/ImageManager$ImageListParam;->e:Landroid/net/Uri;

    .line 311
    iget-boolean v5, p1, Lcom/avira/android/cropimage/ImageManager$ImageListParam;->f:Z

    .line 313
    if-nez v5, :cond_0

    if-nez p0, :cond_1

    .line 315
    :cond_0
    new-instance v0, Lcom/avira/android/cropimage/y;

    invoke-direct {v0, v7}, Lcom/avira/android/cropimage/y;-><init>(B)V

    .line 374
    :goto_0
    return-object v0

    .line 318
    :cond_1
    if-eqz v4, :cond_2

    .line 320
    new-instance v0, Lcom/avira/android/cropimage/ak;

    invoke-direct {v0, p0, v4}, Lcom/avira/android/cropimage/ak;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 324
    :cond_2
    invoke-static {v7}, Lcom/avira/android/cropimage/ImageManager;->a(Z)Z

    move-result v4

    .line 327
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 329
    if-eqz v4, :cond_4

    sget-object v4, Lcom/avira/android/cropimage/x;->INTERNAL:Lcom/avira/android/cropimage/x;

    if-eq v0, v4, :cond_4

    .line 331
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_3

    .line 333
    new-instance v4, Lcom/avira/android/cropimage/s;

    sget-object v6, Lcom/avira/android/cropimage/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-direct {v4, p0, v6, v2, v3}, Lcom/avira/android/cropimage/s;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_3
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_4

    .line 337
    new-instance v4, Lcom/avira/android/cropimage/ap;

    sget-object v6, Lcom/avira/android/cropimage/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    invoke-direct {v4, p0, v6, v2, v3}, Lcom/avira/android/cropimage/ap;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_4
    sget-object v4, Lcom/avira/android/cropimage/x;->INTERNAL:Lcom/avira/android/cropimage/x;

    if-eq v0, v4, :cond_5

    sget-object v4, Lcom/avira/android/cropimage/x;->ALL:Lcom/avira/android/cropimage/x;

    if-ne v0, v4, :cond_7

    .line 342
    :cond_5
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_6

    .line 344
    new-instance v0, Lcom/avira/android/cropimage/s;

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v4, v2, v3}, Lcom/avira/android/cropimage/s;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_6
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_7

    .line 350
    new-instance v0, Lcom/avira/android/cropimage/l;

    const-string v1, "content://drm/images"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/avira/android/cropimage/l;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 357
    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 359
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/b;

    .line 360
    invoke-virtual {v0}, Lcom/avira/android/cropimage/b;->c()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 362
    invoke-virtual {v0}, Lcom/avira/android/cropimage/b;->a()V

    .line 363
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 367
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 369
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/b;

    goto/16 :goto_0

    .line 373
    :cond_a
    new-instance v1, Lcom/avira/android/cropimage/t;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/avira/android/cropimage/q;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/cropimage/q;

    invoke-direct {v1, v0, v2}, Lcom/avira/android/cropimage/t;-><init>([Lcom/avira/android/cropimage/q;I)V

    move-object v0, v1

    .line 374
    goto/16 :goto_0
.end method

.method private static a(Landroid/content/ContentResolver;Lcom/avira/android/cropimage/x;ILjava/lang/String;)Lcom/avira/android/cropimage/q;
    .locals 2

    .prologue
    .line 494
    new-instance v0, Lcom/avira/android/cropimage/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/avira/android/cropimage/ImageManager$ImageListParam;-><init>()V

    iput-object p1, v0, Lcom/avira/android/cropimage/ImageManager$ImageListParam;->a:Lcom/avira/android/cropimage/x;

    iput p2, v0, Lcom/avira/android/cropimage/ImageManager$ImageListParam;->b:I

    const/4 v1, 0x1

    iput v1, v0, Lcom/avira/android/cropimage/ImageManager$ImageListParam;->c:I

    iput-object p3, v0, Lcom/avira/android/cropimage/ImageManager$ImageListParam;->d:Ljava/lang/String;

    .line 495
    invoke-static {p0, v0}, Lcom/avira/android/cropimage/ImageManager;->a(Landroid/content/ContentResolver;Lcom/avira/android/cropimage/ImageManager$ImageListParam;)Lcom/avira/android/cropimage/q;

    move-result-object v0

    return-object v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avira/android/cropimage/ImageManager;->a(Z)Z

    move-result v0

    return v0
.end method

.method private static a(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 550
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 552
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    if-eqz p0, :cond_0

    .line 556
    invoke-static {}, Lcom/avira/android/cropimage/ImageManager;->b()Z

    move-result v0

    .line 568
    :cond_0
    :goto_0
    return v0

    .line 564
    :cond_1
    if-nez p0, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 568
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 517
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v0

    .line 522
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, ".probe"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 530
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    const/4 v0, 0x1

    goto :goto_0

    .line 539
    :catch_0
    move-exception v1

    goto :goto_0
.end method
