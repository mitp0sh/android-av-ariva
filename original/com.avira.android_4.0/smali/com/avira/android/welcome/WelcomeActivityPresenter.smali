.class public Lcom/avira/android/welcome/WelcomeActivityPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PAGE_NUMBER_TAG:Ljava/lang/String; = "page_number_tag"

.field public static final PREFS_AUTOLOGIN:Ljava/lang/String; = "user_auto_logged_in"

.field private static final TAG:Ljava/lang/String;

.field public static final WELCOME_TRIGGER_RESET_TAG:Ljava/lang/String; = "com.avira.android.welcome.WELCOME_BUNDLE_TAG"

.field public static a:Z


# instance fields
.field private b:I

.field private final c:Lcom/avira/android/custom/BaseFragmentActivity;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/content/IntentFilter;

.field private f:Lcom/avira/android/i;

.field private g:Lcom/avira/android/welcome/a;

.field private h:Lcom/avira/android/custom/OEMessageDialogFragment;

.field private final i:Landroid/support/v4/view/aj;

.field private final j:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final k:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/avira/android/welcome/a;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->d:Landroid/content/BroadcastReceiver;

    .line 64
    sget-object v0, Lcom/avira/android/i;->ACTION_WELCOME_EXIT:Lcom/avira/android/i;

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->f:Lcom/avira/android/i;

    .line 65
    iput-object v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->g:Lcom/avira/android/welcome/a;

    .line 75
    new-instance v0, Lcom/avira/android/welcome/e;

    invoke-direct {v0, p0}, Lcom/avira/android/welcome/e;-><init>(Lcom/avira/android/welcome/WelcomeActivityPresenter;)V

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->k:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 93
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 96
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->k:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 98
    iput-object p1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->g:Lcom/avira/android/welcome/a;

    .line 99
    invoke-interface {p1}, Lcom/avira/android/welcome/a;->a()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 101
    iput v4, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->b:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f020017

    const v3, 0x7f080265

    const v5, 0x7f080266

    invoke-static {v2, v3, v5}, Lcom/avira/android/welcome/d;->a(III)Lcom/avira/android/welcome/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f020015

    const v3, 0x7f080267

    const v5, 0x7f080268

    invoke-static {v2, v3, v5}, Lcom/avira/android/welcome/d;->a(III)Lcom/avira/android/welcome/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f020012

    const v3, 0x7f080269

    const v5, 0x7f08026a

    invoke-static {v2, v3, v5}, Lcom/avira/android/welcome/d;->a(III)Lcom/avira/android/welcome/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v2, Lcom/avira/android/welcome/h;

    iget-object v3, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/avira/android/welcome/h;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v2, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->i:Landroid/support/v4/view/aj;

    .line 105
    iget-object v2, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->g:Lcom/avira/android/welcome/a;

    iget-object v3, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->i:Landroid/support/v4/view/aj;

    invoke-interface {v2, v3}, Lcom/avira/android/welcome/a;->a(Landroid/support/v4/view/aj;)V

    .line 106
    iget-object v2, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->g:Lcom/avira/android/welcome/a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/avira/android/welcome/a;->b(I)V

    .line 107
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->g:Lcom/avira/android/welcome/a;

    invoke-interface {v0, v4}, Lcom/avira/android/welcome/a;->a(I)V

    .line 109
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avira/android/welcome/WelcomeActivityPresenter$WelcomeActionMessageReceiver;

    invoke-direct {v0, p0}, Lcom/avira/android/welcome/WelcomeActivityPresenter$WelcomeActionMessageReceiver;-><init>(Lcom/avira/android/welcome/WelcomeActivityPresenter;)V

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->d:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->e:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->e:Landroid/content/IntentFilter;

    const-string v2, "com.avira.android.welcome.ACTION_SIGNAL_WELCOME_EXIT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v2, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->d:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->e:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->g:Lcom/avira/android/welcome/a;

    invoke-interface {v0}, Lcom/avira/android/welcome/a;->b()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "com.avira.android.welcome.WELCOME_BUNDLE_TAG"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.avira.android.welcome.WELCOME_BUNDLE_TAG"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "resetApplicationFlag"

    invoke-static {v2, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f080141

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f080143

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    sget-object v3, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    sget-object v6, Lcom/avira/android/custom/aa;->ErrorIcon:Lcom/avira/android/custom/aa;

    sget-object v6, Lcom/avira/android/custom/aa;->WarningIcon:Lcom/avira/android/custom/aa;

    invoke-virtual {v6}, Lcom/avira/android/custom/aa;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-class v7, Lcom/avira/android/custom/aa;

    invoke-static {v7, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    :cond_1
    iget-object v6, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->h:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-nez v6, :cond_2

    invoke-static/range {v0 .. v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->h:Lcom/avira/android/custom/OEMessageDialogFragment;

    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->h:Lcom/avira/android/custom/OEMessageDialogFragment;

    iget-object v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 112
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/avira/android/welcome/WelcomeActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    return-object v0
.end method

.method private a(Lcom/avira/android/i;)V
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->b(Z)V

    .line 283
    invoke-direct {p0, p1}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->b(Lcom/avira/android/i;)V

    .line 284
    return-void
.end method

.method static synthetic a(Lcom/avira/android/welcome/WelcomeActivityPresenter;Lcom/avira/android/i;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Lcom/avira/android/i;)V

    return-void
.end method

.method static synthetic b(Lcom/avira/android/welcome/WelcomeActivityPresenter;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->j:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private b(Lcom/avira/android/i;)V
    .locals 2

    .prologue
    .line 288
    iput-object p1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->f:Lcom/avira/android/i;

    .line 289
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->f:Lcom/avira/android/i;

    invoke-virtual {v1}, Lcom/avira/android/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 291
    return-void
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->g:Lcom/avira/android/welcome/a;

    invoke-interface {v0, p1}, Lcom/avira/android/welcome/a;->a(Z)V

    .line 296
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->g:Lcom/avira/android/welcome/a;

    invoke-interface {v0, p1}, Lcom/avira/android/welcome/a;->b(Z)V

    .line 297
    return-void
.end method

.method static synthetic c(Lcom/avira/android/welcome/WelcomeActivityPresenter;)Lcom/avira/android/welcome/a;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->g:Lcom/avira/android/welcome/a;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/avira/android/i;->ACTION_SKIP_LOGIN:Lcom/avira/android/i;

    invoke-direct {p0, v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Lcom/avira/android/i;)V

    .line 278
    return-void
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->g:Lcom/avira/android/welcome/a;

    invoke-interface {v0, p1}, Lcom/avira/android/welcome/a;->c(I)V

    .line 148
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->g:Lcom/avira/android/welcome/a;

    invoke-interface {v0, p1}, Lcom/avira/android/welcome/a;->a(I)V

    .line 149
    return-void
.end method

.method final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 306
    const-string v0, "page_number_tag"

    iget v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    return-void
.end method

.method final a(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 203
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v0, v2, :cond_1

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 206
    new-instance v0, Lcom/avira/applock/common/a/a;

    iget-object v2, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080159

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v4, 0x7f080152

    invoke-virtual {v3, v4}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/avira/applock/common/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    iget-object v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/avira/applock/common/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 266
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 203
    goto :goto_0

    .line 212
    :cond_1
    invoke-static {}, Lcom/avira/android/utilities/x;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    new-instance v0, Lcom/avira/android/welcome/f;

    invoke-direct {v0, p0, p1}, Lcom/avira/android/welcome/f;-><init>(Lcom/avira/android/welcome/WelcomeActivityPresenter;Z)V

    .line 257
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    iget-object v3, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v4, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v5, 0x7f080144

    invoke-virtual {v4, v5}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    new-instance v2, Lcom/avira/android/device/g;

    invoke-direct {v2, v0}, Lcom/avira/android/device/g;-><init>(Lcom/avira/android/utilities/y;)V

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/avira/android/device/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 263
    :cond_2
    new-instance v0, Lcom/avira/applock/common/a/c;

    iget-object v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v2, 0x7f080140

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080156

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/applock/common/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/a/c;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_1
.end method

.method final b()V
    .locals 5

    .prologue
    .line 324
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const-string v1, "prefs_token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v3, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v4, 0x7f080263

    invoke-virtual {v3, v4}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/utilities/x;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/avira/android/common/web/d;->a()Lcom/avira/android/common/web/d;

    move-result-object v1

    new-instance v2, Lcom/avira/android/welcome/g;

    invoke-direct {v2, p0}, Lcom/avira/android/welcome/g;-><init>(Lcom/avira/android/welcome/WelcomeActivityPresenter;)V

    invoke-virtual {v1, v0, v2}, Lcom/avira/android/common/web/d;->a(Ljava/lang/String;Lcom/avira/applock/common/web/a;)V

    .line 326
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->b(Z)V

    .line 328
    return-void

    .line 324
    :cond_1
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    new-instance v0, Lcom/avira/applock/common/a/c;

    iget-object v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v2, 0x7f080140

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080156

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/applock/common/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/a/c;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method final b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 316
    const-string v0, "page_number_tag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->b:I

    .line 317
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/avira/android/i;->ACTION_WELCOME_EXIT:Lcom/avira/android/i;

    invoke-direct {p0, v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->b(Lcom/avira/android/i;)V

    .line 385
    return-void
.end method

.method final d()V
    .locals 2

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->d:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final declared-synchronized e()V
    .locals 1

    .prologue
    .line 403
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized f()V
    .locals 1

    .prologue
    .line 408
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
