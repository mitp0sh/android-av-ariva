.class public final Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/avira/android/vdfupdate/e;


# static fields
.field public static final REMAINING_LIST_SIZE_EMPTY:Ljava/lang/String; = "remainingListSize"

.field private static final REQUEST_CODE:I = 0x14

.field public static final SETTINGS_REQ_CODE:I = 0x2a

.field private static final TAG:Ljava/lang/String; = "AOEACTPRE"

.field private static i:Lcom/avira/android/antivirus/o;

.field private static j:Z

.field private static k:Landroid/content/SharedPreferences;

.field private static p:Z


# instance fields
.field private final a:Lcom/avira/android/custom/BaseFragmentActivity;

.field private final b:Lcom/avira/android/antivirus/ac;

.field private c:Lcom/avira/android/antivirus/Antivirus;

.field private final d:Lcom/avira/android/antivirus/p;

.field private final e:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter$DemandScanResultReceiver;

.field private final f:Landroid/content/IntentFilter;

.field private final g:Lcom/avira/android/antivirus/bl;

.field private final h:Lcom/avira/android/ApplicationService;

.field private l:Lcom/avira/android/antivirus/r;

.field private m:Landroid/content/IntentFilter;

.field private n:Lcom/avira/android/antivirus/q;

.field private o:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    sget-object v0, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_IDLE:Lcom/avira/android/antivirus/o;

    sput-object v0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->i:Lcom/avira/android/antivirus/o;

    .line 58
    sput-boolean v1, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->j:Z

    .line 81
    sput-boolean v1, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->p:Z

    return-void
.end method

.method public constructor <init>(Lcom/avira/android/antivirus/ac;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->h:Lcom/avira/android/ApplicationService;

    .line 112
    iput-object p1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    .line 113
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0}, Lcom/avira/android/antivirus/ac;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 114
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    .line 115
    new-instance v0, Lcom/avira/android/antivirus/p;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->h:Lcom/avira/android/ApplicationService;

    iget-object v3, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/antivirus/p;-><init>(Lcom/avira/android/antivirus/ac;Lcom/avira/android/ApplicationService;Lcom/avira/android/antivirus/Antivirus;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->d:Lcom/avira/android/antivirus/p;

    .line 116
    new-instance v0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter$DemandScanResultReceiver;

    invoke-direct {v0, p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter$DemandScanResultReceiver;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->e:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter$DemandScanResultReceiver;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_DEMAND_SCAN_RESULT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->f:Landroid/content/IntentFilter;

    .line 119
    new-instance v0, Lcom/avira/android/antivirus/r;

    invoke-direct {v0, p0, v4}, Lcom/avira/android/antivirus/r;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;B)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->l:Lcom/avira/android/antivirus/r;

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_VDF_DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->m:Landroid/content/IntentFilter;

    .line 123
    new-instance v0, Lcom/avira/android/antivirus/q;

    invoke-direct {v0, p0, v4}, Lcom/avira/android/antivirus/q;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;B)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->n:Lcom/avira/android/antivirus/q;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_UPDATER_FAILED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->o:Landroid/content/IntentFilter;

    .line 126
    new-instance v0, Lcom/avira/android/antivirus/k;

    invoke-direct {v0, p0}, Lcom/avira/android/antivirus/k;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->g:Lcom/avira/android/antivirus/bl;

    .line 135
    return-void
.end method

.method public static declared-synchronized a()Lcom/avira/android/antivirus/o;
    .locals 2

    .prologue
    .line 96
    const-class v0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->i:Lcom/avira/android/antivirus/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->u()V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/antivirus/ac;J)V
    .locals 1

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b(Lcom/avira/android/antivirus/ac;J)V

    return-void
.end method

.method public static declared-synchronized a(Lcom/avira/android/antivirus/o;)V
    .locals 2

    .prologue
    .line 91
    const-class v0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->i:Lcom/avira/android/antivirus/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit v0

    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 101
    const-class v0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v0

    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->t()V

    return-void
.end method

.method private static b(Lcom/avira/android/antivirus/ac;J)V
    .locals 3

    .prologue
    .line 696
    invoke-static {}, Lcom/avira/android/utilities/g;->a()Lcom/avira/android/utilities/g;

    move-result-object v0

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/avira/android/utilities/g;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1, p2}, Lcom/avira/android/utilities/g;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/avira/android/antivirus/ac;->c(Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method static synthetic c(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)Lcom/avira/android/antivirus/Antivirus;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    return-object v0
.end method

.method static synthetic d(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)Lcom/avira/android/antivirus/p;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->d:Lcom/avira/android/antivirus/p;

    return-object v0
.end method

.method static synthetic e(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)Lcom/avira/android/antivirus/ac;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    return-object v0
.end method

.method static synthetic f(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->o()V

    return-void
.end method

.method static synthetic g(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->q()V

    return-void
.end method

.method static synthetic h(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->s()V

    return-void
.end method

.method static synthetic i(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->p()V

    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->l:Lcom/avira/android/antivirus/r;

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->l:Lcom/avira/android/antivirus/r;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->n:Lcom/avira/android/antivirus/q;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->n:Lcom/avira/android/antivirus/q;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private q()V
    .locals 3

    .prologue
    .line 313
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0}, Lcom/avira/android/antivirus/ac;->b()V

    .line 314
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/avira/android/antivirus/ac;->a(Z)V

    .line 315
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v1}, Lcom/avira/android/antivirus/Antivirus;->getNumberOfAppScanFromOnDemandScan()I

    move-result v1

    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v2}, Lcom/avira/android/antivirus/Antivirus;->getNumberOfFileScanFromOnDemandScan()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/avira/android/antivirus/ac;->a(II)V

    .line 318
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->getOnDemandTotalNumberOfScanTask()I

    move-result v1

    .line 319
    const/4 v0, 0x0

    .line 321
    if-lez v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->getOnDemandScanCurrentCompletedTaskCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v1, v0}, Lcom/avira/android/antivirus/ac;->a(I)V

    .line 327
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 487
    invoke-static {}, Lcom/avira/android/firstscan/a;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 490
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->l:Lcom/avira/android/antivirus/r;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avira/android/antivirus/r;

    invoke-direct {v0, p0, v3}, Lcom/avira/android/antivirus/r;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;B)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->l:Lcom/avira/android/antivirus/r;

    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->m:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_VDF_DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->m:Landroid/content/IntentFilter;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->l:Lcom/avira/android/antivirus/r;

    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->m:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->n:Lcom/avira/android/antivirus/q;

    if-nez v0, :cond_2

    new-instance v0, Lcom/avira/android/antivirus/q;

    invoke-direct {v0, p0, v3}, Lcom/avira/android/antivirus/q;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;B)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->n:Lcom/avira/android/antivirus/q;

    :cond_2
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->o:Landroid/content/IntentFilter;

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_UPDATER_FAILED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->o:Landroid/content/IntentFilter;

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->n:Lcom/avira/android/antivirus/q;

    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->o:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 495
    :goto_1
    invoke-static {}, Lcom/avira/android/firstscan/a;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 497
    const-string v0, "Perform component update after first time user update failed..."

    .line 498
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v1, "AOEACTPRE"

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/antivirus/i;->b(Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->b()Lcom/avira/android/antivirus/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/antivirus/h;->a()V

    .line 504
    :cond_4
    invoke-static {v3}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(Z)V

    .line 505
    sget-object v0, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_DOWNLOADING:Lcom/avira/android/antivirus/o;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(Lcom/avira/android/antivirus/o;)V

    .line 508
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0}, Lcom/avira/android/antivirus/ac;->f()V

    .line 514
    :goto_2
    return-void

    .line 512
    :cond_5
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->s()V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 521
    sget-object v0, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_SCANNING:Lcom/avira/android/antivirus/o;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(Lcom/avira/android/antivirus/o;)V

    .line 523
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/avira/android/antivirus/ac;->c(Z)V

    .line 524
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0}, Lcom/avira/android/antivirus/ac;->b()V

    .line 525
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0, v2}, Lcom/avira/android/antivirus/ac;->b(Z)V

    .line 526
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0, v2}, Lcom/avira/android/antivirus/ac;->a(Z)V

    .line 528
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/avira/android/antivirus/l;

    invoke-direct {v0, p0}, Lcom/avira/android/antivirus/l;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 529
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->d:Lcom/avira/android/antivirus/p;

    new-instance v1, Lcom/avira/android/antivirus/m;

    invoke-direct {v1, p0}, Lcom/avira/android/antivirus/m;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/antivirus/p;->post(Ljava/lang/Runnable;)Z

    .line 658
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    new-instance v1, Lcom/avira/android/antivirus/n;

    invoke-direct {v1, p0}, Lcom/avira/android/antivirus/n;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 671
    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 412
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 414
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 416
    const-string v0, "remainingListSize"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "remainingListSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 419
    if-eqz v0, :cond_0

    .line 423
    sput-boolean v2, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->p:Z

    .line 424
    invoke-static {v2}, Lcom/avira/android/database/n;->a(Z)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->updateScanEngineSettings()V

    goto :goto_0
.end method

.method public final a(Lcom/avira/android/vdfupdate/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->s()V

    .line 480
    return-void
.end method

.method public final declared-synchronized b()Z
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->e:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter$DemandScanResultReceiver;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->h:Lcom/avira/android/ApplicationService;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->e:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter$DemandScanResultReceiver;

    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->f:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/ApplicationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->k:Landroid/content/SharedPreferences;

    .line 147
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->e:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter$DemandScanResultReceiver;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->h:Lcom/avira/android/ApplicationService;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->e:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter$DemandScanResultReceiver;

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 249
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 258
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v2

    iput-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    .line 262
    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    if-nez v2, :cond_0

    .line 304
    :goto_0
    return v0

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->u()V

    .line 270
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->b()Lcom/avira/android/antivirus/h;

    move-result-object v2

    iget-object v3, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->g:Lcom/avira/android/antivirus/bl;

    invoke-interface {v2, v3}, Lcom/avira/android/antivirus/h;->a(Lcom/avira/android/antivirus/bl;)V

    .line 272
    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v2}, Lcom/avira/android/antivirus/Antivirus;->isDemandScanRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->d:Lcom/avira/android/antivirus/p;

    invoke-virtual {v0, v2}, Lcom/avira/android/antivirus/Antivirus;->setOnDemandScanPostbackHandler(Landroid/os/Handler;)V

    .line 278
    sget-object v0, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_SCANNING:Lcom/avira/android/antivirus/o;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(Lcom/avira/android/antivirus/o;)V

    .line 279
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->q()V

    .line 303
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->t()V

    move v0, v1

    .line 304
    goto :goto_0

    .line 283
    :cond_2
    invoke-static {}, Lcom/avira/android/firstscan/a;->c()Z

    move-result v2

    if-nez v2, :cond_4

    .line 285
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a()Lcom/avira/android/antivirus/o;

    move-result-object v0

    .line 287
    sget-object v2, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_IDLE:Lcom/avira/android/antivirus/o;

    if-ne v0, v2, :cond_3

    .line 289
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0}, Lcom/avira/android/antivirus/ac;->e()V

    goto :goto_1

    .line 293
    :cond_3
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->r()V

    goto :goto_1

    .line 298
    :cond_4
    sget-object v2, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_IDLE:Lcom/avira/android/antivirus/o;

    invoke-static {v2}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(Lcom/avira/android/antivirus/o;)V

    .line 299
    invoke-static {}, Lcom/avira/android/database/n;->a()Lcom/avira/android/database/gson/ScanResultsDatabaseItem;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-boolean v3, v2, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->hideIfEmpty:Z

    if-eqz v3, :cond_5

    sput-boolean v1, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->p:Z

    :cond_5
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->results:Ljava/util/Collection;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->results:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v3, v0}, Lcom/avira/android/antivirus/ac;->a(Z)V

    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    const-string v3, ""

    invoke-interface {v0, v3}, Lcom/avira/android/antivirus/ac;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->d:Lcom/avira/android/antivirus/p;

    iget-object v3, v2, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->results:Ljava/util/Collection;

    invoke-virtual {v0, v3}, Lcom/avira/android/antivirus/p;->a(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->d:Lcom/avira/android/antivirus/p;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/p;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v3, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v3, v0}, Lcom/avira/android/antivirus/ac;->b(I)V

    :goto_2
    sget-boolean v0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->p:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0}, Lcom/avira/android/antivirus/ac;->c()V

    :cond_6
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    iget-wide v4, v2, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->scanEndTime:J

    invoke-static {v0, v4, v5}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b(Lcom/avira/android/antivirus/ac;J)V

    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    iget v3, v2, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->applicationsScanned:I

    iget v2, v2, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->filesScanned:I

    invoke-interface {v0, v3, v2}, Lcom/avira/android/antivirus/ac;->a(II)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v3, v0}, Lcom/avira/android/antivirus/ac;->b(I)V

    goto :goto_2
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->g:Lcom/avira/android/antivirus/bl;

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->b()Lcom/avira/android/antivirus/h;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->g:Lcom/avira/android/antivirus/bl;

    invoke-interface {v0, v1}, Lcom/avira/android/antivirus/h;->b(Lcom/avira/android/antivirus/bl;)V

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->o()V

    .line 391
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->p()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    sget-object v0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 397
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 404
    sget-object v0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 405
    return-void
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->a(Landroid/content/Context;)V

    .line 441
    return-void
.end method

.method public final i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 448
    sput-boolean v3, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->p:Z

    .line 450
    invoke-static {v3}, Lcom/avira/android/database/n;->a(Z)V

    .line 452
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    if-eqz v0, :cond_0

    .line 454
    invoke-static {}, Lcom/avira/android/firstscan/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->r()V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-static {}, Lcom/avira/android/vdfupdate/i;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 464
    new-instance v0, Lcom/avira/android/vdfupdate/d;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/avira/android/vdfupdate/d;-><init>(Landroid/content/Context;Lcom/avira/android/vdfupdate/e;Ljava/lang/Object;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avira/android/vdfupdate/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 469
    :cond_2
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->s()V

    goto :goto_0
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->abortCurrentScan()V

    .line 537
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/avira/android/antivirus/ac;->b(Z)V

    .line 538
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 545
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(Z)V

    .line 548
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a()Lcom/avira/android/antivirus/o;

    move-result-object v0

    sget-object v1, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_DOWNLOADING:Lcom/avira/android/antivirus/o;

    if-ne v0, v1, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->o()V

    .line 554
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->p()V

    .line 557
    sget-object v0, Lcom/avira/android/antivirus/o;->AV_RUN_STATE_IDLE:Lcom/avira/android/antivirus/o;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(Lcom/avira/android/antivirus/o;)V

    .line 558
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0}, Lcom/avira/android/antivirus/ac;->e()V

    .line 560
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 568
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->b:Lcom/avira/android/antivirus/ac;

    invoke-interface {v0}, Lcom/avira/android/antivirus/ac;->c()V

    .line 571
    sput-boolean v1, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->p:Z

    .line 572
    invoke-static {v1}, Lcom/avira/android/database/n;->a(Z)V

    .line 573
    return-void
.end method

.method public final m()V
    .locals 8

    .prologue
    .line 580
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 582
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/antivirus/i;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    invoke-static {}, Lcom/avira/android/utilities/g;->a()Lcom/avira/android/utilities/g;

    .line 587
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/avira/android/utilities/g;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 591
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 592
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 593
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 594
    return-void
.end method

.method public final n()V
    .locals 3

    .prologue
    .line 601
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const-class v2, Lcom/avira/android/antivirus/OEScanResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 602
    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a:Lcom/avira/android/custom/BaseFragmentActivity;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 603
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 917
    const-string v0, "vdf_version_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    invoke-direct {p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->u()V

    .line 921
    :cond_0
    return-void
.end method
