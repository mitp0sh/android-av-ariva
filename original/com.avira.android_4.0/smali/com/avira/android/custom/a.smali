.class final Lcom/avira/android/custom/a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/custom/AviraWebView;


# direct methods
.method private constructor <init>(Lcom/avira/android/custom/AviraWebView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/avira/android/custom/a;->a:Lcom/avira/android/custom/AviraWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/custom/AviraWebView;B)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/avira/android/custom/a;-><init>(Lcom/avira/android/custom/AviraWebView;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/avira/android/custom/a;->a:Lcom/avira/android/custom/AviraWebView;

    # getter for: Lcom/avira/android/custom/AviraWebView;->mBroadcastAction:Ljava/lang/String;
    invoke-static {v0}, Lcom/avira/android/custom/AviraWebView;->access$100(Lcom/avira/android/custom/AviraWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/custom/a;->a:Lcom/avira/android/custom/AviraWebView;

    # getter for: Lcom/avira/android/custom/AviraWebView;->mBroadcastAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/avira/android/custom/AviraWebView;->access$100(Lcom/avira/android/custom/AviraWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 71
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method
