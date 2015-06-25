.class final Lcom/avira/android/uninstallation/l;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/uninstallation/UninstallationSurveyActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/uninstallation/UninstallationSurveyActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/avira/android/uninstallation/l;->a:Lcom/avira/android/uninstallation/UninstallationSurveyActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5

    .prologue
    .line 83
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/avira/android/uninstallation/l;->a:Lcom/avira/android/uninstallation/UninstallationSurveyActivity;

    invoke-static {v0}, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->a(Lcom/avira/android/uninstallation/UninstallationSurveyActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 92
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/avira/android/uninstallation/l;->a:Lcom/avira/android/uninstallation/UninstallationSurveyActivity;

    invoke-static {v0}, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->b(Lcom/avira/android/uninstallation/UninstallationSurveyActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "%s%%"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
