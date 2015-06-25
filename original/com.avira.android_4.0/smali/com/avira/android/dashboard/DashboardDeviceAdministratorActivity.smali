.class public Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/dashboard/x;


# instance fields
.field private a:Lcom/avira/android/dashboard/m;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 58
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/avira/android/custom/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;->finish()V

    .line 52
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 66
    :sswitch_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;->a:Lcom/avira/android/dashboard/m;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/m;->b()V

    goto :goto_0

    .line 69
    :sswitch_1
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;->a:Lcom/avira/android/dashboard/m;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/m;->a()V

    goto :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x7f0e0094 -> :sswitch_1
        0x7f0e010e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;->setContentView(I)V

    const v0, 0x7f0e010e

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    new-instance v0, Lcom/avira/android/dashboard/m;

    invoke-direct {v0, p0}, Lcom/avira/android/dashboard/m;-><init>(Lcom/avira/android/dashboard/x;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;->a:Lcom/avira/android/dashboard/m;

    .line 37
    return-void
.end method
