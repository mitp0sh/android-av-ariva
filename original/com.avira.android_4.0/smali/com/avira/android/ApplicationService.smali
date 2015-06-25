.class public Lcom/avira/android/ApplicationService;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static final ANONYMOUS_USER_KEY:Ljava/lang/String; = "anonymous_user_key"

.field private static final DELAY_DEVICE_INFO_UPDATE:I = 0x3e8

.field private static final DEVICE_ADMINISTRATOR_KEY:Ljava/lang/String; = "device_aministrator_key"

.field private static final RELAUNCH_DELAY:I = 0x12c

.field public static final RESET_APPLICATION_FLAG:Ljava/lang/String; = "resetApplicationFlag"

.field private static final TAG:Ljava/lang/String;

.field public static final VDF_UPDATE_TIME_KEY:Ljava/lang/String; = "vdf_update_time_key"

.field private static final VDF_UPDATE_TIME_UNKNOWN:J = -0x1L

.field public static final VDF_VERSION_KEY:Ljava/lang/String; = "vdf_version_key"

.field private static final VDF_VERSION_UNKNOWN:Ljava/lang/String; = ""

.field private static a:I

.field private static n:Lcom/avira/android/ApplicationService;


# instance fields
.field private b:Landroid/telephony/TelephonyManager;

.field private c:Landroid/app/AlarmManager;

.field private d:Landroid/media/MediaPlayer;

.field private e:Landroid/content/pm/PackageManager;

.field private f:Landroid/app/admin/DevicePolicyManager;

.field private g:Landroid/location/LocationManager;

.field private h:Landroid/app/NotificationManager;

.field private i:Landroid/os/Handler;

.field private j:Landroid/app/ProgressDialog;

.field private k:Lcom/avira/android/g;

.field private l:Landroid/os/Handler;

.field private m:Z

.field private o:Lcom/avira/android/antivirus/bc;

.field private p:Lcom/google/android/gms/analytics/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    sput v0, Lcom/avira/android/ApplicationService;->a:I

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    .line 94
    const-class v0, Lcom/avira/android/ApplicationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/ApplicationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 76
    iput-object v1, p0, Lcom/avira/android/ApplicationService;->b:Landroid/telephony/TelephonyManager;

    .line 77
    iput-object v1, p0, Lcom/avira/android/ApplicationService;->c:Landroid/app/AlarmManager;

    .line 78
    iput-object v1, p0, Lcom/avira/android/ApplicationService;->d:Landroid/media/MediaPlayer;

    .line 79
    iput-object v1, p0, Lcom/avira/android/ApplicationService;->e:Landroid/content/pm/PackageManager;

    .line 80
    iput-object v1, p0, Lcom/avira/android/ApplicationService;->f:Landroid/app/admin/DevicePolicyManager;

    .line 81
    iput-object v1, p0, Lcom/avira/android/ApplicationService;->g:Landroid/location/LocationManager;

    .line 82
    iput-object v1, p0, Lcom/avira/android/ApplicationService;->h:Landroid/app/NotificationManager;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/ApplicationService;->m:Z

    .line 90
    iput-object v1, p0, Lcom/avira/android/ApplicationService;->o:Lcom/avira/android/antivirus/bc;

    .line 164
    sput-object p0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    .line 165
    new-instance v0, Lcom/avira/android/antivirus/bc;

    invoke-direct {v0}, Lcom/avira/android/antivirus/bc;-><init>()V

    iput-object v0, p0, Lcom/avira/android/ApplicationService;->o:Lcom/avira/android/antivirus/bc;

    .line 166
    return-void
.end method

.method static synthetic B()Lcom/avira/android/ApplicationService;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 186
    const-class v1, Lcom/avira/android/ApplicationService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    invoke-virtual {v0, p0}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit v1

    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 703
    sget-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    invoke-static {v0, p0}, Lcom/avira/android/antivirus/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 698
    sget-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    invoke-static {v0, p0, p1}, Lcom/avira/android/antivirus/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public static declared-synchronized b()Lcom/avira/android/ApplicationService;
    .locals 2

    .prologue
    .line 175
    const-class v0, Lcom/avira/android/ApplicationService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static j()V
    .locals 3

    .prologue
    .line 530
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 532
    return-void
.end method

.method public static l()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 548
    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/avira/android/securebrowsing/c/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 551
    :goto_0
    const-string v3, "Verifying Secure Browsing status [switch=%s]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v2, Lcom/avira/android/ApplicationService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    if-eqz v0, :cond_0

    .line 557
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/ApplicationService;->TAG:Ljava/lang/String;

    const-string v1, "Starting Secure Browsing Service"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 562
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 548
    goto :goto_0
.end method

.method public static o()Z
    .locals 2

    .prologue
    .line 688
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    sget-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    invoke-static {v0}, Lcom/avira/android/antivirus/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    sget-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    invoke-static {v0}, Lcom/avira/android/antivirus/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    sget-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    invoke-static {v0}, Lcom/avira/android/antivirus/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    sget-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    invoke-static {v0}, Lcom/avira/android/antivirus/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .prologue
    .line 785
    const-string v0, "anonymous_user_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final a()Lcom/google/android/gms/analytics/k;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->p:Lcom/google/android/gms/analytics/k;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->k:Lcom/avira/android/g;

    invoke-virtual {v0, p1, p2}, Lcom/avira/android/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 498
    return-void
.end method

.method public final a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)V
    .locals 3

    .prologue
    .line 617
    invoke-static/range {p2 .. p7}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    .line 620
    sget-object v1, Lcom/avira/android/e;->$SwitchMap$com$avira$android$custom$OEMessageDialogHelper$ButtonMode:[I

    invoke-virtual {p5}, Lcom/avira/android/custom/x;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 647
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please provide overrided OnMessageDialogResultSelectedListener"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :pswitch_0
    new-instance v1, Lcom/avira/android/d;

    invoke-direct {v1, p0}, Lcom/avira/android/d;-><init>(Lcom/avira/android/ApplicationService;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    .line 652
    :try_start_0
    const-string v1, "com.avira.android.custom.MessageDialogFragment"

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-virtual {v0, p1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/avira/android/h;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 441
    invoke-static {p0}, Lcom/avira/android/deviceadmin/b;->a(Landroid/content/Context;)Z

    .line 443
    invoke-static {p0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 444
    const-string v0, "resetApplicationFlag"

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 447
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/database/h;->d()Z

    .line 448
    invoke-static {}, Lcom/avira/android/securebrowsing/b/b;->a()Lcom/avira/android/securebrowsing/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/b/b;->c()Z

    .line 451
    sget-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    const-string v3, "com.google.android.gcm"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v0, "onServer"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Is registered on server: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v4, "onServerExpirationTime"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "flag expired on: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/sql/Timestamp;

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v2

    :cond_0
    if-eqz v0, :cond_1

    .line 453
    sget-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    const-string v3, "com.google.android.gcm"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "onServer"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v4, "com.google.android.gcm"

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "onServerLifeSpan"

    const-wide/32 v6, 0x240c8400

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Setting registeredOnServer status as false until "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/sql/Timestamp;

    invoke-direct {v6, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "onServerExpirationTime"

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 455
    :cond_1
    sget-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    invoke-static {v0}, Lcom/google/android/gcm/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 457
    sget-object v0, Lcom/avira/android/ApplicationService;->n:Lcom/avira/android/ApplicationService;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resetting backoff for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v3, "com.google.android.gcm"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "backoff_ms"

    const/16 v5, 0xbb8

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unregistering app "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gsf"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "app"

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v2, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 460
    :cond_2
    sget-object v0, Lcom/avira/android/e;->$SwitchMap$com$avira$android$ApplicationService$ResetOption:[I

    invoke-virtual {p1}, Lcom/avira/android/h;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 472
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 455
    goto :goto_0

    .line 463
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/avira/android/AviraMobileSecurityActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    sget v2, Lcom/avira/android/ApplicationService;->a:I

    const/high16 v3, 0x10000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 466
    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->d()Landroid/app/AlarmManager;

    move-result-object v2

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x12c

    add-long/2addr v4, v6

    invoke-virtual {v2, v1, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 468
    :pswitch_1
    invoke-static {}, Lcom/avira/android/b;->a()Lcom/avira/android/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/b;->b()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 775
    const-string v0, "device_aministrator_key"

    invoke-static {p0, v0, p1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 776
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->l:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 780
    const-string v0, "anonymous_user_key"

    invoke-static {p0, v0, p1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 781
    return-void
.end method

.method public final c()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->b:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 198
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/avira/android/ApplicationService;->b:Landroid/telephony/TelephonyManager;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->b:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public final d()Landroid/app/AlarmManager;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->c:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 212
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/avira/android/ApplicationService;->c:Landroid/app/AlarmManager;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->c:Landroid/app/AlarmManager;

    return-object v0
.end method

.method public final e()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->h:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 226
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/avira/android/ApplicationService;->h:Landroid/app/NotificationManager;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->h:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public final f()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->f:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 277
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/avira/android/ApplicationService;->f:Landroid/app/admin/DevicePolicyManager;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->f:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 422
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->i:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 423
    return-void
.end method

.method public final g()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->g:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 291
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/avira/android/ApplicationService;->g:Landroid/location/LocationManager;

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->g:Landroid/location/LocationManager;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->k:Lcom/avira/android/g;

    invoke-virtual {v0}, Lcom/avira/android/g;->a()V

    .line 520
    return-void
.end method

.method public final k()V
    .locals 3

    .prologue
    .line 539
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 540
    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 541
    return-void
.end method

.method public final m()V
    .locals 3

    .prologue
    .line 569
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/avira/android/securebrowsing/services/SBBookmarkChangeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    :try_start_0
    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/ApplicationService;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected Error in Stopping Secure Browsing Service."

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final n()V
    .locals 0

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->m()V

    .line 587
    invoke-static {}, Lcom/avira/android/ApplicationService;->l()V

    .line 588
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    new-instance v0, Lcom/avira/android/f;

    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avira/android/f;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avira/android/ApplicationService;->i:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/avira/android/g;

    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/ApplicationService;->j:Landroid/app/ProgressDialog;

    invoke-direct {v0, v1, v2}, Lcom/avira/android/g;-><init>(Landroid/os/Looper;Landroid/app/ProgressDialog;)V

    iput-object v0, p0, Lcom/avira/android/ApplicationService;->k:Lcom/avira/android/g;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avira/android/ApplicationService;->l:Landroid/os/Handler;

    .line 106
    sget-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    invoke-static {v0}, Lcom/avira/android/antivirus/af;->a(Lcom/avira/android/antivirus/ae;)V

    .line 108
    invoke-static {p0}, Lcom/google/android/gms/analytics/c;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/c;->c()Lcom/google/android/gms/analytics/k;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/ApplicationService;->p:Lcom/google/android/gms/analytics/k;

    .line 110
    const-string v0, ""

    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->w()V

    .line 115
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 119
    new-array v0, v3, [Lio/fabric/sdk/android/k;

    const/4 v1, 0x0

    new-instance v2, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v2}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lio/fabric/sdk/android/b;->a(Landroid/content/Context;[Lio/fabric/sdk/android/k;)Lio/fabric/sdk/android/b;

    .line 123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 125
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/avira/android/blacklist/receivers/BLOnSmsBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-virtual {p0}, Lcom/avira/android/ApplicationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 130
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/avira/android/c;

    invoke-direct {v1, p0}, Lcom/avira/android/c;-><init>(Lcom/avira/android/ApplicationService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    invoke-static {p0}, Lcom/avira/android/b/a;->a(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method public final t()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/avira/android/ApplicationService;->o:Lcom/avira/android/antivirus/bc;

    return-object v0
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/avira/android/ApplicationService;->m:Z

    if-nez v0, :cond_0

    .line 735
    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->d()V

    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/ApplicationService;->m:Z

    .line 738
    :cond_0
    return-void
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    .prologue
    .line 742
    const-string v0, "vdf_version_key"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()V
    .locals 2

    .prologue
    .line 748
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    .line 750
    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->getOnDemandVdfVersion()Ljava/lang/String;

    move-result-object v0

    .line 753
    const-string v1, "vdf_version_key"

    invoke-static {p0, v1, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_0
    return-void
.end method

.method public final x()J
    .locals 4

    .prologue
    .line 759
    const-string v0, "vdf_update_time_key"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final y()V
    .locals 3

    .prologue
    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 765
    const-string v2, "vdf_update_time_key"

    invoke-static {p0, v2, v0, v1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 766
    return-void
.end method

.method public final z()Z
    .locals 2

    .prologue
    .line 770
    const-string v0, "device_aministrator_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
