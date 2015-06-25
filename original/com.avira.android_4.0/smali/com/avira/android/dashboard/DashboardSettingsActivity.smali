.class public Lcom/avira/android/dashboard/DashboardSettingsActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/dashboard/z;


# instance fields
.field private a:Lcom/avira/android/dashboard/v;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/avira/android/securebrowsing/c/aa;->a()Z

    move-result v1

    .line 65
    const v0, 0x7f0e00fb

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const v1, 0x7f0802cd

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    return-void

    .line 65
    :cond_0
    const v1, 0x7f0802ce

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0e00f6

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardSettingsActivity;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final d()Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 0

    .prologue
    .line 45
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 81
    :sswitch_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardSettingsActivity;->a:Lcom/avira/android/dashboard/v;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/v;->b()V

    goto :goto_0

    .line 84
    :sswitch_1
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardSettingsActivity;->a:Lcom/avira/android/dashboard/v;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/v;->c()V

    goto :goto_0

    .line 87
    :sswitch_2
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardSettingsActivity;->a:Lcom/avira/android/dashboard/v;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/v;->d()V

    goto :goto_0

    .line 90
    :sswitch_3
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardSettingsActivity;->a:Lcom/avira/android/dashboard/v;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/v;->e()V

    goto :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x7f0e0094 -> :sswitch_2
        0x7f0e00f4 -> :sswitch_0
        0x7f0e00f8 -> :sswitch_3
        0x7f0e00fc -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardSettingsActivity;->setContentView(I)V

    const v0, 0x7f0e00f4

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00fc

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardSettingsActivity;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardSettingsActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    new-instance v0, Lcom/avira/android/dashboard/v;

    invoke-direct {v0, p0}, Lcom/avira/android/dashboard/v;-><init>(Lcom/avira/android/dashboard/z;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardSettingsActivity;->a:Lcom/avira/android/dashboard/v;

    .line 30
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardSettingsActivity;->a:Lcom/avira/android/dashboard/v;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/v;->a()V

    .line 59
    return-void
.end method
