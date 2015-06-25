.class final Lcom/facebook/widget/al;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/facebook/widget/af;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/af;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/af;B)V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/facebook/widget/al;-><init>(Lcom/facebook/widget/af;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->b(Lcom/facebook/widget/af;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->c(Lcom/facebook/widget/af;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->d(Lcom/facebook/widget/af;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 491
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->e(Lcom/facebook/widget/af;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->f(Lcom/facebook/widget/af;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Webview loading URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/facebook/b/cl;->a()V

    .line 474
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 475
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->b(Lcom/facebook/widget/af;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->c(Lcom/facebook/widget/af;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 478
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    new-instance v1, Lcom/facebook/al;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/af;->a(Ljava/lang/Throwable;)V

    .line 457
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 464
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 466
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 467
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    new-instance v1, Lcom/facebook/al;

    const/16 v2, -0xb

    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/af;->a(Ljava/lang/Throwable;)V

    .line 469
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Redirect URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/facebook/b/cl;->a()V

    .line 405
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->a(Lcom/facebook/widget/af;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 406
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-virtual {v0, p2}, Lcom/facebook/widget/af;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 408
    const-string v0, "error"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    if-nez v0, :cond_0

    .line 410
    const-string v0, "error_type"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_0
    const-string v1, "error_msg"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    if-nez v1, :cond_1

    .line 415
    const-string v1, "error_description"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 417
    :cond_1
    const-string v2, "error_code"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {v2}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 421
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 427
    :goto_0
    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-ne v2, v3, :cond_2

    .line 429
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-virtual {v0, v5}, Lcom/facebook/widget/af;->a(Landroid/os/Bundle;)V

    :goto_1
    move v0, v4

    .line 449
    :goto_2
    return v0

    .line 423
    :catch_0
    move-exception v2

    move v2, v3

    goto :goto_0

    .line 430
    :cond_2
    if-eqz v0, :cond_4

    const-string v3, "access_denied"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "OAuthAccessDeniedException"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-virtual {v0}, Lcom/facebook/widget/af;->c()V

    goto :goto_1

    .line 433
    :cond_4
    const/16 v3, 0x1069

    if-ne v2, v3, :cond_5

    .line 434
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-virtual {v0}, Lcom/facebook/widget/af;->c()V

    goto :goto_1

    .line 436
    :cond_5
    new-instance v3, Lcom/facebook/ap;

    invoke-direct {v3, v2, v0, v1}, Lcom/facebook/ap;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    new-instance v2, Lcom/facebook/as;

    invoke-direct {v2, v3, v1}, Lcom/facebook/as;-><init>(Lcom/facebook/ap;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/facebook/widget/af;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 440
    :cond_6
    const-string v0, "fbconnect://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 441
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-virtual {v0}, Lcom/facebook/widget/af;->c()V

    move v0, v4

    .line 442
    goto :goto_2

    .line 443
    :cond_7
    const-string v0, "touch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 444
    const/4 v0, 0x0

    goto :goto_2

    .line 447
    :cond_8
    iget-object v0, p0, Lcom/facebook/widget/al;->a:Lcom/facebook/widget/af;

    invoke-virtual {v0}, Lcom/facebook/widget/af;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 449
    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_0
.end method
