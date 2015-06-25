.class public Lcom/avira/android/blacklist/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALID_RINGER_MODE:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static a:Lcom/avira/android/blacklist/d/a;

.field private static b:I


# instance fields
.field private final c:Lcom/avira/android/blacklist/d/h;

.field private final d:Ljava/util/concurrent/Semaphore;

.field private final e:Landroid/media/AudioManager;

.field private final f:Landroid/telephony/TelephonyManager;

.field private g:Landroid/telephony/PhoneStateListener;

.field private h:Lcom/android/internal/telephony/ITelephony;

.field private i:Lcom/avira/android/blacklist/model/BLContact;

.field private j:Lcom/avira/android/blacklist/d/j;

.field private k:Lcom/avira/android/blacklist/b/f;

.field private l:I

.field private m:Lcom/avira/android/blacklist/d/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/avira/android/blacklist/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/blacklist/d/a;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/avira/android/blacklist/d/a;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/blacklist/d/a;->l:I

    .line 67
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->c()Lcom/avira/android/blacklist/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/d/a;->c:Lcom/avira/android/blacklist/d/h;

    .line 68
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->c()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/d/a;->f:Landroid/telephony/TelephonyManager;

    .line 69
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/avira/android/blacklist/d/a;->e:Landroid/media/AudioManager;

    .line 70
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/a;->d:Ljava/util/concurrent/Semaphore;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/blacklist/d/a;->i:Lcom/avira/android/blacklist/model/BLContact;

    .line 72
    sget-object v0, Lcom/avira/android/blacklist/d/j;->NONE:Lcom/avira/android/blacklist/d/j;

    iput-object v0, p0, Lcom/avira/android/blacklist/d/a;->j:Lcom/avira/android/blacklist/d/j;

    .line 73
    sget-object v0, Lcom/avira/android/blacklist/b/f;->NONE:Lcom/avira/android/blacklist/b/f;

    iput-object v0, p0, Lcom/avira/android/blacklist/d/a;->k:Lcom/avira/android/blacklist/b/f;

    .line 74
    new-instance v0, Lcom/avira/android/blacklist/d/ab;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avira/android/blacklist/d/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/a;->m:Lcom/avira/android/blacklist/d/ab;

    .line 75
    return-void
.end method

.method private declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/avira/android/blacklist/d/a;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(II)V
    .locals 9

    .prologue
    const/high16 v6, 0x10000000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 294
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 296
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->d()V

    .line 329
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    .line 303
    if-le p1, v7, :cond_1

    const v0, 0x7f080234

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 305
    :goto_1
    if-le p0, v7, :cond_2

    const v0, 0x7f080237

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_2
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v4

    const-class v5, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 309
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 310
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v4

    invoke-static {v4, v8, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 314
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0200c0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f08025e

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f08025d

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v1, v5, v7

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 324
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->e()Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.action.BLOCKED_NOTIFICATION_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 303
    :cond_1
    const v0, 0x7f080235

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 305
    :cond_2
    const v0, 0x7f080236

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method private a(Landroid/media/AudioManager;Lcom/android/internal/telephony/ITelephony;)V
    .locals 4

    .prologue
    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    sget v0, Lcom/avira/android/blacklist/d/a;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 443
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    sput v0, Lcom/avira/android/blacklist/d/a;->b:I

    .line 445
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 447
    invoke-interface {p2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_1
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 452
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    sget-object v2, Lcom/avira/android/blacklist/d/a;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avira/android/blacklist/d/a;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/d/a;->a(I)V

    invoke-direct {p0}, Lcom/avira/android/blacklist/d/a;->e()V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/d/a;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 42
    sget-object v0, Lcom/avira/android/blacklist/d/a;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "incoming number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/avira/android/blacklist/d/a;->a(I)V

    invoke-static {}, Lcom/avira/android/antitheft/yell/a;->a()Lcom/avira/android/antitheft/yell/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antitheft/yell/a;->c()V

    invoke-static {}, Lcom/avira/android/antitheft/yell/b;->a()Lcom/avira/android/antitheft/yell/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antitheft/yell/b;->b()V

    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->m:Lcom/avira/android/blacklist/d/ab;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->e:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/avira/android/blacklist/d/a;->f()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avira/android/blacklist/d/a;->a(Landroid/media/AudioManager;Lcom/android/internal/telephony/ITelephony;)V

    sget-object v0, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {p0, v3, v0, v3}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/avira/android/blacklist/d/a;->a(Ljava/lang/String;)Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/avira/android/blacklist/d/a;->e:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/avira/android/blacklist/d/a;->f()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/avira/android/blacklist/d/a;->a(Landroid/media/AudioManager;Lcom/android/internal/telephony/ITelephony;)V

    sget-object v1, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {p0, v0, v1, v3}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->m:Lcom/avira/android/blacklist/d/ab;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/ab;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const-string v5, "display_name LIMIT 1"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->e:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/avira/android/blacklist/d/a;->f()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avira/android/blacklist/d/a;->a(Landroid/media/AudioManager;Lcom/android/internal/telephony/ITelephony;)V

    new-instance v0, Lcom/avira/android/blacklist/model/BLContact;

    invoke-direct {v0, p1}, Lcom/avira/android/blacklist/model/BLContact;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {p0, v0, v1, v3}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/avira/android/blacklist/d/a;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/d/a;->a(I)V

    invoke-direct {p0}, Lcom/avira/android/blacklist/d/a;->e()V

    invoke-static {}, Lcom/avira/android/antitheft/yell/b;->a()Lcom/avira/android/antitheft/yell/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antitheft/yell/b;->c()V

    return-void
.end method

.method public static declared-synchronized c()Lcom/avira/android/blacklist/d/a;
    .locals 2

    .prologue
    .line 195
    const-class v1, Lcom/avira/android/blacklist/d/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/blacklist/d/a;->a:Lcom/avira/android/blacklist/d/a;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/avira/android/blacklist/d/a;

    invoke-direct {v0}, Lcom/avira/android/blacklist/d/a;-><init>()V

    sput-object v0, Lcom/avira/android/blacklist/d/a;->a:Lcom/avira/android/blacklist/d/a;

    .line 199
    :cond_0
    sget-object v0, Lcom/avira/android/blacklist/d/a;->a:Lcom/avira/android/blacklist/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 336
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->e()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 338
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 142
    sget v0, Lcom/avira/android/blacklist/d/a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->e:Landroid/media/AudioManager;

    sget v1, Lcom/avira/android/blacklist/d/a;->b:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 146
    :cond_0
    return-void
.end method

.method private f()Lcom/android/internal/telephony/ITelephony;
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->h:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getITelephony"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 162
    iget-object v1, p0, Lcom/avira/android/blacklist/d/a;->f:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    iput-object v0, p0, Lcom/avira/android/blacklist/d/a;->h:Lcom/android/internal/telephony/ITelephony;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 185
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->h:Lcom/android/internal/telephony/ITelephony;

    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "BLOnCallBroadcastReceiver.onReceive"

    const-string v3, "SecurityException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 170
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "BLOnCallBroadcastReceiver.onReceive"

    const-string v3, "NoSuchMethodException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 172
    :catch_2
    move-exception v0

    .line 174
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "BLOnCallBroadcastReceiver.onReceive"

    const-string v3, "IllegalArgumentException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    :catch_3
    move-exception v0

    .line 178
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "BLOnCallBroadcastReceiver.onReceive"

    const-string v3, "IllegalAccessException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 180
    :catch_4
    move-exception v0

    .line 182
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "BLOnCallBroadcastReceiver.onReceive"

    const-string v3, "InvocationTargetException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/avira/android/blacklist/d/a;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Lcom/avira/android/blacklist/model/BLContact;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->c:Lcom/avira/android/blacklist/d/h;

    invoke-virtual {v0, p1}, Lcom/avira/android/blacklist/d/h;->a(Ljava/lang/String;)Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;)V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public final a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Lcom/avira/android/blacklist/b/f;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/avira/android/blacklist/d/a;->i:Lcom/avira/android/blacklist/model/BLContact;

    .line 103
    iput-object p2, p0, Lcom/avira/android/blacklist/d/a;->j:Lcom/avira/android/blacklist/d/j;

    .line 104
    iput-object p3, p0, Lcom/avira/android/blacklist/d/a;->k:Lcom/avira/android/blacklist/b/f;

    .line 105
    return-void
.end method

.method public final a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->d()Lcom/avira/android/blacklist/d/n;

    move-result-object v0

    if-nez p1, :cond_2

    new-instance v1, Lcom/avira/android/blacklist/model/BLContact;

    invoke-direct {v1}, Lcom/avira/android/blacklist/model/BLContact;-><init>()V

    invoke-virtual {v0, v1, p2, p3}, Lcom/avira/android/blacklist/d/n;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Ljava/lang/String;)Z

    .line 231
    :goto_0
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->d()Lcom/avira/android/blacklist/d/n;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/d/a;->j:Lcom/avira/android/blacklist/d/j;

    if-eq v1, p2, :cond_1

    iget-object v1, p0, Lcom/avira/android/blacklist/d/a;->j:Lcom/avira/android/blacklist/d/j;

    sget-object v2, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/avira/android/blacklist/d/a;->k:Lcom/avira/android/blacklist/b/f;

    sget-object v2, Lcom/avira/android/blacklist/b/f;->ALL:Lcom/avira/android/blacklist/b/f;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/avira/android/blacklist/d/a;->i:Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/n;->a(Lcom/avira/android/blacklist/d/j;)I

    move-result v1

    sget-object v2, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v2}, Lcom/avira/android/blacklist/d/n;->a(Lcom/avira/android/blacklist/d/j;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/avira/android/blacklist/d/a;->a(II)V

    .line 232
    :cond_1
    return-void

    .line 230
    :cond_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/avira/android/blacklist/d/n;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->g:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/avira/android/blacklist/d/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avira/android/blacklist/d/b;-><init>(Lcom/avira/android/blacklist/d/a;B)V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/a;->g:Landroid/telephony/PhoneStateListener;

    .line 115
    iget-object v0, p0, Lcom/avira/android/blacklist/d/a;->f:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/avira/android/blacklist/d/a;->g:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 117
    :cond_0
    return-void
.end method
