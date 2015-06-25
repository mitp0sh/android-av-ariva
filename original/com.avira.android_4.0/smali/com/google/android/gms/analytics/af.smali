.class final Lcom/google/android/gms/analytics/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/ae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/af;->a:Lcom/google/android/gms/analytics/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service connected, binder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bound to service"

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/af;->a:Lcom/google/android/gms/analytics/ae;

    invoke-static {p2}, Lcom/google/android/gms/internal/fi;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/ae;->a(Lcom/google/android/gms/analytics/ae;Lcom/google/android/gms/internal/fg;)Lcom/google/android/gms/internal/fg;

    iget-object v0, p0, Lcom/google/android/gms/analytics/af;->a:Lcom/google/android/gms/analytics/ae;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->a(Lcom/google/android/gms/analytics/ae;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/af;->a:Lcom/google/android/gms/analytics/ae;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->b(Lcom/google/android/gms/analytics/ae;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/af;->a:Lcom/google/android/gms/analytics/ae;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->c(Lcom/google/android/gms/analytics/ae;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/af;->a:Lcom/google/android/gms/analytics/ae;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->d(Lcom/google/android/gms/analytics/ae;)Lcom/google/android/gms/analytics/ah;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/ah;->a(I)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "service disconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/af;->a:Lcom/google/android/gms/analytics/ae;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->c(Lcom/google/android/gms/analytics/ae;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/af;->a:Lcom/google/android/gms/analytics/ae;

    invoke-static {v0}, Lcom/google/android/gms/analytics/ae;->e(Lcom/google/android/gms/analytics/ae;)Lcom/google/android/gms/analytics/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ag;->e()V

    return-void
.end method
