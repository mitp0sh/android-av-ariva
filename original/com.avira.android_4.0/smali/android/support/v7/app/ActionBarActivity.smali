.class public Landroid/support/v7/app/ActionBarActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Landroid/support/v7/app/a;


# instance fields
.field a:Landroid/support/v7/app/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_1

    .line 373
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 375
    invoke-virtual {v0, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    .line 376
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 380
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    const/4 v0, 0x1

    .line 393
    :goto_1
    return v0

    .line 384
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    goto :goto_0

    .line 389
    :cond_0
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method final a(I)V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 209
    return-void
.end method

.method final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 213
    return-void
.end method

.method final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    return-void
.end method

.method final a(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method final a(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/d;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    return-void
.end method

.method final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    return-void
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->i()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->c()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 406
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 240
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 104
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->d()V

    .line 105
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v7/app/i;

    invoke-direct {v0, p0}, Landroid/support/v7/app/i;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    :goto_0
    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(Landroid/os/Bundle;)V

    .line 99
    return-void

    .line 96
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v7/app/h;

    invoke-direct {v0, p0}, Landroid/support/v7/app/h;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v7/app/e;

    invoke-direct {v0, p0}, Landroid/support/v7/app/e;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/d;->a(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->b(I)Landroid/view/View;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/d;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 135
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->c()Z

    move-result v0

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 116
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->f()V

    .line 117
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/d;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 110
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->e()V

    .line 111
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 145
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(I)V

    .line 77
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/d;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 170
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->g()V

    .line 173
    return-void
.end method
