.class public final Lcom/avira/android/dashboard/DashboardActivityPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final BREACHED_CONTACTS_COUNT_LOADER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DSHBRDCTVTYPRSNTR"

.field private static final USER_THREATS_COUNT_LOADER:I = 0x2


# instance fields
.field private a:Lcom/avira/android/dashboard/w;

.field private final b:Lcom/avira/android/custom/BaseFragmentActivity;

.field private c:Lcom/avira/android/userprofile/x;

.field private d:Lcom/avira/android/userprofile/s;

.field private final e:Lcom/avira/android/dashboard/k;

.field private f:Lcom/avira/android/dashboard/j;

.field private g:Landroid/content/IntentFilter;

.field private final h:Landroid/app/admin/DevicePolicyManager;

.field private final i:Landroid/content/ComponentName;

.field private final j:Lcom/avira/android/antivirus/Antivirus;

.field private k:Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;

.field private l:Landroid/content/IntentFilter;

.field private m:Lcom/avira/android/dashboard/i;

.field private n:Landroid/content/IntentFilter;

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private final s:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/avira/android/dashboard/w;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    .line 101
    iput-boolean v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->o:Z

    .line 102
    iput-boolean v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->p:Z

    .line 107
    iput v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->q:I

    .line 108
    iput v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->r:I

    .line 110
    new-instance v0, Lcom/avira/android/dashboard/c;

    invoke-direct {v0, p0}, Lcom/avira/android/dashboard/c;-><init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->s:Landroid/content/BroadcastReceiver;

    .line 140
    iput-object p1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    .line 141
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v0}, Lcom/avira/android/dashboard/w;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 142
    new-instance v0, Lcom/avira/android/dashboard/k;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/dashboard/k;-><init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;B)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->e:Lcom/avira/android/dashboard/k;

    .line 143
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->f()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->h:Landroid/app/admin/DevicePolicyManager;

    .line 144
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v2, Lcom/avira/android/deviceadmin/DeviceAdminReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->i:Landroid/content/ComponentName;

    .line 145
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->j:Lcom/avira/android/antivirus/Antivirus;

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    return-object v0
.end method

.method private a(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 395
    if-eqz p1, :cond_0

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/avira/android/dashboard/DashboardActivityPresenter;Lcom/avira/android/dashboard/h;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Lcom/avira/android/dashboard/h;)V

    return-void
.end method

.method private a(Lcom/avira/android/dashboard/h;)V
    .locals 2

    .prologue
    .line 778
    sget-object v0, Lcom/avira/android/dashboard/g;->$SwitchMap$com$avira$android$dashboard$DashboardActivityPresenter$AntivirusSubTextState:[I

    invoke-virtual {p1}, Lcom/avira/android/dashboard/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 788
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/avira/android/dashboard/w;->a(Z)V

    .line 789
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f080284

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 792
    :goto_0
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v1, v0}, Lcom/avira/android/dashboard/w;->a(Ljava/lang/String;)V

    .line 793
    return-void

    .line 781
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f080289

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 784
    :pswitch_1
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f08016d

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 778
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v0}, Lcom/avira/android/dashboard/w;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avira/android/firstscan/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-boolean v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->o:Z

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v0, p1}, Lcom/avira/android/dashboard/w;->a(Z)V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->p:Z

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->p:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/dashboard/w;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    return-object v0
.end method

.method static synthetic c(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->u()V

    return-void
.end method

.method static synthetic d(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/antivirus/Antivirus;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->j:Lcom/avira/android/antivirus/Antivirus;

    return-object v0
.end method

.method static synthetic f(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->t()V

    return-void
.end method

.method static synthetic g(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/userprofile/s;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->d:Lcom/avira/android/userprofile/s;

    return-object v0
.end method

.method static synthetic h(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/userprofile/x;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->c:Lcom/avira/android/userprofile/x;

    return-object v0
.end method

.method public static r()V
    .locals 0

    .prologue
    .line 698
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    .line 713
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v2, Lcom/avira/android/blacklist/activities/BLMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 714
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 715
    return-void
.end method

.method private u()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 750
    invoke-static {}, Lcom/avira/android/dashboard/l;->a()Z

    move-result v5

    .line 751
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v3, "antitheft_alert_status_tag"

    invoke-static {v0, v3, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 754
    :goto_0
    iget v3, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->q:I

    iget v4, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->r:I

    add-int/2addr v3, v4

    if-nez v3, :cond_1

    invoke-static {}, Lcom/avira/android/idsafeguard/services/ISIntentService;->b()Lcom/avira/android/idsafeguard/services/a;

    move-result-object v3

    sget-object v4, Lcom/avira/android/idsafeguard/services/a;->SUCCESS:Lcom/avira/android/idsafeguard/services/a;

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 756
    :goto_1
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v1

    .line 758
    :goto_2
    iget-object v6, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v6, v3}, Lcom/avira/android/dashboard/w;->f(Z)V

    .line 759
    iget-object v3, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v3, v5}, Lcom/avira/android/dashboard/w;->c(Z)V

    .line 760
    iget-object v3, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v3, v0}, Lcom/avira/android/dashboard/w;->d(Z)V

    .line 761
    iget-object v3, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v3, v4}, Lcom/avira/android/dashboard/w;->e(Z)V

    .line 763
    iget v3, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->r:I

    if-nez v3, :cond_3

    move v3, v1

    .line 764
    :goto_3
    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 766
    :goto_4
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v0, v1}, Lcom/avira/android/dashboard/w;->b(Z)V

    .line 767
    return-void

    :cond_0
    move v0, v2

    .line 751
    goto :goto_0

    :cond_1
    move v3, v2

    .line 754
    goto :goto_1

    :cond_2
    move v4, v2

    .line 756
    goto :goto_2

    :cond_3
    move v3, v2

    .line 763
    goto :goto_3

    :cond_4
    move v1, v2

    .line 764
    goto :goto_4
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 153
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 159
    :cond_0
    new-instance v0, Lcom/avira/android/userprofile/x;

    invoke-direct {v0}, Lcom/avira/android/userprofile/x;-><init>()V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->c:Lcom/avira/android/userprofile/x;

    .line 160
    new-instance v0, Lcom/avira/android/userprofile/s;

    invoke-direct {v0}, Lcom/avira/android/userprofile/s;-><init>()V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->d:Lcom/avira/android/userprofile/s;

    .line 163
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v0}, Lcom/avira/android/dashboard/w;->c()V

    .line 167
    :cond_1
    new-instance v0, Lcom/avira/android/dashboard/j;

    invoke-direct {v0, p0, v3}, Lcom/avira/android/dashboard/j;-><init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;B)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->f:Lcom/avira/android/dashboard/j;

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_PREMIUM_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->g:Landroid/content/IntentFilter;

    .line 177
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 179
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->u()V

    .line 184
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v0, v3}, Lcom/avira/android/dashboard/w;->a(Z)V

    .line 186
    invoke-static {}, Lcom/avira/android/firstscan/a;->d()Z

    move-result v0

    invoke-static {}, Lcom/avira/android/firstscan/a;->g()Z

    move-result v1

    invoke-static {}, Lcom/avira/android/firstscan/a;->c()Z

    move-result v2

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->j:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->isDemandScanRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->j:Lcom/avira/android/antivirus/Antivirus;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/avira/android/dashboard/d;

    invoke-direct {v0, p0}, Lcom/avira/android/dashboard/d;-><init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v0}, Lcom/avira/android/dashboard/w;->a()V

    :cond_3
    invoke-direct {p0, v3}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Z)V

    .line 187
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/l;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/l;

    .line 188
    :cond_4
    return-void
.end method

.method public final b()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->m:Lcom/avira/android/dashboard/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avira/android/dashboard/i;

    invoke-direct {v0, p0, v4}, Lcom/avira/android/dashboard/i;-><init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;B)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->m:Lcom/avira/android/dashboard/i;

    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->n:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_SCAN_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->n:Landroid/content/IntentFilter;

    :cond_1
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->m:Lcom/avira/android/dashboard/i;

    iget-object v2, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->n:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->k:Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;

    if-nez v0, :cond_2

    new-instance v0, Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;

    invoke-direct {v0, p0}, Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;-><init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->k:Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;

    :cond_2
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->l:Landroid/content/IntentFilter;

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_DEMAND_SCAN_RESULT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->l:Landroid/content/IntentFilter;

    :cond_3
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->k:Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;

    iget-object v2, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->l:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-nez v0, :cond_6

    .line 208
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/l;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v5}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    :cond_4
    invoke-virtual {v0, v5, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/l;

    invoke-virtual {v0, v3}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/l;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    :cond_5
    invoke-virtual {v0, v3, v6, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/l;

    .line 209
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->s:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.avira.android.idsafeguard.ISIntentService.State"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 214
    :cond_6
    invoke-static {}, Lcom/avira/android/firstscan/a;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 216
    invoke-direct {p0, v4}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Z)V

    .line 218
    sget-object v0, Lcom/avira/android/dashboard/h;->DEFAULT:Lcom/avira/android/dashboard/h;

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Lcom/avira/android/dashboard/h;)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->j:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->isDemandScanRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 234
    sget-object v0, Lcom/avira/android/dashboard/h;->SCANNING_IN_PROGRESS:Lcom/avira/android/dashboard/h;

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Lcom/avira/android/dashboard/h;)V

    .line 238
    :cond_7
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->f:Lcom/avira/android/dashboard/j;

    iget-object v2, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->g:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->e:Lcom/avira/android/dashboard/k;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "profileImageSavedAction"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v1

    invoke-static {}, Lcom/avira/android/securebrowsing/c/aa;->a()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/avira/android/dashboard/w;->a(ZZ)V

    .line 247
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->c:Lcom/avira/android/userprofile/x;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->d:Lcom/avira/android/userprofile/s;

    invoke-virtual {v1}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/userprofile/x;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 249
    if-eqz v0, :cond_e

    array-length v1, v0

    if-lez v1, :cond_e

    .line 251
    array-length v1, v0

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v1, v0}, Lcom/avira/android/dashboard/w;->a(Landroid/graphics/Bitmap;)V

    .line 253
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 262
    :goto_1
    invoke-static {}, Lcom/avira/android/database/n;->a()Lcom/avira/android/database/gson/ScanResultsDatabaseItem;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_8

    .line 265
    iget-object v0, v0, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->results:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 266
    invoke-static {}, Lcom/avira/android/antivirus/f;->a()Lcom/avira/android/antivirus/f;

    invoke-static {v0}, Lcom/avira/android/antivirus/f;->a(Z)Z

    .line 272
    :cond_8
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->h:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->i:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 274
    invoke-static {v5}, Lcom/avira/android/antitheft/a;->a(Z)V

    .line 278
    :cond_9
    invoke-static {}, Lcom/avira/android/idsafeguard/services/ISIntentService;->b()Lcom/avira/android/idsafeguard/services/a;

    move-result-object v0

    sget-object v1, Lcom/avira/android/idsafeguard/services/a;->ERROR:Lcom/avira/android/idsafeguard/services/a;

    if-ne v0, v1, :cond_f

    .line 280
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v2, 0x7f08018c

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avira/android/dashboard/w;->b(Ljava/lang/String;)V

    .line 286
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->u()V

    .line 287
    invoke-static {}, Lcom/avira/android/iab/s;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v3, Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 288
    :cond_b
    return-void

    .line 224
    :cond_c
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->j:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->isDemandScanRunning()Z

    move-result v0

    if-nez v0, :cond_d

    .line 226
    invoke-direct {p0, v4}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Z)V

    .line 229
    :cond_d
    sget-object v0, Lcom/avira/android/dashboard/h;->FIRST_SCAN_NOT_COMPLETE:Lcom/avira/android/dashboard/h;

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Lcom/avira/android/dashboard/h;)V

    goto/16 :goto_0

    .line 257
    :cond_e
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v0}, Lcom/avira/android/dashboard/w;->f()V

    goto :goto_1

    .line 282
    :cond_f
    invoke-static {}, Lcom/avira/android/idsafeguard/services/ISIntentService;->a()Lcom/avira/android/idsafeguard/services/b;

    move-result-object v0

    sget-object v1, Lcom/avira/android/idsafeguard/services/b;->ACTIVE:Lcom/avira/android/idsafeguard/services/b;

    if-ne v0, v1, :cond_a

    .line 284
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v2, 0x7f0802e4

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avira/android/dashboard/w;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->k:Lcom/avira/android/dashboard/DashboardActivityPresenter$DemandScanResultReceiver;

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Landroid/content/BroadcastReceiver;)V

    .line 322
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->m:Lcom/avira/android/dashboard/i;

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a(Landroid/content/BroadcastReceiver;)V

    .line 324
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->f:Lcom/avira/android/dashboard/j;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->f:Lcom/avira/android/dashboard/j;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->e:Lcom/avira/android/dashboard/k;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->e:Lcom/avira/android/dashboard/k;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 334
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 342
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 490
    iput-boolean v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->o:Z

    .line 493
    iget-boolean v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->p:Z

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v0, v1}, Lcom/avira/android/dashboard/w;->a(Z)V

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->p:Z

    .line 498
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 525
    invoke-static {}, Lcom/avira/android/b;->a()Lcom/avira/android/b;

    move-result-object v0

    const-string v1, "onDashboardAntivirusClickedEvent"

    invoke-virtual {v0, v1}, Lcom/avira/android/b;->b(Ljava/lang/String;)V

    .line 527
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v2, Lcom/avira/android/antivirus/AntivirusOEActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 529
    return-void
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 536
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v2, Lcom/avira/android/antitheft/activities/ATMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 539
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/avira/android/dashboard/SignActivity;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 552
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v2, Lcom/avira/android/idsafeguard/activities/ISMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 555
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/avira/android/dashboard/SignActivity;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 568
    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/activities/SBActivity;->a(Landroid/content/Context;)V

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 583
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Lcom/avira/android/b/a;->c(Landroid/content/Context;)V

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/avira/android/dashboard/SignActivity;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final k()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 599
    invoke-static {}, Lcom/avira/android/b;->a()Lcom/avira/android/b;

    move-result-object v0

    const-string v1, "onDashboardBlacklistClickedEvent"

    invoke-virtual {v0, v1}, Lcom/avira/android/b;->b(Ljava/lang/String;)V

    .line 601
    const-string v0, "settingPromptLgeBlacklist"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 605
    invoke-static {}, Lcom/avira/android/device/a;->d()Ljava/lang/String;

    move-result-object v1

    .line 606
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    const-string v0, "settingPromptLgeBlacklist"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const-string v0, "\n\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f08025f

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v3, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    sget-object v5, Lcom/avira/android/custom/aa;->WarningIcon:Lcom/avira/android/custom/aa;

    sget-object v5, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-static/range {v0 .. v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/avira/android/dashboard/f;

    invoke-direct {v1, p0}, Lcom/avira/android/dashboard/f;-><init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 618
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-direct {p0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->t()V

    goto :goto_0
.end method

.method public final l()V
    .locals 3

    .prologue
    .line 625
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v2, Lcom/avira/android/dashboard/DashboardSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 626
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 627
    return-void
.end method

.method public final m()V
    .locals 3

    .prologue
    .line 634
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v2, Lcom/avira/android/dashboard/DashboardHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 635
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 636
    return-void
.end method

.method public final n()V
    .locals 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Lcom/avira/android/utilities/z;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.vending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "market://details?id="

    .line 645
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 646
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_1
    return-void

    .line 643
    :cond_0
    const-string v1, "com.amazon.venezia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "amzn://apps/android?p="

    goto :goto_0

    :cond_1
    const-string v0, "http://play.google.com/store/apps/details?id="

    goto :goto_0

    .line 653
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    const-string v1, "DSHBRDCTVTYPRSNTR"

    const-string v2, "Cannot find app in store"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final o()V
    .locals 3

    .prologue
    .line 662
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v2, Lcom/avira/android/premium/DashboardPremiumActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 664
    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/l",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 892
    new-instance v0, Lcom/avira/android/idsafeguard/database/a/a;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v2, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->d:Lcom/avira/android/userprofile/s;

    invoke-virtual {v2}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/idsafeguard/database/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 898
    :goto_0
    return-object v0

    .line 894
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 896
    new-instance v0, Lcom/avira/android/idsafeguard/database/a/d;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v2, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->d:Lcom/avira/android/userprofile/s;

    invoke-virtual {v2}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/idsafeguard/database/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 898
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic onLoadFinished(Landroid/support/v4/content/l;Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 76
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p1}, Landroid/support/v4/content/l;->h()I

    move-result v0

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const-string v1, "number_of_contacts"

    invoke-static {v0, v1, v7}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->q:I

    invoke-static {}, Lcom/avira/android/idsafeguard/services/ISIntentService;->a()Lcom/avira/android/idsafeguard/services/b;

    move-result-object v1

    sget-object v2, Lcom/avira/android/idsafeguard/services/b;->ACTIVE:Lcom/avira/android/idsafeguard/services/b;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    iget v2, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->q:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v4, 0x7f080188

    invoke-virtual {v0, v4}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, v8, :cond_2

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v2, 0x7f08018a

    invoke-virtual {v0, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/avira/android/dashboard/w;->b(Ljava/lang/String;)V

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->u()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v5, 0x7f080189

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v4, 0x7f08018b

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {v0, v4, v5}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->r:I

    goto :goto_2

    :cond_4
    iput v7, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->r:I

    goto :goto_2
.end method

.method public final onLoaderReset(Landroid/support/v4/content/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/l",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 982
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 504
    const-string v0, "antivirus_alert_status_tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "antitheft_alert_status_tag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    new-instance v1, Lcom/avira/android/dashboard/e;

    invoke-direct {v1, p0}, Lcom/avira/android/dashboard/e;-><init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 517
    :cond_1
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v0}, Lcom/avira/android/dashboard/w;->e()V

    .line 672
    return-void
.end method

.method public final q()V
    .locals 3

    .prologue
    .line 679
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v1}, Lcom/avira/android/dashboard/w;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v1

    const-class v2, Lcom/avira/android/userprofile/EditUserDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 682
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v1}, Lcom/avira/android/dashboard/w;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 689
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avira/android/dashboard/SignActivity;->a(Landroid/content/Context;I)V

    .line 687
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a:Lcom/avira/android/dashboard/w;

    invoke-interface {v0}, Lcom/avira/android/dashboard/w;->h()V

    goto :goto_0
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->a(Landroid/content/Context;)V

    .line 706
    return-void
.end method
