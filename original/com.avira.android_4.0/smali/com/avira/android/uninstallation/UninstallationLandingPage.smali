.class public Lcom/avira/android/uninstallation/UninstallationLandingPage;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0300a9

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationLandingPage;->setContentView(I)V

    .line 39
    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationLandingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    new-instance v1, Lcom/avira/android/uninstallation/i;

    invoke-direct {v1, p0}, Lcom/avira/android/uninstallation/i;-><init>(Lcom/avira/android/uninstallation/UninstallationLandingPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f0e0211

    invoke-virtual {p0, v0}, Lcom/avira/android/uninstallation/UninstallationLandingPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 50
    new-instance v1, Lcom/avira/android/uninstallation/j;

    invoke-direct {v1, p0}, Lcom/avira/android/uninstallation/j;-><init>(Lcom/avira/android/uninstallation/UninstallationLandingPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method
