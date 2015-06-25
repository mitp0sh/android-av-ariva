.class public final Lcom/avira/android/cropimage/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CANNOT_STAT_ERROR:I = -0x2

.field private static final NO_STORAGE_ERROR:I = -0x1


# direct methods
.method private static a()I
    .locals 2

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lcom/avira/android/cropimage/ImageManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, -0x1

    .line 91
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x48c35000    # 400000.0f

    div-float/2addr v0, v1

    .line 84
    float-to-int v0, v0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/avira/android/cropimage/ag;->a()I

    move-result v1

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checking"

    if-ne v0, v1, :cond_2

    const v0, 0x7f0800d3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 42
    :cond_1
    return-void

    .line 41
    :cond_2
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-gtz v1, :cond_0

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
