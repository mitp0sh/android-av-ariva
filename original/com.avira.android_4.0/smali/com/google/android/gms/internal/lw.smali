.class final Lcom/google/android/gms/internal/lw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/lt;

.field final synthetic b:Lcom/google/android/gms/internal/lv;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/lt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lv;Lcom/google/android/gms/internal/lt;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/lw;->b:Lcom/google/android/gms/internal/lv;

    iput-object p2, p0, Lcom/google/android/gms/internal/lw;->a:Lcom/google/android/gms/internal/lt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/lw;->a:Lcom/google/android/gms/internal/lt;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/lw;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->b:Lcom/google/android/gms/internal/lv;

    invoke-static {v0}, Lcom/google/android/gms/internal/lv;->a(Lcom/google/android/gms/internal/lv;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/lw;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lt;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/lw;->b:Lcom/google/android/gms/internal/lv;

    invoke-static {v1}, Lcom/google/android/gms/internal/lv;->b(Lcom/google/android/gms/internal/lv;)Lcom/google/android/gms/internal/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lt;->b(Lcom/google/android/gms/internal/z;)V

    :cond_0
    return-void
.end method
