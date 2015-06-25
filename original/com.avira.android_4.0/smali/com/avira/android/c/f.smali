.class final Lcom/avira/android/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/avira/android/c/a;


# direct methods
.method constructor <init>(Lcom/avira/android/c/a;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->f(Lcom/avira/android/c/a;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->f(Lcom/avira/android/c/a;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->g(Lcom/avira/android/c/a;)Landroid/location/Location;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avira/android/c/a;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    .line 420
    if-eqz v0, :cond_2

    .line 422
    invoke-static {}, Lcom/avira/android/c/a;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-static {v0, p1}, Lcom/avira/android/c/a;->b(Lcom/avira/android/c/a;Landroid/location/Location;)Landroid/location/Location;

    .line 425
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    iget-object v1, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-static {v1}, Lcom/avira/android/c/a;->g(Lcom/avira/android/c/a;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/c/a;->c(Lcom/avira/android/c/a;Landroid/location/Location;)V

    .line 429
    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    iget-object v1, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-static {v1}, Lcom/avira/android/c/a;->d(Lcom/avira/android/c/a;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/c/a;->c(Lcom/avira/android/c/a;Landroid/location/Location;)V

    .line 432
    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->g(Lcom/avira/android/c/a;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-static {v1}, Lcom/avira/android/c/a;->d(Lcom/avira/android/c/a;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/c/a;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    .line 433
    iget-object v1, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->g(Lcom/avira/android/c/a;)Landroid/location/Location;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, Lcom/avira/android/c/a;->a(Lcom/avira/android/c/a;Landroid/location/Location;)V

    .line 435
    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->c(Lcom/avira/android/c/a;)V

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->d(Lcom/avira/android/c/a;)Landroid/location/Location;

    move-result-object v0

    goto :goto_1
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/avira/android/c/f;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->e(Lcom/avira/android/c/a;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 402
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 391
    return-void
.end method
