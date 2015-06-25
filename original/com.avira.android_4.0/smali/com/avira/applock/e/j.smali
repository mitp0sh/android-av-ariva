.class public final Lcom/avira/applock/e/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REQUEST_CODE_DEFINE_PASSWORD:I = 0xb

.field private static final REQUEST_CODE_DEFINE_PIN:I = 0xa


# instance fields
.field private a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/avira/applock/activities/RecoverPinViaEmailActivity;)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    .line 45
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avira/applock/e/j;->b:Landroid/app/ProgressDialog;

    .line 46
    iget-object v0, p0, Lcom/avira/applock/e/j;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 47
    iget-object v0, p0, Lcom/avira/applock/e/j;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    sget v2, Lcom/avira/applock/f;->backend_validating_with_server:I

    invoke-virtual {v1, v2}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avira/applock/d/a;->a(Z)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/avira/applock/e/j;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avira/applock/e/j;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/applock/e/j;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/applock/e/j;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/avira/applock/e/j;)V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    const-class v2, Lcom/avira/applock/activities/CreatePinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_create_pin_screen_mode"

    sget-object v2, Lcom/avira/applock/activities/d;->CHANGE_PIN:Lcom/avira/applock/activities/d;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic c(Lcom/avira/applock/e/j;)Lcom/avira/applock/activities/RecoverPinViaEmailActivity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    invoke-virtual {v1, v0}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public final a(II)V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v1, -0x1

    .line 59
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 61
    if-ne p2, v1, :cond_1

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    const-class v2, Lcom/avira/applock/activities/CreatePasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_create_pass_screen_mode"

    sget-object v2, Lcom/avira/applock/activities/b;->CHANGE_PASSWORD:Lcom/avira/applock/activities/b;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    invoke-virtual {v1, v0, v3}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    invoke-virtual {v0}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->finish()V

    goto :goto_0

    .line 72
    :cond_2
    if-ne p1, v3, :cond_0

    .line 74
    if-ne p2, v1, :cond_3

    .line 77
    iget-object v0, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    invoke-static {v0}, Lcom/avira/applock/d/a;->c(Landroid/content/Context;)V

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avira/applock/d/a;->a(Z)V

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    invoke-virtual {v0}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->finish()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    invoke-static {v0}, Lcom/avira/applock/g/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/avira/applock/e/j;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    new-instance v1, Lcom/avira/applock/e/k;

    invoke-direct {v1, p0}, Lcom/avira/applock/e/k;-><init>(Lcom/avira/applock/e/j;)V

    invoke-static {v0, v1, p1}, Lcom/avira/applock/web/a;->a(Landroid/content/Context;Lcom/avira/applock/common/web/a;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/avira/applock/common/a/c;

    iget-object v1, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    sget v2, Lcom/avira/applock/f;->internet_network_unavailable:I

    sget v3, Lcom/avira/applock/f;->internet_please_enable_network:I

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/applock/common/a/c;-><init>(Landroid/content/Context;II)V

    iget-object v1, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    invoke-virtual {v1}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/a/c;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avira/applock/d/a;->a(Z)V

    .line 108
    iget-object v0, p0, Lcom/avira/applock/e/j;->a:Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    invoke-virtual {v0}, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;->finish()V

    .line 109
    return-void
.end method
