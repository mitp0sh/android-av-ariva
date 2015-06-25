.class public final Lcom/avira/android/cropimage/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/avira/android/cropimage/aj;->a:Landroid/graphics/Bitmap;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/cropimage/aj;->b:I

    .line 31
    return-void
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/avira/android/cropimage/aj;->b:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/avira/android/cropimage/aj;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/avira/android/cropimage/aj;->b:I

    .line 36
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/avira/android/cropimage/aj;->a:Landroid/graphics/Bitmap;

    .line 51
    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avira/android/cropimage/aj;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final c()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 57
    iget v1, p0, Lcom/avira/android/cropimage/aj;->b:I

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/avira/android/cropimage/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 63
    iget-object v2, p0, Lcom/avira/android/cropimage/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 64
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 65
    iget v1, p0, Lcom/avira/android/cropimage/aj;->b:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 66
    invoke-virtual {p0}, Lcom/avira/android/cropimage/aj;->e()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/avira/android/cropimage/aj;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 68
    :cond_0
    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/avira/android/cropimage/aj;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/avira/android/cropimage/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 84
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/avira/android/cropimage/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/avira/android/cropimage/aj;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/avira/android/cropimage/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/avira/android/cropimage/aj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0
.end method
