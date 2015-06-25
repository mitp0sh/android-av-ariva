.class final Lcom/google/android/gms/internal/co;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/dn;

.field final synthetic b:Lcom/google/android/gms/internal/cm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/dn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/co;->b:Lcom/google/android/gms/internal/cm;

    iput-object p2, p0, Lcom/google/android/gms/internal/co;->a:Lcom/google/android/gms/internal/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->b:Lcom/google/android/gms/internal/cm;

    invoke-static {v0}, Lcom/google/android/gms/internal/cm;->a(Lcom/google/android/gms/internal/cm;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/co;->b:Lcom/google/android/gms/internal/cm;

    invoke-static {v0}, Lcom/google/android/gms/internal/cm;->b(Lcom/google/android/gms/internal/cm;)Lcom/google/android/gms/internal/cl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->a:Lcom/google/android/gms/internal/dn;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/cl;->a(Lcom/google/android/gms/internal/dn;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
