.class public Lcom/avira/android/device/DeviceInfoUpdateService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final DEBUG_INTERVAL:J = 0x2710L

.field private static final DEFAULT_INTERVAL:J = 0x5265c00L

.field private static final DEVICE_INFO_REQ:I = 0x6e35f

.field private static final PREFS_LAST_DEVINFO_TRIGGER_DATE:Ljava/lang/String; = "prefs_last_devinfo_trigger_date"

.field private static final SCREEN_NAME:Ljava/lang/String; = "ActivePing"

.field private static final TAG:Ljava/lang/String;

.field public static a:Z


# instance fields
.field private final b:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/avira/android/device/DeviceInfoUpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/device/DeviceInfoUpdateService;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/device/DeviceInfoUpdateService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/avira/android/device/DeviceInfoUpdateService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/avira/android/device/DeviceInfoUpdateService;->b:Ljava/text/SimpleDateFormat;

    .line 47
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-static {}, Lcom/avira/android/device/DeviceInfoUpdateService;->b()Landroid/content/Intent;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static b()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/device/DeviceInfoUpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    .prologue
    const-wide/32 v12, 0x5265c00

    const-wide/16 v4, 0x2710

    .line 52
    iget-object v0, p0, Lcom/avira/android/device/DeviceInfoUpdateService;->b:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "prefs_last_devinfo_trigger_date"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/avira/android/device/DeviceInfoUpdateService;->a:Z

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v1, "prefs_last_devinfo_trigger_date"

    invoke-static {p0, v1, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/avira/android/utilities/l;->a()V

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avira/android/device/e;

    invoke-direct {v1, p0}, Lcom/avira/android/device/e;-><init>(Lcom/avira/android/device/DeviceInfoUpdateService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->a()Lcom/google/android/gms/analytics/k;

    move-result-object v0

    .line 91
    const-string v1, "ActivePing"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/k;->a(Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/google/android/gms/analytics/f;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/f;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/f;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/k;->a(Ljava/util/Map;)V

    .line 94
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const v2, 0x6e35f

    invoke-static {}, Lcom/avira/android/device/DeviceInfoUpdateService;->b()Landroid/content/Intent;

    move-result-object v3

    const/high16 v6, 0x8000000

    invoke-static {v0, v2, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    const v2, 0x4a5bba00    # 3600000.0f

    mul-float/2addr v1, v2

    float-to-long v8, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sget-boolean v1, Lcom/avira/android/device/DeviceInfoUpdateService;->a:Z

    if-eqz v1, :cond_1

    move-wide v2, v4

    :goto_1
    add-long/2addr v2, v10

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-boolean v1, Lcom/avira/android/device/DeviceInfoUpdateService;->a:Z

    if-eqz v1, :cond_2

    :goto_2
    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v1, Lcom/avira/android/device/DeviceInfoUpdateService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "alarm set for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd-MM-yyyy HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    add-long v2, v12, v8

    goto :goto_1

    :cond_2
    add-long v4, v12, v8

    goto :goto_2
.end method
