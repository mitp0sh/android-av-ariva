.class public final Lcom/avira/applock/e/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FORGOT_PASSWORD_THRESHOLD:I = 0x3

.field private static final REQUEST_CODE_DEFINE_PIN:I = 0xa


# instance fields
.field private a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

.field private b:Landroid/app/ProgressDialog;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/avira/applock/activities/RecoverPinViaPassActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v2, p0, Lcom/avira/applock/e/l;->c:I

    .line 46
    iput-object p1, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    .line 49
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avira/applock/e/l;->b:Landroid/app/ProgressDialog;

    .line 50
    iget-object v0, p0, Lcom/avira/applock/e/l;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 51
    iget-object v0, p0, Lcom/avira/applock/e/l;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    sget v2, Lcom/avira/applock/f;->loading:I

    invoke-virtual {v1, v2}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/avira/applock/e/l;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avira/applock/e/l;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/applock/e/l;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/applock/e/l;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/avira/applock/e/l;)V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    const-class v2, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    invoke-virtual {v1, v0}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/avira/applock/e/l;)Lcom/avira/applock/activities/RecoverPinViaPassActivity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    sget-object v1, Lcom/avira/applock/activities/h;->ENTER_PASSWORD:Lcom/avira/applock/activities/h;

    invoke-virtual {v0, v1}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->a(Lcom/avira/applock/activities/h;)V

    .line 78
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 61
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    invoke-static {v0}, Lcom/avira/applock/d/a;->c(Landroid/content/Context;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    invoke-virtual {v0}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->finish()V

    .line 70
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    invoke-static {v0, p1}, Lcom/avira/applock/d/b;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    const-class v2, Lcom/avira/applock/activities/CreatePinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_create_pin_screen_mode"

    sget-object v2, Lcom/avira/applock/activities/d;->CHANGE_PIN:Lcom/avira/applock/activities/d;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    invoke-static {v0}, Lcom/avira/applock/g/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/avira/applock/e/l;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    new-instance v1, Lcom/avira/applock/e/m;

    invoke-direct {v1, p0}, Lcom/avira/applock/e/m;-><init>(Lcom/avira/applock/e/l;)V

    invoke-static {v0, v1}, Lcom/avira/applock/web/a;->a(Landroid/content/Context;Lcom/avira/applock/common/web/a;)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/avira/applock/common/a/c;

    iget-object v1, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    sget v2, Lcom/avira/applock/f;->internet_network_unavailable:I

    sget v3, Lcom/avira/applock/f;->internet_please_enable_network:I

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/applock/common/a/c;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    invoke-virtual {v1}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/a/c;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    sget v1, Lcom/avira/applock/f;->recover_pin_via_pass_screen_wrong_pass:I

    invoke-static {v0, v1}, Lcom/avira/applock/g/g;->a(Landroid/content/Context;I)V

    .line 201
    iget-object v0, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    invoke-virtual {v0}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->c()V

    .line 204
    iget v0, p0, Lcom/avira/applock/e/l;->c:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 207
    iget v0, p0, Lcom/avira/applock/e/l;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avira/applock/e/l;->c:I

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/avira/applock/e/l;->a:Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    sget-object v1, Lcom/avira/applock/activities/h;->FORGOT_PASSWORD:Lcom/avira/applock/activities/h;

    invoke-virtual {v0, v1}, Lcom/avira/applock/activities/RecoverPinViaPassActivity;->a(Lcom/avira/applock/activities/h;)V

    goto :goto_0
.end method
