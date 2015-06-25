.class public Lcom/avira/applock/activities/SettingsActivity;
.super Lcom/avira/applock/ux/ParallaxDashboardActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_APPLOCK_FEATURE_SWITCH_NEW_STATE:Ljava/lang/String; = "extra_applock_feature_switch_new_state"


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Landroid/view/ViewGroup;

.field c:Landroid/view/ViewGroup;

.field d:Landroid/widget/CheckBox;

.field private e:Lcom/avira/applock/e/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avira/applock/ux/ParallaxDashboardActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->e:Lcom/avira/applock/e/n;

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;IZ)V
    .locals 2

    .prologue
    .line 118
    sget v0, Lcom/avira/applock/d;->settings_item_name:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    sget v0, Lcom/avira/applock/d;->settings_item_checkbox:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 121
    return-void

    .line 119
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->b:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/avira/applock/g/g;->a(Landroid/view/ViewGroup;Z)V

    .line 143
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->c:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/avira/applock/g/g;->a(Landroid/view/ViewGroup;Z)V

    .line 154
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->e:Lcom/avira/applock/e/n;

    invoke-virtual {v0}, Lcom/avira/applock/e/n;->c()V

    .line 58
    invoke-super {p0}, Lcom/avira/applock/ux/ParallaxDashboardActivity;->onBackPressed()V

    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 66
    sget v1, Lcom/avira/applock/d;->settings_enable_applock:I

    if-ne v0, v1, :cond_2

    .line 69
    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/avira/applock/activities/SettingsActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    iget-object v1, p0, Lcom/avira/applock/activities/SettingsActivity;->e:Lcom/avira/applock/e/n;

    invoke-virtual {v1, v0}, Lcom/avira/applock/e/n;->a(Z)V

    .line 82
    :cond_0
    :goto_1
    return-void

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_2
    sget v1, Lcom/avira/applock/d;->settings_change_pin:I

    if-ne v0, v1, :cond_3

    .line 76
    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->e:Lcom/avira/applock/e/n;

    invoke-virtual {v0}, Lcom/avira/applock/e/n;->d()V

    goto :goto_1

    .line 78
    :cond_3
    sget v1, Lcom/avira/applock/d;->settings_change_password:I

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->e:Lcom/avira/applock/e/n;

    invoke-virtual {v0}, Lcom/avira/applock/e/n;->e()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/avira/applock/ux/ParallaxDashboardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Lcom/avira/applock/e/n;

    invoke-direct {v0, p0}, Lcom/avira/applock/e/n;-><init>(Lcom/avira/applock/activities/SettingsActivity;)V

    iput-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->e:Lcom/avira/applock/e/n;

    .line 42
    sget-object v0, Lcom/avira/applock/common/ux/f;->SCROLLVIEW_CONTENT:Lcom/avira/applock/common/ux/f;

    sget v1, Lcom/avira/applock/e;->settings_activity_content:I

    invoke-virtual {p0, v0, v1}, Lcom/avira/applock/activities/SettingsActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    sget-object v0, Lcom/avira/applock/common/ux/f;->PARALLAX_HEADER:Lcom/avira/applock/common/ux/f;

    sget v1, Lcom/avira/applock/e;->settings_activity_header:I

    invoke-virtual {p0, v0, v1}, Lcom/avira/applock/activities/SettingsActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    sget-object v0, Lcom/avira/applock/common/ux/f;->BACKGROUND:Lcom/avira/applock/common/ux/f;

    sget v1, Lcom/avira/applock/e;->settings_activity_background:I

    invoke-virtual {p0, v0, v1}, Lcom/avira/applock/activities/SettingsActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    sget v0, Lcom/avira/applock/e;->parallax_dashboard:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/SettingsActivity;->setContentView(I)V

    sget v0, Lcom/avira/applock/d;->settings_enable_applock:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/avira/applock/d;->settings_item_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->a:Landroid/view/ViewGroup;

    sget v1, Lcom/avira/applock/f;->settings_screen_status_enabled:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/avira/applock/activities/SettingsActivity;->a(Landroid/view/ViewGroup;IZ)V

    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/avira/applock/d;->settings_change_pin:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->b:Landroid/view/ViewGroup;

    sget v1, Lcom/avira/applock/f;->settings_screen_option_change_pin:I

    invoke-static {v0, v1, v3}, Lcom/avira/applock/activities/SettingsActivity;->a(Landroid/view/ViewGroup;IZ)V

    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/avira/applock/d;->settings_change_password:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->c:Landroid/view/ViewGroup;

    sget v1, Lcom/avira/applock/f;->settings_screen_option_change_pass:I

    invoke-static {v0, v1, v3}, Lcom/avira/applock/activities/SettingsActivity;->a(Landroid/view/ViewGroup;IZ)V

    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->e:Lcom/avira/applock/e/n;

    invoke-virtual {v0}, Lcom/avira/applock/e/n;->a()V

    .line 45
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/avira/applock/ux/ParallaxDashboardActivity;->onPause()V

    .line 51
    iget-object v0, p0, Lcom/avira/applock/activities/SettingsActivity;->e:Lcom/avira/applock/e/n;

    invoke-virtual {v0}, Lcom/avira/applock/e/n;->b()V

    .line 52
    return-void
.end method
