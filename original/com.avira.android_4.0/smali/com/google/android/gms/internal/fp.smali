.class final Lcom/google/android/gms/internal/fp;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fp;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/fp;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/fp;->a:I

    iget v0, p1, Lcom/google/android/gms/internal/fp;->b:I

    iput v0, p0, Lcom/google/android/gms/internal/fp;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fp;->a:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fm;-><init>(Lcom/google/android/gms/internal/fp;)V

    return-object v0
.end method
