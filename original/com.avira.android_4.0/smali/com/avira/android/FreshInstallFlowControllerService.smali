.class public Lcom/avira/android/FreshInstallFlowControllerService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final NEW_ACTION:Ljava/lang/String; = "new_action"

.field private static final TAG:Ljava/lang/String; = "FreshInstallFlowControllerService"

.field private static e:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/avira/android/k;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/content/IntentFilter;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/FreshInstallFlowControllerService;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->c:Landroid/content/BroadcastReceiver;

    .line 50
    iput-boolean v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->f:Z

    .line 54
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/avira/android/k;

    invoke-direct {v0}, Lcom/avira/android/k;-><init>()V

    iput-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->b:Lcom/avira/android/k;

    .line 56
    sput-boolean v1, Lcom/avira/android/FreshInstallFlowControllerService;->e:Z

    .line 57
    invoke-direct {p0}, Lcom/avira/android/FreshInstallFlowControllerService;->c()V

    .line 59
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->l()V

    .line 60
    return-void
.end method

.method private static a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 291
    const v0, 0x8000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 297
    :goto_0
    return-object p0

    .line 295
    :cond_0
    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.welcome.ACTION_SIGNAL_WELCOME_EXIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->b:Lcom/avira/android/k;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "app_startup_current_state"

    invoke-static {v0, v1, p1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/avira/android/FreshInstallFlowControllerService;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/avira/android/FreshInstallFlowControllerService;->d()V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/FreshInstallFlowControllerService;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/avira/android/FreshInstallFlowControllerService;->a(I)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 309
    sget-boolean v0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a:Z

    if-nez v0, :cond_1

    .line 311
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    const-class v2, Lcom/avira/android/welcome/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    invoke-static {v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 313
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 314
    if-eqz p1, :cond_0

    .line 316
    const-string v1, "com.avira.android.welcome.WELCOME_BUNDLE_TAG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 320
    :cond_1
    return-void
.end method

.method private b(I)V
    .locals 4

    .prologue
    const/16 v0, 0x3e9

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    .line 204
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 208
    invoke-direct {p0, v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(I)V

    move p1, v0

    .line 210
    :cond_0
    invoke-static {}, Lcom/avira/android/iab/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    const/16 v0, 0x3ef

    invoke-direct {p0, v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(I)V

    .line 213
    invoke-static {}, Lcom/avira/android/iab/s;->f()V

    .line 214
    invoke-direct {p0}, Lcom/avira/android/FreshInstallFlowControllerService;->f()V

    .line 215
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->k()V

    .line 244
    :goto_0
    return-void

    .line 218
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 221
    :pswitch_0
    iget-boolean v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->f:Z

    invoke-direct {p0, v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Z)V

    goto :goto_0

    .line 224
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Z)V

    .line 225
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    const-class v2, Lcom/avira/android/registration/CreateAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Z)V

    .line 229
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    const-class v2, Lcom/avira/android/registration/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 232
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Z)V

    .line 233
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    const-class v2, Lcom/avira/android/userprofile/CreateUserDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 236
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    const-class v2, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 239
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    const-class v2, Lcom/avira/android/firstscan/FirstVDFDownloadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 242
    :pswitch_6
    invoke-direct {p0}, Lcom/avira/android/FreshInstallFlowControllerService;->f()V

    .line 243
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->k()V

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avira/android/FreshInstallFlowControllerService;->e:Z

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;

    invoke-direct {v0, p0}, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;-><init>(Lcom/avira/android/FreshInstallFlowControllerService;)V

    iput-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->c:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->d:Landroid/content/IntentFilter;

    .line 132
    invoke-static {}, Lcom/avira/android/i;->b()Ljava/util/ArrayList;

    move-result-object v2

    .line 133
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 135
    iget-object v3, p0, Lcom/avira/android/FreshInstallFlowControllerService;->d:Landroid/content/IntentFilter;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->c:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/avira/android/FreshInstallFlowControllerService;->d:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_1
    :goto_1
    return-void

    .line 143
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    const-string v1, "FreshInstallFlowControllerService"

    const-string v2, "Unexpected Error in Message Registration"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->c:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/avira/android/FreshInstallFlowControllerService;->d:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->i()V

    .line 161
    sget-boolean v1, Lcom/avira/android/FreshInstallFlowControllerService;->e:Z

    if-nez v1, :cond_0

    .line 163
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "resetApplicationFlag"

    invoke-static {v1, v2, v0}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->f:Z

    iget-boolean v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->f:Z

    if-eqz v1, :cond_1

    .line 166
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/avira/android/FreshInstallFlowControllerService;->b(I)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/registration/j;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/avira/android/FreshInstallFlowControllerService;->e()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 174
    const/16 v0, 0x3ef

    invoke-direct {p0, v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(I)V

    .line 176
    :cond_3
    invoke-static {}, Lcom/avira/android/FreshInstallFlowControllerService;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/avira/android/FreshInstallFlowControllerService;->b(I)V

    goto :goto_0
.end method

.method private static e()I
    .locals 3

    .prologue
    .line 183
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "app_startup_current_state"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    const-class v2, Lcom/avira/android/dashboard/DashboardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    invoke-static {v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 329
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 331
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "FreshInstallFlowControllerService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "FreshInstallFlowControllerService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "FreshInstallFlowControllerService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :goto_0
    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->a()Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->dismiss()V

    .line 112
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avira/android/FreshInstallFlowControllerService;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->c:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "FreshInstallFlowControllerService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/avira/android/vdfupdate/i;->a(Landroid/content/Context;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/sauth/SauthApiIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/avira/android/FreshInstallFlowControllerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    if-eqz p1, :cond_0

    const-string v0, "new_action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "new_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(I)V

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/avira/android/FreshInstallFlowControllerService;->d()V

    .line 90
    const/4 v0, 0x1

    return v0
.end method
