.class public Lcom/avira/android/custom/AviraWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private mBroadcastAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Lcom/avira/android/custom/AviraWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 29
    invoke-direct {p0}, Lcom/avira/android/custom/AviraWebView;->initialize()V

    .line 30
    return-void
.end method

.method static synthetic access$100(Lcom/avira/android/custom/AviraWebView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/avira/android/custom/AviraWebView;->mBroadcastAction:Ljava/lang/String;

    return-object v0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/avira/android/custom/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avira/android/custom/a;-><init>(Lcom/avira/android/custom/AviraWebView;B)V

    invoke-virtual {p0, v0}, Lcom/avira/android/custom/AviraWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 38
    return-void
.end method


# virtual methods
.method public setPageCompletedBroadcastAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/avira/android/custom/AviraWebView;->mBroadcastAction:Ljava/lang/String;

    .line 49
    return-void
.end method
