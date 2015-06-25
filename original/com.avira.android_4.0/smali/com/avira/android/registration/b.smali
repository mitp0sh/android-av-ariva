.class final Lcom/avira/android/registration/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/registration/BaseRegistrationPresenter;


# direct methods
.method private constructor <init>(Lcom/avira/android/registration/BaseRegistrationPresenter;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/avira/android/registration/b;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/registration/BaseRegistrationPresenter;B)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/avira/android/registration/b;-><init>(Lcom/avira/android/registration/BaseRegistrationPresenter;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const v3, 0x7f080156

    const v2, 0x7f080140

    const/4 v1, 0x0

    .line 242
    const-string v0, "\'%s\' onReceive called with \'%s\' action"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 244
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 245
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 247
    const-string v0, "com.avira.android.ACTION_APPLICATION_REGISTRATION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 249
    const-string v0, "registration_result_data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/common/web/WebResult;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v6

    invoke-static {v6}, Lcom/avira/android/common/web/q;->a(I)Lcom/avira/android/common/web/r;

    move-result-object v6

    sget-object v7, Lcom/avira/android/common/web/r;->Ok:Lcom/avira/android/common/web/r;

    if-ne v6, v7, :cond_2

    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->c()V

    const-string v0, "com.avira.android.ACTION_REGISTRATION_SUCCESSFUL_ADMIN"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/avira/android/antitheft/a;->a(Z)V

    .line 256
    :cond_0
    :goto_0
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    const-string v0, "com.avira.android.action_tag"

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-static {v5}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 261
    :cond_1
    return-void

    .line 249
    :cond_2
    invoke-static {}, Lcom/avira/android/common/web/l;->a()Lcom/avira/android/common/web/l;

    move-result-object v6

    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/avira/android/common/web/l;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/avira/android/registration/b;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    invoke-virtual {v6}, Lcom/avira/android/registration/BaseRegistrationPresenter;->a()V

    :cond_3
    invoke-virtual {v0}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v6

    const/16 v0, 0x38e

    if-ne v6, v0, :cond_4

    const v0, 0x7f08031e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/avira/android/ApplicationService;->i()V

    invoke-static {v6}, Lcom/avira/android/common/web/a;->b(I)Lcom/avira/android/common/web/c;

    move-result-object v6

    sget-object v7, Lcom/avira/android/common/web/c;->UNKNOWN_ERROR:Lcom/avira/android/common/web/c;

    invoke-virtual {v6, v7}, Lcom/avira/android/common/web/c;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/avira/android/utilities/x;->a()Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v0, Lcom/avira/applock/common/a/c;

    iget-object v1, p0, Lcom/avira/android/registration/b;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    iget-object v1, v1, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/registration/b;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    iget-object v2, v2, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/applock/common/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/registration/b;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    iget-object v1, v1, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/avira/applock/common/a/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const v0, 0x7f08014d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/avira/android/registration/b;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    iget-object v2, v2, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v6}, Lcom/avira/android/common/web/c;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/avira/applock/common/a/a;

    invoke-direct {v3, v0, v2, v1}, Lcom/avira/applock/common/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    iget-object v0, p0, Lcom/avira/android/registration/b;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    iget-object v0, v0, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "registrationFailed"

    invoke-virtual {v3, v0, v1}, Lcom/avira/applock/common/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "webResultExceptionFlag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    const-string v1, "com.avira.android.ACTION_SHOW_ERROR_MESSAGE"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "data_error_message_title"

    iget-object v1, p0, Lcom/avira/android/registration/b;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    iget-object v7, v1, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    if-eqz v0, :cond_7

    const v1, 0x7f080159

    :goto_3
    invoke-virtual {v7, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data_error_message_header"

    iget-object v1, p0, Lcom/avira/android/registration/b;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    iget-object v6, v1, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    if-eqz v0, :cond_8

    const v1, 0x7f080158

    :goto_4
    invoke-virtual {v6, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data_error_message_body"

    iget-object v2, p0, Lcom/avira/android/registration/b;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    iget-object v2, v2, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    if-eqz v0, :cond_9

    const v0, 0x7f080157

    :goto_5
    invoke-virtual {v2, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    const v1, 0x7f08012d

    goto :goto_4

    :cond_9
    move v0, v3

    goto :goto_5

    .line 251
    :cond_a
    const-string v0, "com.avira.android.ACTION_APPLICATION_REGISTRATION_ID_UPDATED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/registration/b;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    invoke-static {v0}, Lcom/avira/android/registration/BaseRegistrationPresenter;->a(Lcom/avira/android/registration/BaseRegistrationPresenter;)V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_2
.end method
