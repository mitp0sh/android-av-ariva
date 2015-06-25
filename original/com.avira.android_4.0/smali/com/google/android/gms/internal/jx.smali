.class public final Lcom/google/android/gms/internal/jx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/c;


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

    iput-object p1, p0, Lcom/google/android/gms/internal/jx;->a:Lcom/google/android/gms/common/api/c;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/plus/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jx;->a:Lcom/google/android/gms/common/api/c;

    invoke-static {p1, v0}, Lcom/google/android/gms/plus/d;->a(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/plus/internal/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/k;->l()Lcom/google/android/gms/plus/a/b/a;

    move-result-object v0

    return-object v0
.end method
