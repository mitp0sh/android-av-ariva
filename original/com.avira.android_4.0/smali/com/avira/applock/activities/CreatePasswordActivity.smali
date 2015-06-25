.class public Lcom/avira/applock/activities/CreatePasswordActivity;
.super Lcom/avira/applock/activities/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/c/d;


# static fields
.field public static final EXTRA_CREATE_PASS_SCREEN_MODE:Ljava/lang/String; = "extra_create_pass_screen_mode"


# instance fields
.field private a:Lcom/avira/applock/e/c;

.field private b:Lcom/avira/applock/c/a;

.field private c:Lcom/avira/applock/activities/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/avira/applock/activities/BaseFragmentActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->a:Lcom/avira/applock/e/c;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->setup_recovery_pass_screen_show_password:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->c(I)V

    .line 60
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->d(I)V

    .line 61
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->a(Z)V

    .line 62
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->b(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/avira/applock/activities/CreatePasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_create_pass_screen_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/activities/b;

    .line 67
    if-nez v0, :cond_0

    sget-object v0, Lcom/avira/applock/activities/b;->SETUP_PASSWORD:Lcom/avira/applock/activities/b;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/CreatePasswordActivity;->a(Lcom/avira/applock/activities/b;)V

    .line 68
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 73
    sget v0, Lcom/avira/applock/f;->setup_recovery_pass_screen_show_password:I

    if-ne p1, v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->setup_recovery_pass_screen_hide_password:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->c(I)V

    .line 77
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->e()V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    sget v0, Lcom/avira/applock/f;->setup_recovery_pass_screen_hide_password:I

    if-ne p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->setup_recovery_pass_screen_show_password:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->c(I)V

    .line 83
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->f()V

    goto :goto_0
.end method

.method public final a(Lcom/avira/applock/activities/b;)V
    .locals 5

    .prologue
    .line 111
    iput-object p1, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->c:Lcom/avira/applock/activities/b;

    .line 113
    sget-object v0, Lcom/avira/applock/activities/a;->$SwitchMap$com$avira$applock$activities$CreatePasswordActivity$CreatePasswordScreenMode:[I

    invoke-virtual {p1}, Lcom/avira/applock/activities/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 117
    :pswitch_0
    sget-object v0, Lcom/avira/applock/activities/b;->SETUP_PASSWORD:Lcom/avira/applock/activities/b;

    if-ne p1, v0, :cond_0

    sget v0, Lcom/avira/applock/f;->setup_recovery_pass_screen_title:I

    .line 119
    :goto_1
    sget v1, Lcom/avira/applock/f;->setup_recovery_pass_screen_edittext_hint:I

    invoke-virtual {p0, v1}, Lcom/avira/applock/activities/CreatePasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 122
    iget-object v2, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v2, v0}, Lcom/avira/applock/c/a;->a(I)V

    .line 123
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->a(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->setup_recovery_pass_screen_desc:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->b(I)V

    goto :goto_0

    .line 117
    :cond_0
    sget v0, Lcom/avira/applock/f;->change_recovery_pass_screen_title:I

    goto :goto_1

    .line 128
    :pswitch_1
    sget-object v0, Lcom/avira/applock/activities/b;->CONFIRM_SETUP_PASSWORD:Lcom/avira/applock/activities/b;

    if-ne p1, v0, :cond_1

    sget v0, Lcom/avira/applock/f;->confirm_setup_pass_screen_title:I

    .line 131
    :goto_2
    iget-object v1, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v1, v0}, Lcom/avira/applock/c/a;->a(I)V

    .line 132
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->a()V

    .line 133
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->c()V

    .line 134
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->d()V

    goto :goto_0

    .line 128
    :cond_1
    sget v0, Lcom/avira/applock/f;->confirm_change_recovery_pass_screen_title:I

    goto :goto_2

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->a:Lcom/avira/applock/e/c;

    iget-object v1, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->c:Lcom/avira/applock/activities/b;

    invoke-virtual {v0, p1, v1}, Lcom/avira/applock/e/c;->a(Ljava/lang/String;Lcom/avira/applock/activities/b;)V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/avira/applock/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/avira/applock/e/c;

    invoke-direct {v0, p0}, Lcom/avira/applock/e/c;-><init>(Lcom/avira/applock/activities/CreatePasswordActivity;)V

    iput-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->a:Lcom/avira/applock/e/c;

    .line 45
    sget v0, Lcom/avira/applock/e;->create_password_activity:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/CreatePasswordActivity;->setContentView(I)V

    .line 48
    new-instance v0, Lcom/avira/applock/c/a;

    invoke-direct {v0}, Lcom/avira/applock/c/a;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    .line 49
    invoke-virtual {p0}, Lcom/avira/applock/activities/CreatePasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 51
    sget v1, Lcom/avira/applock/d;->createpassword_fragment_holder:I

    iget-object v2, p0, Lcom/avira/applock/activities/CreatePasswordActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 53
    return-void
.end method
