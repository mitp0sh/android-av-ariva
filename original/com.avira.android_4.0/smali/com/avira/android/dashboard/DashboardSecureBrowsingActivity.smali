.class public Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;->a:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const v0, 0x7f0802d1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 52
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v0, 0x7f0802cf

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void

    .line 50
    :cond_0
    const v0, 0x7f0802d2

    goto :goto_0

    .line 52
    :cond_1
    const v0, 0x7f0802d0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 68
    :sswitch_0
    invoke-virtual {p0}, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;->finish()V

    goto :goto_0

    .line 71
    :sswitch_1
    invoke-static {}, Lcom/avira/android/securebrowsing/c/aa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/aa;->a(Z)Z

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x7f0e0094 -> :sswitch_0
        0x7f0e01d6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030098

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;->setContentView(I)V

    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e01d6

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e01d5

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;->b:Landroid/widget/TextView;

    .line 30
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 45
    invoke-static {}, Lcom/avira/android/securebrowsing/c/aa;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;->a(Z)V

    .line 46
    return-void
.end method
