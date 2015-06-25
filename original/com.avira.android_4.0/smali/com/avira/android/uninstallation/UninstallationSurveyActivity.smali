.class public Lcom/avira/android/uninstallation/UninstallationSurveyActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"


# static fields
.field private static final PERCENTAGE:Ljava/lang/String; = "%s%%"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/uninstallation/UninstallationSurveyActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/android/uninstallation/UninstallationSurveyActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f0300aa

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f0e0214

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->a:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0e0212

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->b:Landroid/widget/LinearLayout;

    .line 52
    const v0, 0x7f0e0211

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    new-instance v1, Lcom/avira/android/uninstallation/k;

    invoke-direct {v1, p0}, Lcom/avira/android/uninstallation/k;-><init>(Lcom/avira/android/uninstallation/UninstallationSurveyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800bd

    invoke-virtual {p0, v1}, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/ak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    const v0, 0x7f0e0215

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationSurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/AviraWebView;

    .line 73
    new-instance v2, Lcom/avira/android/uninstallation/l;

    invoke-direct {v2, p0}, Lcom/avira/android/uninstallation/l;-><init>(Lcom/avira/android/uninstallation/UninstallationSurveyActivity;)V

    invoke-virtual {v0, v2}, Lcom/avira/android/custom/AviraWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/avira/android/custom/AviraWebView;->setScrollbarFadingEnabled(Z)V

    .line 95
    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Lcom/avira/android/custom/AviraWebView;->setScrollBarStyle(I)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/avira/android/custom/AviraWebView;->loadUrl(Ljava/lang/String;)V

    .line 97
    return-void
.end method
