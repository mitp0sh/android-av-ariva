.class final Lcom/google/android/gms/internal/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/au;

.field final synthetic b:Lcom/google/android/gms/internal/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/au;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/al;->b:Lcom/google/android/gms/internal/ak;

    iput-object p2, p0, Lcom/google/android/gms/internal/al;->a:Lcom/google/android/gms/internal/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/al;->a:Lcom/google/android/gms/internal/au;

    iget-object v0, v0, Lcom/google/android/gms/internal/au;->c:Lcom/google/android/gms/internal/bb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/bb;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not destroy mediation adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
