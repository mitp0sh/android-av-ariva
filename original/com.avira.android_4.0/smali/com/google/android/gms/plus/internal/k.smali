.class public final Lcom/google/android/gms/plus/internal/k;
.super Lcom/google/android/gms/internal/ft;

# interfaces
.implements Lcom/google/android/gms/common/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ft",
        "<",
        "Lcom/google/android/gms/plus/internal/g;",
        ">;",
        "Lcom/google/android/gms/common/b;"
    }
.end annotation


# instance fields
.field private c:Lcom/google/android/gms/plus/a/b/a;

.field private final d:Lcom/google/android/gms/plus/internal/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/plus/internal/h;)V
    .locals 6

    invoke-virtual {p5}, Lcom/google/android/gms/plus/internal/h;->c()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ft;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/h;[Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/gms/plus/internal/k;->d:Lcom/google/android/gms/plus/internal/h;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/plus/internal/i;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/g;

    move-result-object v0

    return-object v0
.end method

.method protected final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ir;->a([B)Lcom/google/android/gms/internal/ir;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/internal/k;->c:Lcom/google/android/gms/plus/a/b/a;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ft;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/gm;Lcom/google/android/gms/internal/fx;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/k;->d:Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->k()Landroid/os/Bundle;

    move-result-object v7

    const-string v0, "request_visible_actions"

    iget-object v1, p0, Lcom/google/android/gms/plus/internal/k;->d:Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/internal/h;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const v2, 0x41f6b8

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/k;->d:Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/k;->d:Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/k;->i()[Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/k;->d:Lcom/google/android/gms/plus/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->b()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/gm;->a(Lcom/google/android/gms/internal/gj;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.plus.service.START"

    return-object v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/k;->j()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/k;->k()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/g;

    invoke-interface {v0}, Lcom/google/android/gms/plus/internal/g;->a()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final l()Lcom/google/android/gms/plus/a/b/a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/k;->j()V

    iget-object v0, p0, Lcom/google/android/gms/plus/internal/k;->c:Lcom/google/android/gms/plus/a/b/a;

    return-object v0
.end method
