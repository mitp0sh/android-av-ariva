.class public final Lcom/google/android/gms/internal/bi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/a/a/h;",
        "SERVER_PARAMETERS:",
        "Lcom/google/a/a/e;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/be;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/be;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bi;->a:Lcom/google/android/gms/internal/be;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bi;)Lcom/google/android/gms/internal/be;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bi;->a:Lcom/google/android/gms/internal/be;

    return-object v0
.end method


# virtual methods
.method public final onClick(Lcom/google/a/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/a/c",
            "<**>;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(I)Z

    invoke-static {}, Lcom/google/android/gms/internal/ef;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ef;->pT:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/bj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/bj;-><init>(Lcom/google/android/gms/internal/bi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bi;->a:Lcom/google/android/gms/internal/be;

    invoke-interface {v0}, Lcom/google/android/gms/internal/be;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdClicked."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
