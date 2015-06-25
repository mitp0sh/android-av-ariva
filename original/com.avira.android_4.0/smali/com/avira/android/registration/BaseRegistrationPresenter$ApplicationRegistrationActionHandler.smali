.class public Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final ACTION_TAG:Ljava/lang/String; = "com.avira.android.action_tag"

.field public static final SHOW_ERROR_MESSAGE_ACTION:Ljava/lang/String; = "com.avira.android.ACTION_SHOW_ERROR_MESSAGE"

.field private static final SHOW_REGISTRATION_SUCCESSFUL_ACTION:Ljava/lang/String; = "com.avira.android.ACTION_REGISTRATION_SUCCESSFUL_ADMIN"


# instance fields
.field final synthetic a:Lcom/avira/android/registration/BaseRegistrationPresenter;

.field private b:Lcom/avira/android/custom/OEMessageDialogFragment;


# direct methods
.method public constructor <init>(Lcom/avira/android/registration/BaseRegistrationPresenter;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 371
    return-void
.end method

.method static synthetic a(Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;)Lcom/avira/android/custom/OEMessageDialogFragment;
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 386
    const-string v0, "\'%s\' onReceive called with \'%s\' action"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 388
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->i()V

    .line 390
    const-string v1, "com.avira.android.ACTION_REGISTRATION_SUCCESSFUL_ADMIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-static {}, Lcom/avira/android/device/DeviceInfoUpdateService;->a()V

    .line 393
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    invoke-static {v0}, Lcom/avira/android/registration/BaseRegistrationPresenter;->a(Lcom/avira/android/registration/BaseRegistrationPresenter;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    const-string v1, "com.avira.android.ACTION_SHOW_ERROR_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "com.avira.android.action_tag"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.avira.android.ACTION_APPLICATION_REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->e()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 403
    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    invoke-static {v0, p2}, Lcom/avira/android/registration/BaseRegistrationPresenter;->a(Lcom/avira/android/registration/BaseRegistrationPresenter;Landroid/content/Intent;)Landroid/content/Intent;

    .line 405
    :cond_2
    const-string v0, "data_error_message_title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    const-string v1, "data_error_message_body"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    const-string v1, "data_error_message_content_layout"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    sget-object v5, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    .line 409
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 411
    invoke-static {v1}, Lcom/avira/android/custom/z;->valueOf(Ljava/lang/String;)Lcom/avira/android/custom/z;

    move-result-object v5

    .line 413
    :cond_3
    sget-object v1, Lcom/avira/android/custom/aa;->ErrorIcon:Lcom/avira/android/custom/aa;

    .line 414
    const-string v1, "data_error_message_icon"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 417
    const-class v3, Lcom/avira/android/custom/aa;

    invoke-static {v3, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 419
    :cond_4
    sget-object v3, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    .line 420
    const-string v1, "data_error_message_button"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 423
    invoke-static {v1}, Lcom/avira/android/custom/x;->valueOf(Ljava/lang/String;)Lcom/avira/android/custom/x;

    move-result-object v3

    .line 425
    :cond_5
    iget-object v1, p0, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-nez v1, :cond_0

    .line 427
    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    new-instance v1, Lcom/avira/android/registration/a;

    invoke-direct {v1, p0}, Lcom/avira/android/registration/a;-><init>(Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/m;)V

    iget-object v0, p0, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    iget-object v1, p0, Lcom/avira/android/registration/BaseRegistrationPresenter$ApplicationRegistrationActionHandler;->a:Lcom/avira/android/registration/BaseRegistrationPresenter;

    iget-object v1, v1, Lcom/avira/android/registration/BaseRegistrationPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_0
.end method
