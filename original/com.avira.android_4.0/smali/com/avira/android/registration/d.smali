.class public final Lcom/avira/android/registration/d;
.super Lcom/avira/android/registration/BaseRegistrationPresenter;
.source "SourceFile"


# instance fields
.field private d:Lcom/avira/android/registration/e;

.field private e:Lcom/avira/android/f/b;


# direct methods
.method public constructor <init>(Lcom/avira/android/registration/e;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/avira/android/registration/BaseRegistrationPresenter;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    .line 34
    sget-object v0, Lcom/avira/android/i;->ACTION_CREATE_ACCOUNT_EXIT:Lcom/avira/android/i;

    iput-object v0, p0, Lcom/avira/android/registration/d;->b:Lcom/avira/android/i;

    .line 35
    iput-object p1, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    .line 36
    iget-object v0, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v0}, Lcom/avira/android/registration/e;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/avira/android/registration/e;->a(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/avira/android/registration/e;->b(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected final b()V
    .locals 4

    .prologue
    .line 124
    invoke-static {}, Lcom/avira/android/device/a;->j()Ljava/util/List;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f030043

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 127
    iget-object v0, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v0, v1}, Lcom/avira/android/registration/e;->a(Landroid/widget/ArrayAdapter;)V

    .line 128
    return-void
.end method

.method protected final c()Lcom/avira/android/i;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/avira/android/i;->ACTION_CREATE_ACCOUNT_OK:Lcom/avira/android/i;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 191
    const/16 v0, 0x3ec

    return v0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/avira/android/registration/d;->l()V

    .line 45
    new-instance v0, Lcom/avira/android/f/b;

    invoke-direct {v0}, Lcom/avira/android/f/b;-><init>()V

    iput-object v0, p0, Lcom/avira/android/registration/d;->e:Lcom/avira/android/f/b;

    .line 46
    invoke-virtual {p0}, Lcom/avira/android/registration/d;->k()V

    .line 47
    invoke-virtual {p0}, Lcom/avira/android/registration/d;->e()V

    .line 48
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/avira/android/i;->ACTION_CREATE_ACCOUNT_EXIT:Lcom/avira/android/i;

    iput-object v0, p0, Lcom/avira/android/registration/d;->b:Lcom/avira/android/i;

    .line 56
    iget-object v0, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 57
    return-void
.end method

.method public final o()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-static {}, Lcom/avira/android/registration/d;->j()V

    .line 65
    iget-object v0, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v0}, Lcom/avira/android/registration/e;->b()Ljava/lang/String;

    move-result-object v3

    .line 66
    iget-object v0, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v0}, Lcom/avira/android/registration/e;->c()Ljava/lang/String;

    move-result-object v4

    .line 67
    iget-object v0, p0, Lcom/avira/android/registration/d;->c:Lcom/avira/android/f/a;

    iget-object v0, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v0}, Lcom/avira/android/registration/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/f/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avira/android/registration/d;->e:Lcom/avira/android/f/b;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x5

    if-lt v0, v5, :cond_3

    const/16 v5, 0x64

    if-gt v0, v5, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avira/android/registration/d;->e:Lcom/avira/android/f/b;

    invoke-virtual {v0, v3}, Lcom/avira/android/f/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v3, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v4, 0x7f08014e

    invoke-virtual {v3, v4}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/avira/android/utilities/x;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v1}, Lcom/avira/android/registration/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v2}, Lcom/avira/android/registration/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/registration/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_1
    return-void

    .line 81
    :cond_1
    new-instance v0, Lcom/avira/applock/common/a/c;

    iget-object v1, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080140

    invoke-virtual {v1, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v4, 0x7f080156

    invoke-virtual {v3, v4}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lcom/avira/applock/common/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    iget-object v1, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/avira/applock/common/a/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/avira/android/registration/d;->r()V

    .line 90
    invoke-virtual {p0}, Lcom/avira/android/registration/d;->q()V

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v0, v1}, Lcom/avira/android/registration/e;->c(Z)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final p()V
    .locals 5

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.ACTION_SHOW_ERROR_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v1, "data_error_message_title"

    iget-object v2, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080130

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "data_error_message_body"

    iget-object v2, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f0800ba

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v4, 0x7f0800c3

    invoke-virtual {v3, v4}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avira/android/utilities/ak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "data_error_message_button"

    sget-object v2, Lcom/avira/android/custom/x;->CloseButton:Lcom/avira/android/custom/x;

    invoke-virtual {v2}, Lcom/avira/android/custom/x;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "data_error_message_content_layout"

    sget-object v2, Lcom/avira/android/custom/z;->WebviewContent:Lcom/avira/android/custom/z;

    invoke-virtual {v2}, Lcom/avira/android/custom/z;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/avira/android/registration/d;->c:Lcom/avira/android/f/a;

    iget-object v0, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v0}, Lcom/avira/android/registration/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/f/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/avira/android/registration/e;->a(Z)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/avira/android/registration/e;->a(Z)V

    goto :goto_0
.end method

.method public final r()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 154
    iget-object v2, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v2}, Lcom/avira/android/registration/e;->b()Ljava/lang/String;

    move-result-object v3

    .line 155
    iget-object v2, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v2}, Lcom/avira/android/registration/e;->c()Ljava/lang/String;

    move-result-object v4

    .line 156
    iget-object v2, p0, Lcom/avira/android/registration/d;->e:Lcom/avira/android/f/b;

    invoke-virtual {v2, v3}, Lcom/avira/android/f/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v2, v0}, Lcom/avira/android/registration/e;->b(Z)V

    .line 159
    iget-object v2, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    iget-object v5, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v6, 0x7f080198

    invoke-virtual {v5, v6}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/avira/android/registration/e;->c(Ljava/lang/String;)V

    .line 178
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 179
    :goto_1
    iget-object v1, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v1, v0}, Lcom/avira/android/registration/e;->c(Z)V

    .line 180
    return-void

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/avira/android/registration/d;->e:Lcom/avira/android/f/b;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_5

    move v2, v0

    :goto_2
    if-nez v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v2, v0}, Lcom/avira/android/registration/e;->b(Z)V

    .line 165
    iget-object v2, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    iget-object v5, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v6, 0x7f080193

    invoke-virtual {v5, v6}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/avira/android/registration/e;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/avira/android/registration/d;->e:Lcom/avira/android/f/b;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x64

    if-gt v2, v5, :cond_4

    move v2, v0

    :goto_3
    if-nez v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v2, v0}, Lcom/avira/android/registration/e;->b(Z)V

    .line 171
    iget-object v2, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    iget-object v5, p0, Lcom/avira/android/registration/d;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v6, 0x7f080194

    invoke-virtual {v5, v6}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/avira/android/registration/e;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/avira/android/registration/d;->d:Lcom/avira/android/registration/e;

    invoke-interface {v2, v1}, Lcom/avira/android/registration/e;->b(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 178
    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_2
.end method
