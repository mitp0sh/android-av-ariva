.class public Lcom/avira/android/firstscan/FirstVDFDownloadActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/firstscan/f;


# instance fields
.field private a:Lcom/avira/android/firstscan/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/firstscan/FirstVDFDownloadActivity;->a:Lcom/avira/android/firstscan/b;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avira/android/firstscan/FirstVDFDownloadActivity;->a:Lcom/avira/android/firstscan/b;

    invoke-virtual {v0}, Lcom/avira/android/firstscan/b;->d()V

    .line 55
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 56
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/firstscan/FirstVDFDownloadActivity;->a:Lcom/avira/android/firstscan/b;

    invoke-virtual {v0}, Lcom/avira/android/firstscan/b;->e()V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x7f0e0094
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v0, Lcom/avira/android/firstscan/b;

    invoke-direct {v0, p0}, Lcom/avira/android/firstscan/b;-><init>(Lcom/avira/android/firstscan/f;)V

    iput-object v0, p0, Lcom/avira/android/firstscan/FirstVDFDownloadActivity;->a:Lcom/avira/android/firstscan/b;

    .line 27
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/avira/android/firstscan/FirstVDFDownloadActivity;->setContentView(I)V

    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/avira/android/firstscan/FirstVDFDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/avira/android/firstscan/FirstVDFDownloadActivity;->a:Lcom/avira/android/firstscan/b;

    invoke-virtual {v0}, Lcom/avira/android/firstscan/b;->a()V

    .line 29
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 48
    iget-object v0, p0, Lcom/avira/android/firstscan/FirstVDFDownloadActivity;->a:Lcom/avira/android/firstscan/b;

    invoke-virtual {v0}, Lcom/avira/android/firstscan/b;->c()V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 41
    iget-object v0, p0, Lcom/avira/android/firstscan/FirstVDFDownloadActivity;->a:Lcom/avira/android/firstscan/b;

    invoke-virtual {v0}, Lcom/avira/android/firstscan/b;->b()V

    .line 42
    return-void
.end method
