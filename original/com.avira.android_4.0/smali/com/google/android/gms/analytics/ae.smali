.class final Lcom/google/android/gms/analytics/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/ad;


# instance fields
.field private a:Landroid/content/ServiceConnection;

.field private b:Lcom/google/android/gms/analytics/ag;

.field private c:Lcom/google/android/gms/analytics/ah;

.field private d:Landroid/content/Context;

.field private e:Lcom/google/android/gms/internal/fg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/ag;Lcom/google/android/gms/analytics/ah;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/ae;->d:Landroid/content/Context;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/analytics/ae;->b:Lcom/google/android/gms/analytics/ag;

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onConnectionFailedListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, Lcom/google/android/gms/analytics/ae;->c:Lcom/google/android/gms/analytics/ah;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/ae;Lcom/google/android/gms/internal/fg;)Lcom/google/android/gms/internal/fg;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/ae;->e:Lcom/google/android/gms/internal/fg;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/ae;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->b:Lcom/google/android/gms/analytics/ag;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ag;->d()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/ae;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/ae;)Landroid/content/ServiceConnection;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ae;->a:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/ae;)Lcom/google/android/gms/analytics/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->c:Lcom/google/android/gms/analytics/ah;

    return-object v0
.end method

.method private d()Lcom/google/android/gms/internal/fg;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->e:Lcom/google/android/gms/internal/fg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->e:Lcom/google/android/gms/internal/fg;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/analytics/ae;)Lcom/google/android/gms/analytics/ag;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->b:Lcom/google/android/gms/analytics/ag;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/ae;->d()Lcom/google/android/gms/internal/fg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/fg;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clear hits failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/di;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/analytics/ae;->d()Lcom/google/android/gms/internal/fg;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/fg;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendHit failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "app_package_name"

    iget-object v2, p0, Lcom/google/android/gms/analytics/ae;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ae;->a:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    const-string v0, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/google/android/gms/analytics/af;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/af;-><init>(Lcom/google/android/gms/analytics/ae;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/ae;->a:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ae;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/analytics/ae;->a:Landroid/content/ServiceConnection;

    const/16 v3, 0x81

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect: bindService returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/ae;->a:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->c:Lcom/google/android/gms/analytics/ah;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/ah;->a(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/analytics/ae;->e:Lcom/google/android/gms/internal/fg;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->a:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/analytics/ae;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/analytics/ae;->a:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->b:Lcom/google/android/gms/analytics/ag;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ag;->e()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
