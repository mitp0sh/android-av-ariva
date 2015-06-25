.class public Lcom/avira/applock/activities/LockScreenActivity;
.super Lcom/avira/applock/activities/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/c/d;


# instance fields
.field private a:Lcom/avira/applock/e/i;

.field private b:Lcom/avira/applock/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avira/applock/activities/BaseFragmentActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->a:Lcom/avira/applock/e/i;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->b:Lcom/avira/applock/c/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->d(I)V

    .line 67
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->a()V

    .line 68
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v2}, Lcom/avira/applock/c/a;->a(Z)V

    .line 69
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v2}, Lcom/avira/applock/c/a;->b(Z)V

    .line 71
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->a:Lcom/avira/applock/e/i;

    invoke-virtual {v0}, Lcom/avira/applock/e/i;->a()V

    .line 72
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->a:Lcom/avira/applock/e/i;

    invoke-virtual {v0}, Lcom/avira/applock/e/i;->d()V

    .line 84
    return-void
.end method

.method public final a(Lcom/avira/applock/activities/f;)V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/avira/applock/activities/e;->$SwitchMap$com$avira$applock$activities$LockScreenActivity$LockScreenMode:[I

    invoke-virtual {p1}, Lcom/avira/applock/activities/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->applock_screen_title_enter_pin:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->a(I)V

    .line 118
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->applock_screen_link_forgot_pin:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->c(I)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->applock_screen_title_forgot_pin:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->a(I)V

    .line 122
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->applock_screen_link_recovery_pass:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->c(I)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->a:Lcom/avira/applock/e/i;

    invoke-virtual {v0, p1}, Lcom/avira/applock/e/i;->a(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->a:Lcom/avira/applock/e/i;

    invoke-virtual {v0}, Lcom/avira/applock/e/i;->e()V

    .line 104
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->c()V

    .line 135
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->a:Lcom/avira/applock/e/i;

    invoke-virtual {v0}, Lcom/avira/applock/e/i;->c()V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/avira/applock/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/avira/applock/e/i;

    invoke-direct {v0, p0}, Lcom/avira/applock/e/i;-><init>(Lcom/avira/applock/activities/LockScreenActivity;)V

    iput-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->a:Lcom/avira/applock/e/i;

    .line 45
    sget v0, Lcom/avira/applock/e;->lock_screen_activity:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/LockScreenActivity;->setContentView(I)V

    .line 48
    new-instance v0, Lcom/avira/applock/c/a;

    invoke-direct {v0}, Lcom/avira/applock/c/a;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->b:Lcom/avira/applock/c/a;

    .line 49
    invoke-virtual {p0}, Lcom/avira/applock/activities/LockScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 51
    sget v1, Lcom/avira/applock/d;->lockscreen_fragment_holder:I

    iget-object v2, p0, Lcom/avira/applock/activities/LockScreenActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 53
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/avira/applock/activities/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 59
    iget-object v0, p0, Lcom/avira/applock/activities/LockScreenActivity;->a:Lcom/avira/applock/e/i;

    invoke-virtual {v0}, Lcom/avira/applock/e/i;->b()V

    .line 60
    return-void
.end method
