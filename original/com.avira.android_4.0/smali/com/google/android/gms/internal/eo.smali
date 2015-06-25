.class final Lcom/google/android/gms/internal/eo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/bo;

.field final synthetic b:Lcom/google/android/gms/internal/en;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/en;Lcom/google/android/gms/internal/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/eo;->b:Lcom/google/android/gms/internal/en;

    iput-object p2, p0, Lcom/google/android/gms/internal/eo;->a:Lcom/google/android/gms/internal/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->a:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->j()V

    return-void
.end method
