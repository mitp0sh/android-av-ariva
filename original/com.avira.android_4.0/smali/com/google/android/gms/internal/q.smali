.class public final Lcom/google/android/gms/internal/q;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ax;

.field private b:Lcom/google/android/gms/ads/a;

.field private c:Lcom/google/android/gms/internal/g;

.field private d:[Lcom/google/android/gms/ads/c;

.field private e:Ljava/lang/String;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/google/android/gms/ads/doubleclick/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ax;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ax;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/ax;

    iput-object p1, p0, Lcom/google/android/gms/internal/q;->f:Landroid/view/ViewGroup;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ax;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ax;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/ax;

    iput-object p1, p0, Lcom/google/android/gms/internal/q;->f:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ae;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ae;->a(Z)[Lcom/google/android/gms/ads/c;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/q;->d:[Lcom/google/android/gms/ads/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/q;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/q;->d:[Lcom/google/android/gms/ads/c;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/c;)V

    const-string v1, "Ads by Google"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ef;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ab;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/ab;

    sget-object v3, Lcom/google/android/gms/ads/c;->BANNER:Lcom/google/android/gms/ads/c;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/c;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ef;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    invoke-interface {v0}, Lcom/google/android/gms/internal/g;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/q;->b:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/lx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/lx;-><init>(Lcom/google/android/gms/ads/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/ads/doubleclick/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/q;->g:Lcom/google/android/gms/ads/doubleclick/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/c;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/m;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/p;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->d:[Lcom/google/android/gms/ads/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/q;->d:[Lcom/google/android/gms/ads/c;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/c;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/q;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/ax;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ly;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/ax;)Lcom/google/android/gms/internal/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->b:Lcom/google/android/gms/ads/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    new-instance v1, Lcom/google/android/gms/internal/lx;

    iget-object v2, p0, Lcom/google/android/gms/internal/q;->b:Lcom/google/android/gms/ads/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/lx;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/d;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->g:Lcom/google/android/gms/ads/doubleclick/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    new-instance v1, Lcom/google/android/gms/internal/c;

    iget-object v2, p0, Lcom/google/android/gms/internal/q;->g:Lcom/google/android/gms/ads/doubleclick/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/c;-><init>(Lcom/google/android/gms/ads/doubleclick/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/m;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    invoke-interface {v0}, Lcom/google/android/gms/internal/g;->a()Lcom/google/android/gms/b/h;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    new-instance v1, Lcom/google/android/gms/internal/z;

    iget-object v2, p0, Lcom/google/android/gms/internal/q;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/z;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/p;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->a:Lcom/google/android/gms/internal/ax;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/p;->i()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ax;->a(Ljava/util/Map;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_6
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/q;->f:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/b/k;->a(Lcom/google/android/gms/b/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/q;->e:Ljava/lang/String;

    return-void
.end method

.method public final varargs a([Lcom/google/android/gms/ads/c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->d:[Lcom/google/android/gms/ads/c;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/q;->b([Lcom/google/android/gms/ads/c;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/ads/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->b:Lcom/google/android/gms/ads/a;

    return-object v0
.end method

.method public final varargs b([Lcom/google/android/gms/ads/c;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/q;->d:[Lcom/google/android/gms/ads/c;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    new-instance v1, Lcom/google/android/gms/internal/ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/q;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/q;->d:[Lcom/google/android/gms/ads/c;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/g;->a(Lcom/google/android/gms/internal/ab;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()Lcom/google/android/gms/ads/c;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    invoke-interface {v0}, Lcom/google/android/gms/internal/g;->i()Lcom/google/android/gms/internal/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ab;->a()Lcom/google/android/gms/ads/c;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->d:[Lcom/google/android/gms/ads/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->d:[Lcom/google/android/gms/ads/c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()[Lcom/google/android/gms/ads/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->d:[Lcom/google/android/gms/ads/c;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/ads/doubleclick/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->g:Lcom/google/android/gms/ads/doubleclick/a;

    return-object v0
.end method

.method public final g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    invoke-interface {v0}, Lcom/google/android/gms/internal/g;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    invoke-interface {v0}, Lcom/google/android/gms/internal/g;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/q;->c:Lcom/google/android/gms/internal/g;

    invoke-interface {v0}, Lcom/google/android/gms/internal/g;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
