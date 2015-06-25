.class public Lcom/avira/android/dashboard/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PREMIUM_RESULT_ACTION:Ljava/lang/String; = "com.avira.android.dashboard.ACTION_PREMIUM_RESULT"

.field private static final TAG:Ljava/lang/String;

.field private static c:Lcom/avira/android/dashboard/u;

.field private static f:Ljava/lang/String;


# instance fields
.field private a:Lcom/avira/android/dashboard/y;

.field private final b:Lcom/avira/android/custom/BaseFragmentActivity;

.field private d:Lcom/avira/android/dashboard/s;

.field private e:Lcom/avira/android/dashboard/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/avira/android/dashboard/u;->REFRESH_INITIAL:Lcom/avira/android/dashboard/u;

    sput-object v0, Lcom/avira/android/dashboard/q;->c:Lcom/avira/android/dashboard/u;

    .line 45
    const-string v0, ""

    sput-object v0, Lcom/avira/android/dashboard/q;->f:Ljava/lang/String;

    .line 51
    const-class v0, Lcom/avira/android/dashboard/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/dashboard/q;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/avira/android/dashboard/y;)V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/dashboard/q;->a:Lcom/avira/android/dashboard/y;

    .line 93
    iput-object p1, p0, Lcom/avira/android/dashboard/q;->a:Lcom/avira/android/dashboard/y;

    .line 94
    invoke-interface {p1}, Lcom/avira/android/dashboard/y;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 95
    invoke-direct {p0}, Lcom/avira/android/dashboard/q;->k()V

    invoke-static {}, Lcom/avira/android/dashboard/q;->i()Lcom/avira/android/dashboard/u;

    move-result-object v0

    sget-object v1, Lcom/avira/android/dashboard/u;->REFRESH_IN_PROGRESS:Lcom/avira/android/dashboard/u;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/avira/android/dashboard/q;->a:Lcom/avira/android/dashboard/y;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/avira/android/dashboard/y;->a(Ljava/lang/String;)V

    .line 96
    :cond_0
    sget-boolean v0, Lcom/avira/android/debug/f;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/avira/android/common/web/p;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/avira/android/dashboard/q;->a:Lcom/avira/android/dashboard/y;

    invoke-interface {v0}, Lcom/avira/android/dashboard/y;->a()V

    .line 100
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/avira/android/dashboard/q;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/avira/android/dashboard/q;->k()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/avira/android/dashboard/u;)V
    .locals 3

    .prologue
    .line 55
    const-class v1, Lcom/avira/android/dashboard/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/dashboard/q;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setRefreshState "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    sput-object p0, Lcom/avira/android/dashboard/q;->c:Lcom/avira/android/dashboard/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit v1

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    const-class v0, Lcom/avira/android/dashboard/q;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/avira/android/dashboard/q;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/avira/android/dashboard/q;)V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/avira/android/premium/DashboardPremiumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    return-void
.end method

.method private b(Lcom/avira/android/dashboard/u;)V
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lcom/avira/android/dashboard/q;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleRefreshUIState "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    invoke-static {p1}, Lcom/avira/android/dashboard/q;->a(Lcom/avira/android/dashboard/u;)V

    .line 257
    iget-object v0, p0, Lcom/avira/android/dashboard/q;->a:Lcom/avira/android/dashboard/y;

    invoke-interface {v0, p1}, Lcom/avira/android/dashboard/y;->a(Lcom/avira/android/dashboard/u;)V

    .line 258
    return-void
.end method

.method private static declared-synchronized i()Lcom/avira/android/dashboard/u;
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/avira/android/dashboard/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/avira/android/dashboard/q;->c:Lcom/avira/android/dashboard/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    const-class v0, Lcom/avira/android/dashboard/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/avira/android/dashboard/q;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private k()V
    .locals 8

    .prologue
    .line 197
    sget-object v0, Lcom/avira/android/dashboard/q;->TAG:Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/avira/android/dashboard/q;->i()Lcom/avira/android/dashboard/u;

    move-result-object v0

    .line 200
    sget-object v1, Lcom/avira/android/dashboard/r;->$SwitchMap$com$avira$android$dashboard$DashboardHelpActivityPresenter$RefreshState:[I

    invoke-virtual {v0}, Lcom/avira/android/dashboard/u;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 205
    :goto_0
    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/q;->b(Lcom/avira/android/dashboard/u;)V

    .line 218
    return-void

    .line 203
    :pswitch_0
    sget-object v0, Lcom/avira/android/dashboard/q;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    sget-object v1, Lcom/avira/android/h;->RESET_ONLY:Lcom/avira/android/h;

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->a(Lcom/avira/android/h;)V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f080222

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v4, 0x7f080223

    invoke-virtual {v3, v4}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/avira/android/dashboard/q;->j()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    sget-object v6, Lcom/avira/android/custom/aa;->ErrorIcon:Lcom/avira/android/custom/aa;

    const/4 v6, 0x1

    sget-object v7, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-virtual/range {v0 .. v7}, Lcom/avira/android/ApplicationService;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)V

    .line 204
    sget-object v0, Lcom/avira/android/dashboard/u;->REFRESH_INITIAL:Lcom/avira/android/dashboard/u;

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    new-instance v0, Lcom/avira/android/dashboard/s;

    invoke-direct {v0, p0, v3}, Lcom/avira/android/dashboard/s;-><init>(Lcom/avira/android/dashboard/q;B)V

    iput-object v0, p0, Lcom/avira/android/dashboard/q;->d:Lcom/avira/android/dashboard/s;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.avira.android.dashboard.ACTION_PREMIUM_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v2, p0, Lcom/avira/android/dashboard/q;->d:Lcom/avira/android/dashboard/s;

    invoke-virtual {v1, v2, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    new-instance v0, Lcom/avira/android/dashboard/t;

    invoke-direct {v0, p0, v3}, Lcom/avira/android/dashboard/t;-><init>(Lcom/avira/android/dashboard/q;B)V

    iput-object v0, p0, Lcom/avira/android/dashboard/q;->e:Lcom/avira/android/dashboard/t;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.avira.android.ACTION_PREMIUM_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v2, p0, Lcom/avira/android/dashboard/q;->e:Lcom/avira/android/dashboard/t;

    invoke-virtual {v1, v2, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/dashboard/q;->d:Lcom/avira/android/dashboard/s;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    iget-object v0, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/dashboard/q;->e:Lcom/avira/android/dashboard/t;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 8

    .prologue
    .line 262
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "Debugger dialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pointing server: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/common/web/p;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Is Debug: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/avira/android/debug/f;->ENABLED:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    sget-object v6, Lcom/avira/android/custom/aa;->InfoIcon:Lcom/avira/android/custom/aa;

    const/4 v6, 0x0

    sget-object v7, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-virtual/range {v0 .. v7}, Lcom/avira/android/ApplicationService;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)V

    .line 265
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 270
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 274
    sget-object v0, Lcom/avira/android/dashboard/q;->TAG:Ljava/lang/String;

    .line 275
    invoke-static {}, Lcom/avira/android/utilities/x;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    sget-object v0, Lcom/avira/android/dashboard/u;->REFRESH_NO_NETWORK:Lcom/avira/android/dashboard/u;

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/q;->b(Lcom/avira/android/dashboard/u;)V

    .line 284
    :goto_0
    return-void

    .line 281
    :cond_0
    sget-object v0, Lcom/avira/android/dashboard/u;->REFRESH_IN_PROGRESS:Lcom/avira/android/dashboard/u;

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/q;->b(Lcom/avira/android/dashboard/u;)V

    .line 282
    new-instance v0, Lcom/avira/android/remotecomponents/b;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/b;-><init>()V

    const-string v1, "activatePremium"

    invoke-virtual {v0, v1}, Lcom/avira/android/remotecomponents/b;->a(Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    const-string v1, "type"

    const-string v2, "premium"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/remotecomponents/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    invoke-virtual {v0}, Lcom/avira/android/remotecomponents/b;->a()Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {v0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 6

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const v2, 0x7f0800c6

    invoke-virtual {v1, v2}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/avira/android/device/a;->n()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 291
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v2, Lcom/avira/android/uninstallation/UninstallationLandingPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    iget-object v1, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 297
    return-void
.end method

.method public final h()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 301
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/dashboard/q;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v4, 0x7f08013a

    invoke-virtual {v2, v4}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    sget-object v4, Lcom/avira/android/custom/aa;->InfoIcon:Lcom/avira/android/custom/aa;

    const/4 v6, 0x0

    sget-object v7, Lcom/avira/android/custom/z;->AboutContent:Lcom/avira/android/custom/z;

    move-object v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/avira/android/ApplicationService;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)V

    .line 304
    return-void
.end method
