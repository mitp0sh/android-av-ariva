.class public Lcom/avira/android/welcome/WelcomeActivityPresenter$ErrorActionHandler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

.field private b:Lcom/avira/android/custom/OEMessageDialogFragment;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 435
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->i()V

    .line 438
    const-string v1, "com.avira.android.ACTION_SHOW_ERROR_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    const-string v0, "data_error_message_title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    const-string v1, "data_error_message_body"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 442
    const-string v1, "data_error_message_content_layout"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    sget-object v5, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    .line 444
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 446
    invoke-static {v1}, Lcom/avira/android/custom/z;->valueOf(Ljava/lang/String;)Lcom/avira/android/custom/z;

    move-result-object v5

    .line 448
    :cond_0
    const-string v1, "data_error_message_stop_application"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 451
    sget-object v1, Lcom/avira/android/custom/aa;->ErrorIcon:Lcom/avira/android/custom/aa;

    .line 452
    const-string v1, "data_error_message_icon"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 455
    const-class v3, Lcom/avira/android/custom/aa;

    invoke-static {v3, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 458
    :cond_1
    sget-object v3, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    .line 459
    const-string v1, "data_error_message_button"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 462
    invoke-static {v1}, Lcom/avira/android/custom/x;->valueOf(Ljava/lang/String;)Lcom/avira/android/custom/x;

    move-result-object v3

    .line 465
    :cond_2
    iget-object v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter$ErrorActionHandler;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-nez v1, :cond_3

    .line 467
    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter$ErrorActionHandler;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    .line 469
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter$ErrorActionHandler;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    iget-object v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter$ErrorActionHandler;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-static {v1}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Lcom/avira/android/welcome/WelcomeActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 472
    :cond_3
    return-void
.end method
