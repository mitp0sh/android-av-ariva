.class public final Lcom/google/android/gms/internal/el;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private mF:Lcom/google/android/gms/internal/ab;

.field private final mG:Lcom/google/android/gms/internal/db;

.field private final mg:Ljava/lang/Object;

.field private final nP:Lcom/google/android/gms/internal/lf;

.field private final pY:Lcom/google/android/gms/internal/en;

.field private final pZ:Lcom/google/android/gms/internal/em;

.field private qa:Lcom/google/android/gms/internal/bo;

.field private qb:Z

.field private qc:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/em;Lcom/google/android/gms/internal/ab;ZZLcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/db;)V
    .locals 5

    const/16 v4, 0xb

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/el;->mg:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/el;->pZ:Lcom/google/android/gms/internal/em;

    iput-object p2, p0, Lcom/google/android/gms/internal/el;->mF:Lcom/google/android/gms/internal/ab;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/el;->qb:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/el;->nP:Lcom/google/android/gms/internal/lf;

    iput-object p6, p0, Lcom/google/android/gms/internal/el;->mG:Lcom/google/android/gms/internal/db;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/el;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v1, p6, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/dz;->a(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ec;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/el;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/fc;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/fc;-><init>(Lcom/google/android/gms/internal/el;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/el;->pY:Lcom/google/android/gms/internal/en;

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/el;->pY:Lcom/google/android/gms/internal/en;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/el;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/fd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fd;-><init>(Lcom/google/android/gms/internal/el;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/el;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/el;->bf()V

    return-void

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ec;->a(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/en;

    invoke-direct {v0, p0, p4}, Lcom/google/android/gms/internal/en;-><init>(Lcom/google/android/gms/internal/el;Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/el;->pY:Lcom/google/android/gms/internal/en;

    goto :goto_1

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/eq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/eq;-><init>(Lcom/google/android/gms/internal/el;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/el;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;ZZLcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/db;)Lcom/google/android/gms/internal/el;
    .locals 7

    new-instance v1, Lcom/google/android/gms/internal/em;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/em;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/el;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/el;-><init>(Lcom/google/android/gms/internal/em;Lcom/google/android/gms/internal/ab;ZZLcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/db;)V

    return-object v0
.end method

.method private bf()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/el;->qb:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->mF:Lcom/google/android/gms/internal/ab;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ab;->e:Z

    if-eqz v0, :cond_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(I)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/el;->bg()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(I)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/el;->bh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(I)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/el;->bg()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(I)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/el;->bh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private bg()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/el;->qc:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/el;->qc:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bh()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/el;->qc:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/el;->qc:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final Q()Lcom/google/android/gms/internal/ab;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/el;->mF:Lcom/google/android/gms/internal/ab;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/el;->pZ:Lcom/google/android/gms/internal/em;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/em;->setBaseContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/el;->qa:Lcom/google/android/gms/internal/bo;

    iput-object p2, p0, Lcom/google/android/gms/internal/el;->mF:Lcom/google/android/gms/internal/ab;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/el;->qb:Z

    invoke-static {p0}, Lcom/google/android/gms/internal/dz;->b(Landroid/webkit/WebView;)V

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/el;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->pY:Lcom/google/android/gms/internal/en;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/en;->b()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ab;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/el;->mF:Lcom/google/android/gms/internal/ab;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->requestLayout()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/bo;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/el;->qa:Lcom/google/android/gms/internal/bo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:AFMA_ReceiveMessage(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/dz;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dispatching AFMA event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gms/internal/ej;->a(I)Z

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/el;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Could not convert AFMA event parameters to JSON."

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final aY()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/el;->mG:Lcom/google/android/gms/internal/db;

    iget-object v2, v2, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/el;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final aZ()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/el;->mG:Lcom/google/android/gms/internal/db;

    iget-object v2, v2, Lcom/google/android/gms/internal/db;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/el;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final ba()Lcom/google/android/gms/internal/bo;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/el;->qa:Lcom/google/android/gms/internal/bo;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final bb()Lcom/google/android/gms/internal/en;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->pY:Lcom/google/android/gms/internal/en;

    return-object v0
.end method

.method public final bc()Lcom/google/android/gms/internal/lf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->nP:Lcom/google/android/gms/internal/lf;

    return-object v0
.end method

.method public final bd()Lcom/google/android/gms/internal/db;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->mG:Lcom/google/android/gms/internal/db;

    return-object v0
.end method

.method public final be()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/el;->qb:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final n(Z)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/el;->qb:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/el;->bf()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(I)Z

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 9

    const v0, 0x7fffffff

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v7, 0x8

    const/high16 v6, -0x80000000

    iget-object v4, p0, Lcom/google/android/gms/internal/el;->mg:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/el;->qb:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v2, v6, :cond_2

    if-ne v2, v8, :cond_9

    :cond_2
    move v2, v3

    :goto_1
    if-eq v5, v6, :cond_3

    if-ne v5, v8, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/el;->mF:Lcom/google/android/gms/internal/ab;

    iget v5, v5, Lcom/google/android/gms/internal/ab;->g:I

    if-gt v5, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/el;->mF:Lcom/google/android/gms/internal/ab;

    iget v2, v2, Lcom/google/android/gms/internal/ab;->d:I

    if-le v2, v0, :cond_7

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Not enough space to show ad. Needs "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/el;->mF:Lcom/google/android/gms/internal/ab;

    iget v2, v2, Lcom/google/android/gms/internal/ab;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/el;->mF:Lcom/google/android/gms/internal/ab;

    iget v2, v2, Lcom/google/android/gms/internal/ab;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " pixels, but only has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pixels."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/el;->setVisibility(I)V

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/el;->setMeasuredDimension(II)V

    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/el;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/el;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/el;->mF:Lcom/google/android/gms/internal/ab;

    iget v0, v0, Lcom/google/android/gms/internal/ab;->g:I

    iget-object v1, p0, Lcom/google/android/gms/internal/el;->mF:Lcom/google/android/gms/internal/ab;

    iget v1, v1, Lcom/google/android/gms/internal/ab;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/el;->setMeasuredDimension(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_9
    move v2, v0

    goto :goto_1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->nP:Lcom/google/android/gms/internal/lf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->nP:Lcom/google/android/gms/internal/lf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/lf;->a(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/el;->pZ:Lcom/google/android/gms/internal/em;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/em;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method
