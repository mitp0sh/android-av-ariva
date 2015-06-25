.class public final Lcom/google/android/gms/internal/fr;
.super Landroid/widget/ImageView;


# instance fields
.field private Bl:Landroid/net/Uri;

.field private Bm:I

.field private Bn:I


# virtual methods
.method public final N(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/fr;->Bm:I

    return-void
.end method

.method public final d(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fr;->Bl:Landroid/net/Uri;

    return-void
.end method

.method public final dQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fr;->Bm:I

    return v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/fr;->Bn:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/fr;->Bn:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    return-void
.end method
