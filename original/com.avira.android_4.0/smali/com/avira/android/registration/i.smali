.class public final Lcom/avira/android/registration/i;
.super Lcom/avira/android/registration/BaseRegistrationPresenter;
.source "SourceFile"


# instance fields
.field private d:Lcom/avira/android/registration/f;


# direct methods
.method public constructor <init>(Lcom/avira/android/registration/f;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/avira/android/registration/BaseRegistrationPresenter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/registration/i;->d:Lcom/avira/android/registration/f;

    .line 30
    sget-object v0, Lcom/avira/android/i;->ACTION_LOGIN_EXIT:Lcom/avira/android/i;

    iput-object v0, p0, Lcom/avira/android/registration/i;->b:Lcom/avira/android/i;

    .line 31
    iput-object p1, p0, Lcom/avira/android/registration/i;->d:Lcom/avira/android/registration/f;

    .line 32
    iget-object v0, p0, Lcom/avira/android/registration/i;->d:Lcom/avira/android/registration/f;

    invoke-interface {v0}, Lcom/avira/android/registration/f;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/registration/i;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 33
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avira/android/registration/i;->d:Lcom/avira/android/registration/f;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/avira/android/registration/f;->a(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Lcom/avira/android/device/a;->j()Ljava/util/List;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/avira/android/registration/i;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f030043

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 112
    iget-object v0, p0, Lcom/avira/android/registration/i;->d:Lcom/avira/android/registration/f;

    invoke-interface {v0, v1}, Lcom/avira/android/registration/f;->a(Landroid/widget/ArrayAdapter;)V

    .line 113
    return-void
.end method

.method protected final c()Lcom/avira/android/i;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/avira/android/i;->ACTION_LOGIN_OK:Lcom/avira/android/i;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0x3ed

    return v0
.end method

.method public final m()V
    .locals 0

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/avira/android/registration/i;->l()V

    .line 41
    invoke-virtual {p0}, Lcom/avira/android/registration/i;->k()V

    .line 43
    invoke-virtual {p0}, Lcom/avira/android/registration/i;->e()V

    .line 44
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/avira/android/i;->ACTION_LOGIN_EXIT:Lcom/avira/android/i;

    iput-object v0, p0, Lcom/avira/android/registration/i;->b:Lcom/avira/android/i;

    .line 52
    iget-object v0, p0, Lcom/avira/android/registration/i;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 53
    return-void
.end method

.method public final o()V
    .locals 5

    .prologue
    .line 60
    invoke-static {}, Lcom/avira/android/registration/i;->j()V

    .line 61
    iget-object v0, p0, Lcom/avira/android/registration/i;->d:Lcom/avira/android/registration/f;

    invoke-interface {v0}, Lcom/avira/android/registration/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/avira/android/registration/i;->c:Lcom/avira/android/f/a;

    invoke-static {v0}, Lcom/avira/android/f/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/registration/i;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v3, p0, Lcom/avira/android/registration/i;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v4, 0x7f08014e

    invoke-virtual {v3, v4}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/avira/android/utilities/x;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/registration/i;->d:Lcom/avira/android/registration/f;

    invoke-interface {v2}, Lcom/avira/android/registration/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/avira/android/registration/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 74
    new-instance v0, Lcom/avira/applock/common/a/c;

    iget-object v1, p0, Lcom/avira/android/registration/i;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v2, 0x7f080140

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/registration/i;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080156

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/applock/common/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/registration/i;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/avira/applock/common/a/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/avira/android/registration/i;->q()V

    goto :goto_0
.end method

.method public final p()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avira/android/registration/i;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f080120

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/registration/i;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v2, 0x7f0800bb

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/ak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/avira/android/registration/i;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/avira/android/registration/i;->c:Lcom/avira/android/f/a;

    iget-object v0, p0, Lcom/avira/android/registration/i;->d:Lcom/avira/android/registration/f;

    invoke-interface {v0}, Lcom/avira/android/registration/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/f/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 127
    :goto_0
    iget-object v1, p0, Lcom/avira/android/registration/i;->d:Lcom/avira/android/registration/f;

    invoke-interface {v1, v0}, Lcom/avira/android/registration/f;->a(Z)V

    .line 128
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
