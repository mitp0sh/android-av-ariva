.class public final Lcom/avira/android/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CELLTOWER:Ljava/lang/String; = "CELLTOWER"

.field public static final INVALID_VALUE:Ljava/lang/String; = "-1"

.field private static final MAX_INITIAL_WAIT:I = 0x4e20

.field private static final MAX_LOCATING_TIME:I = 0x1d4c0

.field private static final MAX_RETRY_LIMIT:I = 0x3

.field private static final MIN_ACCURACY:F = 15.0f

.field public static final NO_LOCATOR:Ljava/lang/String; = "NO LOCATOR"

.field private static final TAG:Ljava/lang/String; = "RMTLOC"

.field private static final TIME_FRAME:I = 0xea60

.field private static l:Lcom/avira/android/c/a;

.field private static m:Ljava/lang/Object;


# instance fields
.field a:Landroid/location/LocationListener;

.field b:Landroid/location/LocationListener;

.field private final c:Ljava/text/SimpleDateFormat;

.field private final d:Ljava/util/Date;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/location/LocationManager;

.field private i:Ljava/util/Timer;

.field private j:Ljava/util/Timer;

.field private k:Lcom/avira/android/remotecomponents/CommandIntegrator;

.field private n:Landroid/location/Location;

.field private o:Landroid/location/Location;

.field private p:Lcom/avira/android/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avira/android/c/a;->m:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/avira/android/c/a;->c:Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/avira/android/c/a;->d:Ljava/util/Date;

    .line 56
    iput-boolean v3, p0, Lcom/avira/android/c/a;->e:Z

    .line 57
    iput-boolean v3, p0, Lcom/avira/android/c/a;->f:Z

    .line 58
    iput-boolean v3, p0, Lcom/avira/android/c/a;->g:Z

    .line 386
    new-instance v0, Lcom/avira/android/c/f;

    invoke-direct {v0, p0}, Lcom/avira/android/c/f;-><init>(Lcom/avira/android/c/a;)V

    iput-object v0, p0, Lcom/avira/android/c/a;->a:Landroid/location/LocationListener;

    .line 440
    new-instance v0, Lcom/avira/android/c/g;

    invoke-direct {v0, p0}, Lcom/avira/android/c/g;-><init>(Lcom/avira/android/c/a;)V

    iput-object v0, p0, Lcom/avira/android/c/a;->b:Landroid/location/LocationListener;

    .line 87
    return-void
.end method

.method public static a()Lcom/avira/android/c/a;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/avira/android/c/a;->l:Lcom/avira/android/c/a;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/avira/android/c/a;

    invoke-direct {v0}, Lcom/avira/android/c/a;-><init>()V

    sput-object v0, Lcom/avira/android/c/a;->l:Lcom/avira/android/c/a;

    .line 100
    :cond_0
    sget-object v0, Lcom/avira/android/c/a;->l:Lcom/avira/android/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/c/a;)Lcom/avira/android/remotecomponents/CommandIntegrator;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avira/android/c/a;->k:Lcom/avira/android/remotecomponents/CommandIntegrator;

    return-object v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 7

    .prologue
    .line 150
    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    const-string v3, "gps"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 172
    :goto_0
    iget-object v4, p0, Lcom/avira/android/c/a;->p:Lcom/avira/android/c/h;

    if-eqz v4, :cond_2

    .line 174
    iget-object v4, p0, Lcom/avira/android/c/a;->p:Lcom/avira/android/c/h;

    invoke-interface {v4, v3, v2, v1, v0}, Lcom/avira/android/c/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_1
    return-void

    .line 161
    :cond_0
    const-string v3, "CELLTOWER"

    goto :goto_0

    .line 166
    :cond_1
    const-string v2, "-1"

    .line 167
    const-string v1, "-1"

    .line 168
    const-string v0, "-1"

    .line 169
    const-string v3, "NO LOCATOR"

    goto :goto_0

    .line 179
    :cond_2
    iget-object v5, p0, Lcom/avira/android/c/a;->k:Lcom/avira/android/remotecomponents/CommandIntegrator;

    const-string v6, "statusCode"

    const-string v4, "NO LOCATOR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "FAILED"

    :goto_2
    invoke-virtual {v5, v6, v4}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v4, p0, Lcom/avira/android/c/a;->k:Lcom/avira/android/remotecomponents/CommandIntegrator;

    const-string v5, "latitude"

    invoke-virtual {v4, v5, v2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/avira/android/c/a;->k:Lcom/avira/android/remotecomponents/CommandIntegrator;

    const-string v4, "longitude"

    invoke-virtual {v2, v4, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/avira/android/c/a;->k:Lcom/avira/android/remotecomponents/CommandIntegrator;

    const-string v2, "accuracy"

    invoke-virtual {v1, v2, v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/avira/android/c/a;->k:Lcom/avira/android/remotecomponents/CommandIntegrator;

    const-string v1, "locatorType"

    invoke-virtual {v0, v1, v3}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/avira/android/c/a;->k:Lcom/avira/android/remotecomponents/CommandIntegrator;

    const-string v1, "batteryLevel"

    invoke-static {}, Lcom/avira/android/device/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "NO LOCATOR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 190
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avira/android/common/a/b;->c(Z)V

    .line 193
    :cond_3
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    iget-object v0, p0, Lcom/avira/android/c/a;->k:Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-static {v0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    goto :goto_1

    .line 179
    :cond_4
    const-string v4, "OK"

    goto :goto_2
.end method

.method static synthetic a(Lcom/avira/android/c/a;Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 33
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/avira/android/c/a;->a(Landroid/location/Location;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    new-instance v1, Lcom/avira/android/c/b;

    invoke-direct {v1, p0}, Lcom/avira/android/c/b;-><init>(Lcom/avira/android/c/a;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Lcom/avira/android/remotecomponents/CommandIntegrator;Lcom/avira/android/c/h;Z)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 246
    iput-boolean p3, p0, Lcom/avira/android/c/a;->g:Z

    .line 247
    iput-object p1, p0, Lcom/avira/android/c/a;->k:Lcom/avira/android/remotecomponents/CommandIntegrator;

    .line 248
    iput-object p2, p0, Lcom/avira/android/c/a;->p:Lcom/avira/android/c/h;

    .line 250
    iget-object v0, p0, Lcom/avira/android/c/a;->k:Lcom/avira/android/remotecomponents/CommandIntegrator;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/avira/android/c/a;->k:Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-virtual {v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->b()V

    .line 255
    :cond_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->g()Landroid/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/c/a;->h:Landroid/location/LocationManager;

    .line 257
    iget-object v0, p0, Lcom/avira/android/c/a;->h:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avira/android/c/a;->e:Z

    .line 258
    iget-object v0, p0, Lcom/avira/android/c/a;->h:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avira/android/c/a;->f:Z

    .line 260
    iget-boolean v0, p0, Lcom/avira/android/c/a;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/avira/android/c/a;->f:Z

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p3, :cond_5

    iget-boolean v0, p0, Lcom/avira/android/c/a;->f:Z

    if-nez v0, :cond_5

    .line 262
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avira/android/c/a;->a(Landroid/location/Location;)V

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/avira/android/c/a;->h:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/c/a;->o:Landroid/location/Location;

    .line 304
    iget-object v0, p0, Lcom/avira/android/c/a;->h:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/c/a;->n:Landroid/location/Location;

    .line 307
    iget-boolean v0, p0, Lcom/avira/android/c/a;->e:Z

    if-eqz v0, :cond_3

    if-nez p3, :cond_3

    .line 309
    iget-object v0, p0, Lcom/avira/android/c/a;->h:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lcom/avira/android/c/a;->a:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 311
    :cond_3
    iget-boolean v0, p0, Lcom/avira/android/c/a;->f:Z

    if-eqz v0, :cond_4

    .line 313
    iget-object v0, p0, Lcom/avira/android/c/a;->h:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lcom/avira/android/c/a;->b:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 315
    :cond_4
    return-void

    .line 266
    :cond_5
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/avira/android/c/a;->j:Ljava/util/Timer;

    .line 267
    iget-object v0, p0, Lcom/avira/android/c/a;->j:Ljava/util/Timer;

    new-instance v1, Lcom/avira/android/c/c;

    invoke-direct {v1, p0}, Lcom/avira/android/c/c;-><init>(Lcom/avira/android/c/a;)V

    const-wide/16 v6, 0x4e20

    invoke-virtual {v0, v1, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 291
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/avira/android/c/a;->i:Ljava/util/Timer;

    .line 292
    iget-object v0, p0, Lcom/avira/android/c/a;->i:Ljava/util/Timer;

    new-instance v1, Lcom/avira/android/c/e;

    invoke-direct {v1, p0}, Lcom/avira/android/c/e;-><init>(Lcom/avira/android/c/a;)V

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v0, v1, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method protected static a(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 327
    if-nez p1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return v1

    .line 334
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 335
    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v3, v1

    .line 336
    :goto_1
    const-wide/32 v6, -0xea60

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v1

    .line 337
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move v6, v1

    .line 341
    :goto_3
    if-nez v3, :cond_0

    .line 346
    if-eqz v0, :cond_5

    move v1, v2

    .line 348
    goto :goto_0

    :cond_2
    move v3, v2

    .line 335
    goto :goto_1

    :cond_3
    move v0, v2

    .line 336
    goto :goto_2

    :cond_4
    move v6, v2

    .line 337
    goto :goto_3

    .line 352
    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 353
    if-lez v0, :cond_8

    move v5, v1

    .line 354
    :goto_4
    if-gez v0, :cond_9

    move v4, v1

    .line 355
    :goto_5
    const/16 v3, 0xc8

    if-le v0, v3, :cond_a

    move v0, v1

    .line 358
    :goto_6
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    if-nez v3, :cond_c

    if-nez v7, :cond_b

    move v3, v1

    .line 361
    :goto_7
    if-nez v4, :cond_0

    .line 365
    if-eqz v6, :cond_6

    if-eqz v5, :cond_0

    .line 369
    :cond_6
    if-eqz v6, :cond_7

    if-nez v0, :cond_7

    if-nez v3, :cond_0

    :cond_7
    move v1, v2

    .line 373
    goto :goto_0

    :cond_8
    move v5, v2

    .line 353
    goto :goto_4

    :cond_9
    move v4, v2

    .line 354
    goto :goto_5

    :cond_a
    move v0, v2

    .line 355
    goto :goto_6

    :cond_b
    move v3, v2

    .line 358
    goto :goto_7

    :cond_c
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_7
.end method

.method static synthetic b(Lcom/avira/android/c/a;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/avira/android/c/a;->o:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/avira/android/c/a;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/android/c/a;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avira/android/c/a;->a(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic c(Lcom/avira/android/c/a;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avira/android/c/a;->a:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/c/a;->h:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/avira/android/c/a;->a:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lcom/avira/android/c/a;->b:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/c/a;->h:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/avira/android/c/a;->b:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/avira/android/c/a;Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 33
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/avira/android/c/a;->d:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "RMTLOC"

    const-string v1, "[%s] location found: (%.10f, %.10f) accuracy %.2fm %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avira/android/c/a;->c:Ljava/text/SimpleDateFormat;

    iget-object v5, p0, Lcom/avira/android/c/a;->d:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/avira/android/c/a;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avira/android/c/a;->n:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic d(Lcom/avira/android/c/a;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/avira/android/c/a;->n:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic e(Lcom/avira/android/c/a;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avira/android/c/a;->h:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic f(Lcom/avira/android/c/a;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avira/android/c/a;->j:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic g(Lcom/avira/android/c/a;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avira/android/c/a;->o:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic h(Lcom/avira/android/c/a;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/avira/android/c/a;->e:Z

    return v0
.end method

.method static synthetic i(Lcom/avira/android/c/a;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/avira/android/c/a;->g:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/avira/android/c/h;)V
    .locals 2

    .prologue
    .line 208
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/avira/android/c/a;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;Lcom/avira/android/c/h;Z)V

    .line 209
    return-void
.end method

.method public final a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 2

    .prologue
    .line 230
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/avira/android/c/a;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;Lcom/avira/android/c/h;Z)V

    .line 231
    return-void
.end method

.method public final b(Lcom/avira/android/c/h;)V
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/avira/android/c/a;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;Lcom/avira/android/c/h;Z)V

    .line 220
    return-void
.end method
