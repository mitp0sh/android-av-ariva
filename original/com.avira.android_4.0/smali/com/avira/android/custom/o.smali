.class final Lcom/avira/android/custom/o;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/custom/n;


# direct methods
.method constructor <init>(Lcom/avira/android/custom/n;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/avira/android/custom/o;->a:Lcom/avira/android/custom/n;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 223
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.ACTION_WEBVIEW_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 228
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 229
    return-void
.end method
