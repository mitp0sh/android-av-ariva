.class public final Lcom/avira/android/antitheft/a/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final COLOR:I = -0x537aad

.field private static final STROKE_PERCENTAGE:F = 0.11f


# instance fields
.field private a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antitheft/a/a;->a:Landroid/graphics/Paint;

    .line 28
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/avira/android/antitheft/a/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 34
    invoke-virtual {p0}, Lcom/avira/android/antitheft/a/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 35
    iget-object v0, p0, Lcom/avira/android/antitheft/a/a;->a:Landroid/graphics/Paint;

    const v2, -0x537aad

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    int-to-float v0, v7

    const v2, 0x3de147ae    # 0.11f

    mul-float v8, v0, v2

    .line 37
    iget-object v0, p0, Lcom/avira/android/antitheft/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    div-float v9, v8, v12

    .line 39
    div-int/lit8 v10, v6, 0x2

    .line 40
    div-int/lit8 v11, v7, 0x2

    .line 43
    int-to-float v2, v10

    int-to-float v0, v11

    add-float v3, v0, v8

    int-to-float v4, v10

    iget-object v5, p0, Lcom/avira/android/antitheft/a/a;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 46
    sub-float v0, v1, v9

    float-to-int v0, v0

    .line 47
    int-to-float v1, v6

    sub-float/2addr v1, v8

    float-to-int v2, v1

    .line 48
    int-to-float v1, v7

    add-float/2addr v1, v9

    float-to-int v7, v1

    .line 49
    mul-float v1, v8, v12

    float-to-int v4, v1

    .line 50
    int-to-float v1, v0

    int-to-float v2, v2

    int-to-float v3, v7

    int-to-float v4, v4

    iget-object v5, p0, Lcom/avira/android/antitheft/a/a;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    int-to-float v0, v6

    sub-float/2addr v0, v9

    float-to-int v0, v0

    .line 56
    int-to-float v1, v11

    int-to-float v2, v10

    int-to-float v3, v7

    int-to-float v4, v0

    iget-object v5, p0, Lcom/avira/android/antitheft/a/a;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 59
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
