.class public final Lcom/google/android/gms/internal/js;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/a;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/plus/internal/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/plus/internal/k;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/js;->a:Lcom/google/android/gms/common/api/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/d;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/js;->a:Lcom/google/android/gms/common/api/c;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "GoogleApiClient parameter is required."

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/gv;->b(ZLjava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/common/api/d;->c()Z

    move-result v0

    const-string v4, "GoogleApiClient must be connected."

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/gv;->a(ZLjava/lang/Object;)V

    invoke-interface {p1, v3}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/k;

    if-eqz v0, :cond_1

    :goto_1
    const-string v2, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/gv;->a(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/k;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
