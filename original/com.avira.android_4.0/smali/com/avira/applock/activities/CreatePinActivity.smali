.class public Lcom/avira/applock/activities/CreatePinActivity;
.super Lcom/avira/applock/activities/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/c/d;


# static fields
.field public static final EXTRA_CREATE_PIN_SCREEN_MODE:Ljava/lang/String; = "extra_create_pin_screen_mode"


# instance fields
.field private a:Lcom/avira/applock/e/f;

.field private b:Lcom/avira/applock/c/a;

.field private c:Lcom/avira/applock/activities/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/avira/applock/activities/BaseFragmentActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->a:Lcom/avira/applock/e/f;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->setup_pin_screen_show_pin:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->c(I)V

    .line 60
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->d(I)V

    .line 61
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->a()V

    .line 62
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v2}, Lcom/avira/applock/c/a;->a(Z)V

    .line 63
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v2}, Lcom/avira/applock/c/a;->b(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/avira/applock/activities/CreatePinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_create_pin_screen_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/activities/d;

    .line 68
    if-nez v0, :cond_0

    sget-object v0, Lcom/avira/applock/activities/d;->SETUP_PIN:Lcom/avira/applock/activities/d;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/CreatePinActivity;->a(Lcom/avira/applock/activities/d;)V

    .line 69
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 74
    sget v0, Lcom/avira/applock/f;->setup_pin_screen_show_pin:I

    if-ne p1, v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->setup_pin_screen_hide_pin:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->c(I)V

    .line 78
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->e()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    sget v0, Lcom/avira/applock/f;->setup_pin_screen_hide_pin:I

    if-ne p1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    sget v1, Lcom/avira/applock/f;->setup_pin_screen_show_pin:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->c(I)V

    .line 84
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->f()V

    goto :goto_0
.end method

.method public final a(Lcom/avira/applock/activities/d;)V
    .locals 5

    .prologue
    .line 112
    iput-object p1, p0, Lcom/avira/applock/activities/CreatePinActivity;->c:Lcom/avira/applock/activities/d;

    .line 114
    sget-object v0, Lcom/avira/applock/activities/c;->$SwitchMap$com$avira$applock$activities$CreatePinActivity$CreatePinScreenMode:[I

    invoke-virtual {p1}, Lcom/avira/applock/activities/d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 118
    :pswitch_0
    sget-object v0, Lcom/avira/applock/activities/d;->SETUP_PIN:Lcom/avira/applock/activities/d;

    if-ne p1, v0, :cond_0

    sget v0, Lcom/avira/applock/f;->setup_pin_screen_title:I

    .line 120
    :goto_1
    sget v1, Lcom/avira/applock/f;->setup_pin_screen_edittext_hint:I

    invoke-virtual {p0, v1}, Lcom/avira/applock/activities/CreatePinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v2, v0}, Lcom/avira/applock/c/a;->a(I)V

    .line 124
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v1}, Lcom/avira/applock/c/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    sget v0, Lcom/avira/applock/f;->change_pin_screen_title:I

    goto :goto_1

    .line 128
    :pswitch_1
    sget-object v0, Lcom/avira/applock/activities/d;->CONFIRM_SETUP_PIN:Lcom/avira/applock/activities/d;

    if-ne p1, v0, :cond_1

    sget v0, Lcom/avira/applock/f;->confirm_setup_pin_screen_title:I

    .line 131
    :goto_2
    iget-object v1, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v1, v0}, Lcom/avira/applock/c/a;->a(I)V

    .line 132
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->c()V

    .line 133
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0}, Lcom/avira/applock/c/a;->d()V

    goto :goto_0

    .line 128
    :cond_1
    sget v0, Lcom/avira/applock/f;->confirm_change_pin_screen_title:I

    goto :goto_2

    .line 114
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
    .line 96
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->a:Lcom/avira/applock/e/f;

    iget-object v1, p0, Lcom/avira/applock/activities/CreatePinActivity;->c:Lcom/avira/applock/activities/d;

    invoke-virtual {v0, p1, v1}, Lcom/avira/applock/e/f;->a(Ljava/lang/String;Lcom/avira/applock/activities/d;)V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/avira/applock/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Lcom/avira/applock/e/f;

    invoke-direct {v0, p0}, Lcom/avira/applock/e/f;-><init>(Lcom/avira/applock/activities/CreatePinActivity;)V

    iput-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->a:Lcom/avira/applock/e/f;

    .line 45
    sget v0, Lcom/avira/applock/e;->create_pin_activity:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/CreatePinActivity;->setContentView(I)V

    .line 48
    new-instance v0, Lcom/avira/applock/c/a;

    invoke-direct {v0}, Lcom/avira/applock/c/a;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    .line 49
    invoke-virtual {p0}, Lcom/avira/applock/activities/CreatePinActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 51
    sget v1, Lcom/avira/applock/d;->createpin_fragment_holder:I

    iget-object v2, p0, Lcom/avira/applock/activities/CreatePinActivity;->b:Lcom/avira/applock/c/a;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 53
    return-void
.end method
