.class public Lcom/avira/applock/activities/RecoverPinViaPassActivity;
.super Lcom/avira/applock/activities/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/c/d;


# instance fields
.field private a:Lcom/avira/applock/e/l;

.field private b:Lcom/avira/applock/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avira/applock/activities/BaseFragmentActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->a:Lcom/avira/applock/e/l;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->b:Lcom/avira/applock/c/a;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->d(I)V

    .line 66
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->recover_pin_via_pass_screen_desc:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->b(I)V

    .line 67
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v2}, Lcom/avira/applock/c/a;->a(Z)V

    .line 68
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v2}, Lcom/avira/applock/c/a;->b(Z)V

    .line 70
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->a:Lcom/avira/applock/e/l;

    invoke-virtual {v0}, Lcom/avira/applock/e/l;->a()V

    .line 71
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->a:Lcom/avira/applock/e/l;

    invoke-virtual {v0}, Lcom/avira/applock/e/l;->b()V

    .line 77
    return-void
.end method

.method public final a(Lcom/avira/applock/activities/h;)V
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/avira/applock/activities/g;->$SwitchMap$com$avira$applock$activities$RecoverPinViaPassActivity$RecoverPinViaPassScreenMode:[I

    invoke-virtual {p1}, Lcom/avira/applock/activities/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->recover_pin_via_pass_screen_title_enter_pass:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->a(I)V

    .line 111
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->recover_pin_via_pass_screen_link_forgot_pass:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->c(I)V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->recover_pin_via_pass_screen_title_forgot_pass:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->a(I)V

    .line 115
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->recover_pin_via_pass_screen_link_send_code:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->c(I)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->a:Lcom/avira/applock/e/l;

    invoke-virtual {v0, p1}, Lcom/avira/applock/e/l;->a(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->a:Lcom/avira/applock/e/l;

    invoke-virtual {v0}, Lcom/avira/applock/e/l;->c()V

    .line 97
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->c()V

    .line 128
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/avira/applock/activities/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 58
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->a:Lcom/avira/applock/e/l;

    invoke-virtual {v0, p1, p2}, Lcom/avira/applock/e/l;->a(II)V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/avira/applock/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v0, Lcom/avira/applock/e/l;

    invoke-direct {v0, p0}, Lcom/avira/applock/e/l;-><init>(Lcom/avira/applock/activities/RecoverPinViaPassActivity;)V

    iput-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->a:Lcom/avira/applock/e/l;

    .line 44
    sget v0, Lcom/avira/applock/e;->recover_pin_via_pass_activity:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->setContentView(I)V

    .line 47
    new-instance v0, Lcom/avira/applock/c/a;

    invoke-direct {v0}, Lcom/avira/applock/c/a;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->b:Lcom/avira/applock/c/a;

    .line 48
    invoke-virtual {p0}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 50
    sget v1, Lcom/avira/applock/d;->recoverpinviapass_fragment_holder:I

    iget-object v2, p0, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 51
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 52
    return-void
.end method
