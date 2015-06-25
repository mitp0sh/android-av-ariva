.class public Lcom/avira/applock/service/AppLockerService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final APP_IDLE_TIMEOUT_PERIOD:J = 0x493e0L

.field public static final CLASS_NAME_NATIVE_SETTINGS_DEVICE_ADMIN:Ljava/lang/String; = "com.android.settings.DeviceAdminAdd"

.field private static final FOREGROUND_CHECK_DELAY_PERIOD:J = 0x1f4L

.field public static final PACKAGE_NAME_NATIVE_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String;

.field private static a:Z


# instance fields
.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/os/PowerManager;

.field private e:Lcom/avira/applock/b/c;

.field private f:Landroid/content/SharedPreferences;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/applock/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Landroid/content/IntentFilter;

.field private j:Ljava/lang/Thread;

.field private k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/avira/applock/service/AppLockerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/applock/service/AppLockerService;->TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/applock/service/AppLockerService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/applock/service/AppLockerService;->b:Z

    .line 58
    new-instance v0, Lcom/avira/applock/service/a;

    invoke-direct {v0, p0}, Lcom/avira/applock/service/a;-><init>(Lcom/avira/applock/service/AppLockerService;)V

    iput-object v0, p0, Lcom/avira/applock/service/AppLockerService;->k:Ljava/lang/Runnable;

    .line 471
    return-void
.end method

.method static synthetic a(Lcom/avira/applock/service/AppLockerService;Lcom/avira/applock/b/c;)Lcom/avira/applock/b/c;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/avira/applock/service/AppLockerService;->e:Lcom/avira/applock/b/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avira/applock/service/AppLockerService;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->j:Ljava/lang/Thread;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->j:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->d:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 327
    new-instance v0, Lcom/avira/applock/b/c;

    invoke-direct {v0}, Lcom/avira/applock/b/c;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/service/AppLockerService;->e:Lcom/avira/applock/b/c;

    .line 330
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/avira/applock/service/AppLockerService;->k:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/avira/applock/service/AppLockerService;->j:Ljava/lang/Thread;

    .line 331
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 333
    :cond_1
    return-void

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->d:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 514
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/applock/service/AppLockerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 515
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 497
    invoke-static {p0}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/avira/applock/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/avira/applock/d/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    sput-boolean p1, Lcom/avira/applock/service/AppLockerService;->a:Z

    .line 503
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/applock/service/AppLockerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 505
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avira/applock/service/AppLockerService;Lcom/avira/applock/b/c;Lcom/avira/applock/b/c;Z)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-virtual {p2}, Lcom/avira/applock/b/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/avira/applock/b/c;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/b/d;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/avira/applock/b/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avira/applock/b/d;->a()Z

    move-result v6

    invoke-virtual {v0, v3}, Lcom/avira/applock/b/d;->a(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v0, v3}, Lcom/avira/applock/b/d;->c(Ljava/lang/String;)Z

    move-result v8

    if-nez v6, :cond_2

    if-nez v7, :cond_2

    if-eqz v8, :cond_2

    move v0, v1

    :goto_0
    sget-object v3, Lcom/avira/applock/service/AppLockerService;->TAG:Ljava/lang/String;

    const-string v9, "needToLockApp() appNotUnlocked %1$s, classNotWhiteListed %2$s, isClassLocked %3$s"

    const/4 v3, 0x3

    new-array v10, v3, [Ljava/lang/Object;

    if-nez v6, :cond_3

    move v3, v1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v10, v2

    if-nez v7, :cond_4

    move v3, v1

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v10, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_3
    sget-object v3, Lcom/avira/applock/service/AppLockerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "needToLockApp() result "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/avira/applock/service/AppLockerService;->b:Z

    invoke-static {p0, v4}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/applock/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    invoke-direct {p0, v0}, Lcom/avira/applock/service/AppLockerService;->a(Ljava/lang/Class;)V

    :goto_4
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/avira/applock/b/c;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/avira/applock/b/d;->d()V

    iget-object v4, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_0
    sget-object v0, Lcom/avira/applock/service/AppLockerService;->TAG:Ljava/lang/String;

    const-string v0, "Package change detected: previousPackageName %1$s, currentPackageName %2$s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {p2}, Lcom/avira/applock/b/c;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    const-class v0, Lcom/avira/applock/activities/LockScreenActivity;

    invoke-direct {p0, v0}, Lcom/avira/applock/service/AppLockerService;->a(Ljava/lang/Class;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/b/d;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/avira/applock/b/d;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/avira/applock/b/d;->e()V

    iget-object v3, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_7
    iput-boolean v2, p0, Lcom/avira/applock/service/AppLockerService;->b:Z

    goto :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_3
.end method

.method private a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, v0}, Lcom/avira/applock/service/AppLockerService;->startActivity(Landroid/content/Intent;)V

    .line 463
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/avira/applock/b/d;

    invoke-direct {v0}, Lcom/avira/applock/b/d;-><init>()V

    .line 231
    invoke-virtual {v0, p2}, Lcom/avira/applock/b/d;->d(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 237
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avira/applock/b/c;Lcom/avira/applock/b/c;)Z
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/avira/applock/b/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avira/applock/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/avira/applock/service/AppLockerService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->c:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->j:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/applock/b/d;

    invoke-virtual {v1}, Lcom/avira/applock/b/d;->c()V

    iget-object v3, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 348
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/avira/applock/b/c;Lcom/avira/applock/b/c;)Z
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/avira/applock/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avira/applock/b/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/avira/applock/service/AppLockerService;)Lcom/avira/applock/b/c;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->e:Lcom/avira/applock/b/c;

    return-object v0
.end method

.method static synthetic d(Lcom/avira/applock/service/AppLockerService;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/avira/applock/service/AppLockerService;->b:Z

    return v0
.end method

.method static synthetic e(Lcom/avira/applock/service/AppLockerService;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/avira/applock/service/AppLockerService;->a()V

    return-void
.end method

.method static synthetic f(Lcom/avira/applock/service/AppLockerService;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/avira/applock/service/AppLockerService;->b()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 95
    iput-object p0, p0, Lcom/avira/applock/service/AppLockerService;->c:Landroid/content/Context;

    .line 96
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/avira/applock/service/AppLockerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/avira/applock/service/AppLockerService;->d:Landroid/os/PowerManager;

    .line 97
    invoke-static {p0}, Lcom/avira/applock/d/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    .line 100
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.DeviceAdminAdd"

    invoke-direct {p0, v0, v1}, Lcom/avira/applock/service/AppLockerService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-boolean v0, Lcom/avira/applock/service/AppLockerService;->a:Z

    if-eqz v0, :cond_0

    .line 105
    sput-boolean v3, Lcom/avira/applock/service/AppLockerService;->a:Z

    .line 106
    invoke-virtual {p0}, Lcom/avira/applock/service/AppLockerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/avira/applock/b/d;->b()V

    iget-object v2, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 110
    :cond_0
    new-instance v0, Lcom/avira/applock/service/b;

    invoke-direct {v0, p0, v3}, Lcom/avira/applock/service/b;-><init>(Lcom/avira/applock/service/AppLockerService;B)V

    iput-object v0, p0, Lcom/avira/applock/service/AppLockerService;->h:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/service/AppLockerService;->i:Landroid/content/IntentFilter;

    .line 112
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->i:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->i:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->h:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/avira/applock/service/AppLockerService;->i:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/avira/applock/service/AppLockerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/service/AppLockerService;->f:Landroid/content/SharedPreferences;

    .line 117
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 118
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/avira/applock/service/AppLockerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    iget-object v0, p0, Lcom/avira/applock/service/AppLockerService;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 141
    invoke-direct {p0}, Lcom/avira/applock/service/AppLockerService;->b()V

    .line 142
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    const-string v0, "applock_selection_map_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p0}, Lcom/avira/applock/d/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/service/AppLockerService;->g:Ljava/util/HashMap;

    .line 154
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.DeviceAdminAdd"

    invoke-direct {p0, v0, v1}, Lcom/avira/applock/service/AppLockerService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/avira/applock/service/AppLockerService;->a()V

    .line 131
    const/4 v0, 0x1

    return v0
.end method
