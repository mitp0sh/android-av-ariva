.class public Lcom/avira/android/premium/DashboardPremiumActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 46
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avira/android/premium/DashboardPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/avira/android/premium/SupportDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/avira/android/premium/DashboardPremiumActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01ba
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f03008f

    invoke-virtual {p0, v0}, Lcom/avira/android/premium/DashboardPremiumActivity;->setContentView(I)V

    .line 28
    const v0, 0x7f0e01b6

    invoke-virtual {p0, v0}, Lcom/avira/android/premium/DashboardPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/avira/android/premium/a;

    invoke-direct {v1, p0}, Lcom/avira/android/premium/a;-><init>(Lcom/avira/android/premium/DashboardPremiumActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method
