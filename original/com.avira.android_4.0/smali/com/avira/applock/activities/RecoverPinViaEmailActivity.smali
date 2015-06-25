.class public Lcom/avira/applock/activities/RecoverPinViaEmailActivity;
.super Lcom/avira/applock/activities/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/c/d;


# instance fields
.field private a:Lcom/avira/applock/e/j;

.field private b:Lcom/avira/applock/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avira/applock/activities/BaseFragmentActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->a:Lcom/avira/applock/e/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 54
    iget-object v2, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->b:Lcom/avira/applock/c/a;

    const-string v0, "user_registered_email_key"

    const-string v3, ""

    invoke-static {p0, v0, v3}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    const/16 v1, 0x2a

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget v1, Lcom/avira/applock/f;->recover_pin_via_email_screen_title:I

    invoke-virtual {p0, v1}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/avira/applock/b;->userInputScreen_title_smaller_text_size:I

    invoke-virtual {v2, v0, v1}, Lcom/avira/applock/c/a;->a(Ljava/lang/String;I)V

    .line 56
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->b()V

    .line 57
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->a()V

    .line 58
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v6}, Lcom/avira/applock/c/a;->a(Z)V

    .line 59
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v5}, Lcom/avira/applock/c/a;->b(Z)V

    .line 60
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->a:Lcom/avira/applock/e/j;

    invoke-virtual {v0}, Lcom/avira/applock/e/j;->b()V

    .line 77
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->a:Lcom/avira/applock/e/j;

    invoke-virtual {v0, p1}, Lcom/avira/applock/e/j;->a(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->c()V

    .line 96
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/avira/applock/activities/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 47
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->a:Lcom/avira/applock/e/j;

    invoke-virtual {v0, p1, p2}, Lcom/avira/applock/e/j;->a(II)V

    .line 48
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->a:Lcom/avira/applock/e/j;

    invoke-virtual {v0}, Lcom/avira/applock/e/j;->a()V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/avira/applock/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    new-instance v0, Lcom/avira/applock/e/j;

    invoke-direct {v0, p0}, Lcom/avira/applock/e/j;-><init>(Lcom/avira/applock/activities/RecoverPinViaEmailActivity;)V

    iput-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->a:Lcom/avira/applock/e/j;

    .line 33
    sget v0, Lcom/avira/applock/e;->recover_pin_via_email_activity:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->setContentView(I)V

    .line 36
    new-instance v0, Lcom/avira/applock/c/a;

    invoke-direct {v0}, Lcom/avira/applock/c/a;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->b:Lcom/avira/applock/c/a;

    .line 37
    invoke-virtual {p0}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 39
    sget v1, Lcom/avira/applock/d;->recoverpinviaemail_fragment_holder:I

    iget-object v2, p0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 40
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 41
    return-void
.end method
