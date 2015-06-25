.class public Lcom/avira/android/common/gcm/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_NUMBER_OF_REGISTER_ATTEMPTS:I = 0x5

.field private static final MIN_BACKOFF_INTERVAL:I = 0xbb8

.field private static final REGISTER_ALARM_ID:I = 0x277737

.field public static final SENDER_ID:Ljava/lang/String; = "550938343285"

.field private static b:Lcom/avira/android/common/gcm/b;


# instance fields
.field public a:Z

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/common/gcm/GcmManager$IGcmDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:I

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/avira/android/common/gcm/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/common/gcm/b;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "settingC2DMRegistrationId"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/avira/android/database/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/common/gcm/b;->d:Ljava/lang/String;

    .line 61
    const/4 v0, 0x5

    iput v0, p0, Lcom/avira/android/common/gcm/b;->e:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/common/gcm/b;->c:Ljava/util/ArrayList;

    .line 63
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/avira/android/common/gcm/b;->f:J

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/common/gcm/b;->a:Z

    .line 65
    return-void
.end method

.method public static a()Lcom/avira/android/common/gcm/b;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/avira/android/common/gcm/b;->b:Lcom/avira/android/common/gcm/b;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/avira/android/common/gcm/b;

    invoke-direct {v0}, Lcom/avira/android/common/gcm/b;-><init>()V

    sput-object v0, Lcom/avira/android/common/gcm/b;->b:Lcom/avira/android/common/gcm/b;

    .line 74
    :cond_0
    sget-object v0, Lcom/avira/android/common/gcm/b;->b:Lcom/avira/android/common/gcm/b;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/common/gcm/b;)V
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/common/gcm/b;->d:Ljava/lang/String;

    sget-object v0, Lcom/avira/android/common/gcm/b;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/avira/android/common/gcm/b;->e()V

    return-void
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 199
    const-string v0, "settingC2DMRegistrationId"

    invoke-static {v0, p0}, Lcom/avira/android/database/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/avira/android/common/gcm/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/avira/android/common/gcm/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/avira/android/common/gcm/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    :cond_1
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/common/gcm/GcmRegisterIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/common/gcm/b;->a:Z

    .line 124
    iget v0, p0, Lcom/avira/android/common/gcm/b;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/avira/android/common/gcm/b;->e:I

    .line 125
    return-void
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 79
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/avira/android/common/gcm/b;->LOG_TAG:Ljava/lang/String;

    .line 81
    iget-boolean v0, p0, Lcom/avira/android/common/gcm/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 117
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "app_updated_issue_gcm_registration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/avira/android/common/gcm/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Lcom/avira/android/common/gcm/c;

    invoke-direct {v0, p0}, Lcom/avira/android/common/gcm/c;-><init>(Lcom/avira/android/common/gcm/b;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/avira/android/common/gcm/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 101
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/avira/android/common/gcm/b;->e()V

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/avira/android/common/gcm/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avira/android/common/gcm/b;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_3
    invoke-direct {p0}, Lcom/avira/android/common/gcm/b;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 224
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/avira/android/common/gcm/b;->e:I

    if-lez v0, :cond_0

    .line 226
    sget-object v0, Lcom/avira/android/common/gcm/b;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remaining register attepts: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/avira/android/common/gcm/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lcom/avira/android/common/gcm/b;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current backoff: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/avira/android/common/gcm/b;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/avira/android/common/gcm/GcmRegisterIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const v2, 0x277737

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->d()Landroid/app/AlarmManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/avira/android/common/gcm/b;->f:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v6, v2, v3, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-wide v0, p0, Lcom/avira/android/common/gcm/b;->f:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avira/android/common/gcm/b;->f:J

    iget v0, p0, Lcom/avira/android/common/gcm/b;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/avira/android/common/gcm/b;->e:I

    .line 236
    :goto_0
    iput-boolean v6, p0, Lcom/avira/android/common/gcm/b;->a:Z

    .line 237
    sget-object v0, Lcom/avira/android/common/gcm/b;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GCM registration failed with error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    return-void

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lcom/avira/android/common/gcm/b;->d(Ljava/lang/String;)V

    .line 231
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/common/gcm/b;->d:Ljava/lang/String;

    .line 232
    const/4 v0, 0x5

    iput v0, p0, Lcom/avira/android/common/gcm/b;->e:I

    .line 233
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/avira/android/common/gcm/b;->f:J

    goto :goto_0
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 243
    iput-object p1, p0, Lcom/avira/android/common/gcm/b;->d:Ljava/lang/String;

    .line 244
    const/4 v0, 0x5

    iput v0, p0, Lcom/avira/android/common/gcm/b;->e:I

    .line 245
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/avira/android/common/gcm/b;->f:J

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avira/android/common/gcm/b;->d(Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "app_updated_issue_gcm_registration"

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 249
    iput-boolean v2, p0, Lcom/avira/android/common/gcm/b;->a:Z

    .line 250
    sget-object v0, Lcom/avira/android/common/gcm/b;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device registered, registration ID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    return-void
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/common/gcm/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avira/android/common/gcm/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/avira/android/common/gcm/b;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "settingC2DMRegistrationId"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/avira/android/database/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
