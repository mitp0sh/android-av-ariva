.class final Lcom/avira/android/c/g;
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
    .line 441
    iput-object p1, p0, Lcom/avira/android/c/g;->a:Lcom/avira/android/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/avira/android/c/g;->a:Lcom/avira/android/c/a;

    iget-object v0, p0, Lcom/avira/android/c/g;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->d(Lcom/avira/android/c/a;)Landroid/location/Location;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avira/android/c/a;->a(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    .line 464
    if-eqz v0, :cond_1

    .line 466
    invoke-static {}, Lcom/avira/android/c/a;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/c/g;->a:Lcom/avira/android/c/a;

    invoke-static {v0, p1}, Lcom/avira/android/c/a;->d(Lcom/avira/android/c/a;Landroid/location/Location;)Landroid/location/Location;

    .line 469
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    iget-object v0, p0, Lcom/avira/android/c/g;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->h(Lcom/avira/android/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/c/g;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->i(Lcom/avira/android/c/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/avira/android/c/g;->a:Lcom/avira/android/c/a;

    iget-object v1, p0, Lcom/avira/android/c/g;->a:Lcom/avira/android/c/a;

    invoke-static {v1}, Lcom/avira/android/c/a;->d(Lcom/avira/android/c/a;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/c/a;->a(Lcom/avira/android/c/a;Landroid/location/Location;)V

    .line 475
    iget-object v0, p0, Lcom/avira/android/c/g;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->c(Lcom/avira/android/c/a;)V

    .line 478
    :cond_1
    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/avira/android/c/g;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->e(Lcom/avira/android/c/a;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 456
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 445
    return-void
.end method
