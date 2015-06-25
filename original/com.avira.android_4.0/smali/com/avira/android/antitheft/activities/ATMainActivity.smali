.class public Lcom/avira/android/antitheft/activities/ATMainActivity;
.super Lcom/avira/android/ux/ParallaxDashboardActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 103
    :sswitch_0
    invoke-static {p0}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 106
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avira/android/antitheft/activities/ATLockOrWipeDetailsActivity;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 109
    :sswitch_2
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/avira/android/antitheft/activities/ATLockOrWipeDetailsActivity;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 112
    :sswitch_3
    invoke-static {p0}, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x7f0e0012 -> :sswitch_0
        0x7f0e0015 -> :sswitch_1
        0x7f0e0018 -> :sswitch_2
        0x7f0e001f -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget-object v0, Lcom/avira/applock/common/ux/f;->SCROLLVIEW_CONTENT:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030002

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antitheft/activities/ATMainActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    sget-object v0, Lcom/avira/applock/common/ux/f;->PARALLAX_HEADER:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030003

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antitheft/activities/ATMainActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    sget-object v0, Lcom/avira/applock/common/ux/f;->NON_HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030004

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antitheft/activities/ATMainActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    sget-object v0, Lcom/avira/applock/common/ux/f;->BACKGROUND:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030001

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antitheft/activities/ATMainActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    const v0, 0x7f03008a

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATMainActivity;->setContentView(I)V

    const v0, 0x7f0e0012

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0015

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0018

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e001f

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/activities/ATMainActivity;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATMainActivity;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e001b

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/activities/ATMainActivity;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATMainActivity;->b:Landroid/view/View;

    new-instance v1, Lcom/avira/android/antitheft/a/a;

    invoke-direct {v1}, Lcom/avira/android/antitheft/a/a;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    :goto_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "device_unlocked"

    invoke-static {v0, v1, v4}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/avira/android/common/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Lcom/avira/android/common/a/a;

    const v1, 0x7f080375

    invoke-virtual {p0, v1}, Lcom/avira/android/antitheft/activities/ATMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/avira/android/common/a/a;-><init>(Ljava/lang/String;B)V

    invoke-virtual {p0}, Lcom/avira/android/antitheft/activities/ATMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    invoke-static {}, Lcom/avira/android/common/a/a;->a()V

    .line 41
    invoke-static {v4}, Lcom/avira/android/common/a/b;->d(Z)V

    .line 49
    :cond_0
    :goto_1
    return-void

    .line 36
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "located_or_yell_triggered"

    invoke-static {v0, v1, v4}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avira/android/common/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/avira/android/common/a/a;

    const v1, 0x7f080374

    invoke-virtual {p0, v1}, Lcom/avira/android/antitheft/activities/ATMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/avira/android/common/a/a;-><init>(Ljava/lang/String;B)V

    invoke-virtual {p0}, Lcom/avira/android/antitheft/activities/ATMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    invoke-static {}, Lcom/avira/android/common/a/a;->a()V

    .line 47
    invoke-static {v4}, Lcom/avira/android/common/a/b;->c(Z)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onResume()V

    .line 89
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->z()Z

    move-result v0

    iget-object v1, p0, Lcom/avira/android/antitheft/activities/ATMainActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
