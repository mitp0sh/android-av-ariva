.class public abstract Lcom/avira/android/registration/BaseRegistrationPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/avira/android/custom/BaseFragmentActivity;

.field protected b:Lcom/avira/android/i;

.field protected c:Lcom/avira/android/f/a;

.field private d:Landroid/content/Intent;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/IntentFilter;

.field private g:Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;

.field private h:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    return-void
.end method

.method static synthetic a(Lcom/avira/android/registration/BaseRegistrationPresenter;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->d:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic a(Lcom/avira/android/registration/BaseRegistrationPresenter;)V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/avira/android/registration/BaseRegistrationPresenter;->c()Lcom/avira/android/i;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->b:Lcom/avira/android/i;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->b(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "new_action"

    invoke-virtual {p0}, Lcom/avira/android/registration/BaseRegistrationPresenter;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    return-void
.end method

.method protected static j()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "settingShowEulaScreen"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 170
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->e()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 172
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 175
    const-string v1, "data_error_message_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    const-string v2, "data_error_message_header"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    const-string v3, "data_error_message_body"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    const-string v4, "data_error_message_content_layout"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 184
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.avira.android.ACTION_SHOW_ERROR_MESSAGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->d:Landroid/content/Intent;

    .line 186
    iget-object v4, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->d:Landroid/content/Intent;

    const-string v5, "data_error_message_title"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->d:Landroid/content/Intent;

    const-string v4, "data_error_message_header"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->d:Landroid/content/Intent;

    const-string v2, "data_error_message_body"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->d:Landroid/content/Intent;

    const-string v2, "data_error_message_content_layout"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :cond_0
    return-void
.end method

.method protected abstract b()V
.end method

.method protected abstract c()Lcom/avira/android/i;
.end method

.method protected abstract d()I
.end method

.method protected final e()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;

    invoke-direct {v0, p0}, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;-><init>(Lcom/avira/android/registration/BaseRegistrationPresenter;)V

    iput-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->g:Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->h:Landroid/content/IntentFilter;

    .line 103
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->h:Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_REGISTRATION_SUCCESSFUL_ADMIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->h:Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_SHOW_ERROR_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 114
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->g:Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final g()V
    .locals 4

    .prologue
    .line 123
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 124
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->g:Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;

    iget-object v2, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->h:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const-string v1, "resetApplicationFlag"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const-string v1, "resetApplicationFlag"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.ACTION_SHOW_ERROR_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "data_error_message_title"

    iget-object v2, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080141

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data_error_message_header"

    iget-object v2, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080142

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data_error_message_body"

    iget-object v2, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080143

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data_error_message_icon"

    sget-object v2, Lcom/avira/android/custom/aa;->WarningIcon:Lcom/avira/android/custom/aa;

    invoke-virtual {v2}, Lcom/avira/android/custom/aa;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.avira.android.action_tag"

    const-string v2, "resetApplicationFlag"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->d:Landroid/content/Intent;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->d:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->d:Landroid/content/Intent;

    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/avira/android/registration/BaseRegistrationPresenter;->b()V

    goto :goto_0
.end method

.method protected final h()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->b:Lcom/avira/android/i;

    invoke-virtual {v1}, Lcom/avira/android/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method protected final i()V
    .locals 2

    .prologue
    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->e:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final k()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->e:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/avira/android/registration/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avira/android/registration/b;-><init>(Lcom/avira/android/registration/BaseRegistrationPresenter;B)V

    iput-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->e:Landroid/content/BroadcastReceiver;

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->f:Landroid/content/IntentFilter;

    .line 205
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->f:Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_APPLICATION_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->f:Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_APPLICATION_REGISTRATION_ID_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->f:Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_APPLICATION_REGISTRATION_NO_FLAG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->e:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->f:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    :cond_0
    return-void
.end method

.method protected final l()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/avira/android/f/a;

    invoke-direct {v0}, Lcom/avira/android/f/a;-><init>()V

    iput-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter;->c:Lcom/avira/android/f/a;

    .line 218
    return-void
.end method
