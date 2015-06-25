.class public final Lcom/avira/android/userprofile/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATA:Ljava/lang/String; = "data"

.field private static final IMAGE_HEIGHT:I = 0x280

.field private static final IMAGE_URI:Ljava/lang/String; = "image_uri"

.field private static final IMAGE_WIDTH:I = 0x280

.field private static final IMAGE_WILDCARD:Ljava/lang/String; = "image/*"

.field private static final REQUEST_CODE_CAPTURE_CAMERA:I = 0x3eb

.field private static final REQUEST_CODE_CROP_IMAGE_TAG:I = 0x3e9

.field private static final REQUEST_CODE_SELECT_GALLERY_IMAGE:I = 0x3ea

.field private static final REQUEST_CODE_SELECT_PHOTO_OPTIONS:I = 0x3e8

.field public static final RESULT_CODE_SELECT_IMAGE_FROM_CAMERA_TAG:I = 0x1

.field public static final RESULT_CODE_SELECT_IMAGE_FROM_GALLERY_TAG:I = 0x2

.field private static final RETURN_DATA:Ljava/lang/String; = "return-data"


# instance fields
.field private final a:Lcom/avira/android/userprofile/g;

.field private final b:Lcom/avira/android/userprofile/x;

.field private final c:Lcom/avira/android/userprofile/s;

.field private d:[B

.field private e:Z

.field private f:Landroid/net/Uri;

.field private final g:Lcom/avira/android/userprofile/r;

.field private h:Z

.field private final i:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/avira/android/userprofile/g;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v2, p0, Lcom/avira/android/userprofile/q;->e:Z

    .line 62
    iput-boolean v1, p0, Lcom/avira/android/userprofile/q;->h:Z

    .line 74
    iput-object p1, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    .line 75
    new-instance v0, Lcom/avira/android/userprofile/x;

    invoke-direct {v0}, Lcom/avira/android/userprofile/x;-><init>()V

    iput-object v0, p0, Lcom/avira/android/userprofile/q;->b:Lcom/avira/android/userprofile/x;

    .line 76
    new-instance v0, Lcom/avira/android/userprofile/s;

    invoke-direct {v0}, Lcom/avira/android/userprofile/s;-><init>()V

    iput-object v0, p0, Lcom/avira/android/userprofile/q;->c:Lcom/avira/android/userprofile/s;

    .line 77
    new-instance v0, Lcom/avira/android/userprofile/r;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/userprofile/r;-><init>(Lcom/avira/android/userprofile/q;B)V

    iput-object v0, p0, Lcom/avira/android/userprofile/q;->g:Lcom/avira/android/userprofile/r;

    .line 78
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/userprofile/q;->i:Landroid/content/SharedPreferences;

    .line 80
    iput-boolean v2, p0, Lcom/avira/android/userprofile/q;->e:Z

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/avira/android/userprofile/q;)Lcom/avira/android/userprofile/s;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->c:Lcom/avira/android/userprofile/s;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/userprofile/q;[B)[B
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/avira/android/userprofile/q;->d:[B

    return-object p1
.end method

.method static synthetic b(Lcom/avira/android/userprofile/q;)Lcom/avira/android/userprofile/x;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->b:Lcom/avira/android/userprofile/x;

    return-object v0
.end method

.method static synthetic c(Lcom/avira/android/userprofile/q;)[B
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->d:[B

    return-object v0
.end method

.method static synthetic d(Lcom/avira/android/userprofile/q;)Lcom/avira/android/userprofile/g;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    return-object v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/avira/android/userprofile/q;->h:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v0}, Lcom/avira/android/userprofile/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v1}, Lcom/avira/android/userprofile/g;->c()Ljava/lang/String;

    move-result-object v1

    .line 295
    iget-object v2, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v2}, Lcom/avira/android/userprofile/g;->f()Landroid/app/Activity;

    move-result-object v2

    .line 297
    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    const v3, 0x7f08017a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/avira/android/userprofile/g;->c(Ljava/lang/String;)V

    .line 306
    :goto_0
    invoke-static {v1}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    const v1, 0x7f08017b

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avira/android/userprofile/g;->d(Ljava/lang/String;)V

    .line 315
    :cond_0
    :goto_1
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v0}, Lcom/avira/android/userprofile/g;->d()V

    goto :goto_0

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v0}, Lcom/avira/android/userprofile/g;->e()V

    goto :goto_1
.end method

.method private l()V
    .locals 6

    .prologue
    .line 345
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "temp_c_a_a_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/userprofile/q;->f:Landroid/net/Uri;

    .line 348
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->f:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    const-string v1, "output"

    iget-object v2, p0, Lcom/avira/android/userprofile/q;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 352
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    iget-object v1, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v1}, Lcom/avira/android/userprofile/g;->f()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 356
    :cond_0
    return-void
.end method

.method private m()V
    .locals 5

    .prologue
    const/16 v4, 0x280

    const/4 v3, 0x1

    .line 524
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v1}, Lcom/avira/android/userprofile/g;->f()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/avira/android/cropimage/CropImage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 525
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    iget-object v1, p0, Lcom/avira/android/userprofile/q;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 528
    const-string v1, "height"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    const-string v1, "width"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 530
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 531
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 532
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 533
    iget-object v1, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v1}, Lcom/avira/android/userprofile/g;->f()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 534
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->i:Landroid/content/SharedPreferences;

    const-string v1, "image_uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/userprofile/q;->f:Landroid/net/Uri;

    .line 94
    :cond_0
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 396
    packed-switch p1, :pswitch_data_0

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 401
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 403
    iput-boolean v2, p0, Lcom/avira/android/userprofile/q;->e:Z

    .line 405
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/userprofile/q;->f:Landroid/net/Uri;

    .line 407
    invoke-direct {p0}, Lcom/avira/android/userprofile/q;->m()V

    goto :goto_0

    .line 415
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 417
    iput-boolean v1, p0, Lcom/avira/android/userprofile/q;->e:Z

    .line 419
    invoke-direct {p0}, Lcom/avira/android/userprofile/q;->m()V

    goto :goto_0

    .line 426
    :pswitch_2
    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    .line 428
    if-ne p2, v1, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/avira/android/userprofile/q;->l()V

    goto :goto_0

    .line 440
    :pswitch_3
    if-ne p2, v0, :cond_2

    .line 442
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_1

    .line 446
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/userprofile/q;->d:[B

    .line 448
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->d:[B

    iget-object v1, p0, Lcom/avira/android/userprofile/q;->d:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v1, v0}, Lcom/avira/android/userprofile/g;->a(Landroid/graphics/Bitmap;)V

    .line 452
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 456
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avira/android/userprofile/q;->f:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 471
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 473
    iget-boolean v0, p0, Lcom/avira/android/userprofile/q;->e:Z

    if-eqz v0, :cond_3

    .line 475
    invoke-direct {p0}, Lcom/avira/android/userprofile/q;->l()V

    goto :goto_0

    .line 479
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v1}, Lcom/avira/android/userprofile/g;->f()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->f:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->f:Landroid/net/Uri;

    iget-object v1, p0, Lcom/avira/android/userprofile/q;->i:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "image_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->c:Lcom/avira/android/userprofile/s;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/avira/android/userprofile/q;->b:Lcom/avira/android/userprofile/x;

    invoke-virtual {v1, v0}, Lcom/avira/android/userprofile/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/avira/android/userprofile/q;->b:Lcom/avira/android/userprofile/x;

    invoke-virtual {v2, v0}, Lcom/avira/android/userprofile/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v3, v1}, Lcom/avira/android/userprofile/g;->a(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v1, v2}, Lcom/avira/android/userprofile/g;->b(Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/avira/android/userprofile/q;->b:Lcom/avira/android/userprofile/x;

    invoke-virtual {v1, v0}, Lcom/avira/android/userprofile/x;->c(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/userprofile/q;->d:[B

    .line 126
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->d:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/userprofile/q;->d:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->d:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avira/android/userprofile/q;->d:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v1, v0}, Lcom/avira/android/userprofile/g;->a(Landroid/graphics/Bitmap;)V

    .line 131
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    const-string v1, "profileImageSavedAction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "profileNameSavedAction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v1}, Lcom/avira/android/userprofile/g;->f()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/userprofile/q;->g:Lcom/avira/android/userprofile/r;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v0}, Lcom/avira/android/userprofile/g;->f()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/userprofile/q;->g:Lcom/avira/android/userprofile/r;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    return-void
.end method

.method public final f()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x280

    const/16 v7, 0x64

    .line 162
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v0}, Lcom/avira/android/userprofile/g;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v2}, Lcom/avira/android/userprofile/g;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v3}, Lcom/avira/android/userprofile/g;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avira/android/userprofile/q;->c:Lcom/avira/android/userprofile/s;

    invoke-virtual {v4}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v3}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v5, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/avira/android/userprofile/q;->k()V

    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v7, :cond_3

    iget-object v0, p0, Lcom/avira/android/userprofile/q;->b:Lcom/avira/android/userprofile/x;

    iget-object v1, p0, Lcom/avira/android/userprofile/q;->d:[B

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/avira/android/userprofile/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v0

    invoke-static {v2, v3}, Lcom/avira/android/userprofile/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/avira/android/userprofile/q;->d:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/avira/android/userprofile/q;->d:[B

    array-length v1, v1

    if-lez v1, :cond_2

    iget-object v0, p0, Lcom/avira/android/userprofile/q;->b:Lcom/avira/android/userprofile/x;

    iget-object v1, p0, Lcom/avira/android/userprofile/q;->d:[B

    invoke-virtual {v0, v4, v1}, Lcom/avira/android/userprofile/x;->a(Ljava/lang/String;[B)Z

    move-result v0

    iget-object v1, p0, Lcom/avira/android/userprofile/q;->d:[B

    invoke-static {v1, v8, v8}, Lcom/avira/android/userprofile/i;->a([BII)V

    .line 168
    :cond_2
    :goto_1
    return v0

    :cond_3
    move v0, v1

    .line 164
    goto :goto_0

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v0}, Lcom/avira/android/userprofile/g;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v2}, Lcom/avira/android/userprofile/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/avira/android/userprofile/q;->k()V

    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_5

    iget-object v1, p0, Lcom/avira/android/userprofile/q;->c:Lcom/avira/android/userprofile/s;

    invoke-virtual {v1}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/avira/android/userprofile/q;->b:Lcom/avira/android/userprofile/x;

    iget-object v4, p0, Lcom/avira/android/userprofile/q;->d:[B

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/avira/android/userprofile/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v1

    invoke-static {v0, v2}, Lcom/avira/android/userprofile/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->d:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/avira/android/userprofile/q;->d:[B

    array-length v0, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/avira/android/userprofile/q;->d:[B

    invoke-static {v0, v8, v8}, Lcom/avira/android/userprofile/i;->a([BII)V

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->d:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/userprofile/q;->d:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/userprofile/q;->h:Z

    .line 268
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v0}, Lcom/avira/android/userprofile/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/avira/android/userprofile/q;->k()V

    .line 283
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 3

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v1}, Lcom/avira/android/userprofile/g;->f()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    iget-object v1, p0, Lcom/avira/android/userprofile/q;->a:Lcom/avira/android/userprofile/g;

    invoke-interface {v1}, Lcom/avira/android/userprofile/g;->f()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 325
    return-void
.end method
