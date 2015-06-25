.class final Lcom/google/android/gms/tagmanager/al;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/internal/ei;)Lcom/google/android/gms/internal/ei;
    .locals 2

    new-instance v1, Lcom/google/android/gms/internal/ei;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ei;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/ei;->a:I

    iput v0, v1, Lcom/google/android/gms/internal/ei;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ei;->k:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, v1, Lcom/google/android/gms/internal/ei;->k:[I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ei;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ei;->l:Z

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ei;->l:Z

    :cond_0
    return-object v1
.end method
