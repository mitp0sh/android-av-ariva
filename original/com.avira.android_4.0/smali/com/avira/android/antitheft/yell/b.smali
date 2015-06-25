.class public final Lcom/avira/android/antitheft/yell/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SCREAM_DURATION_MILLISECONDS:J = 0x4e20L

.field private static final SCREAM_TONE_FILE:Ljava/lang/String; = "alarm.mp3"

.field private static final TAG:Ljava/lang/String; = "RMTSCRM"

.field private static g:Lcom/avira/android/antitheft/yell/b;


# instance fields
.field private a:J

.field private final b:Landroid/content/Context;

.field private final c:Lcom/avira/android/antitheft/yell/e;

.field private d:Landroid/content/res/AssetFileDescriptor;

.field private e:Lcom/avira/android/remotecomponents/CommandIntegrator;

.field private f:Ljava/util/Timer;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avira/android/antitheft/yell/b;->a:J

    .line 31
    iput-object v2, p0, Lcom/avira/android/antitheft/yell/b;->d:Landroid/content/res/AssetFileDescriptor;

    .line 32
    iput-object v2, p0, Lcom/avira/android/antitheft/yell/b;->e:Lcom/avira/android/remotecomponents/CommandIntegrator;

    .line 33
    iput-object v2, p0, Lcom/avira/android/antitheft/yell/b;->f:Ljava/util/Timer;

    .line 41
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/yell/b;->b:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/avira/android/antitheft/yell/e;->b()Lcom/avira/android/antitheft/yell/e;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/yell/b;->c:Lcom/avira/android/antitheft/yell/e;

    .line 43
    return-void
.end method

.method public static a()Lcom/avira/android/antitheft/yell/b;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/avira/android/antitheft/yell/b;->g:Lcom/avira/android/antitheft/yell/b;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/avira/android/antitheft/yell/b;

    invoke-direct {v0}, Lcom/avira/android/antitheft/yell/b;-><init>()V

    sput-object v0, Lcom/avira/android/antitheft/yell/b;->g:Lcom/avira/android/antitheft/yell/b;

    .line 56
    :cond_0
    sget-object v0, Lcom/avira/android/antitheft/yell/b;->g:Lcom/avira/android/antitheft/yell/b;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/antitheft/yell/b;)Lcom/avira/android/remotecomponents/CommandIntegrator;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/b;->e:Lcom/avira/android/remotecomponents/CommandIntegrator;

    return-object v0
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/avira/android/antitheft/yell/b;->d()V

    .line 190
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antitheft/yell/b;->f:Ljava/util/Timer;

    .line 191
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/b;->f:Ljava/util/Timer;

    new-instance v1, Lcom/avira/android/antitheft/yell/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/avira/android/antitheft/yell/d;-><init>(Lcom/avira/android/antitheft/yell/b;B)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 192
    return-void
.end method

.method static synthetic b(Lcom/avira/android/antitheft/yell/b;)Lcom/avira/android/antitheft/yell/e;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/b;->c:Lcom/avira/android/antitheft/yell/e;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/b;->f:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/b;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x4e20

    .line 66
    iput-object p1, p0, Lcom/avira/android/antitheft/yell/b;->e:Lcom/avira/android/remotecomponents/CommandIntegrator;

    .line 69
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/b;->c:Lcom/avira/android/antitheft/yell/e;

    new-instance v1, Lcom/avira/android/antitheft/yell/c;

    invoke-direct {v1, p0}, Lcom/avira/android/antitheft/yell/c;-><init>(Lcom/avira/android/antitheft/yell/b;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/antitheft/yell/e;->a(Lcom/avira/android/antitheft/yell/h;)V

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "alarm.mp3"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/yell/b;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "RMTSCRM"

    const-string v1, "mAssetFileDescriptor assigned value."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/avira/android/antitheft/yell/b;->c:Lcom/avira/android/antitheft/yell/e;

    iget-object v1, p0, Lcom/avira/android/antitheft/yell/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/avira/android/antitheft/yell/b;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/antitheft/yell/e;->a(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avira/android/antitheft/yell/b;->a:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v4, v5}, Lcom/avira/android/antitheft/yell/b;->a(J)V

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "RMTSCRM"

    const-string v1, "setupScreamTimeout called."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "RMTSCRM"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v4, v5}, Lcom/avira/android/antitheft/yell/b;->a(J)V

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "RMTSCRM"

    const-string v1, "setupScreamTimeout called."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "RMTSCRM"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, v4, v5}, Lcom/avira/android/antitheft/yell/b;->a(J)V

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "RMTSCRM"

    const-string v1, "setupScreamTimeout called."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "RMTSCRM"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-direct {p0, v4, v5}, Lcom/avira/android/antitheft/yell/b;->a(J)V

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "RMTSCRM"

    const-string v1, "setupScreamTimeout called."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v4, v5}, Lcom/avira/android/antitheft/yell/b;->a(J)V

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v1, "RMTSCRM"

    const-string v2, "setupScreamTimeout called."

    invoke-static {v1, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/avira/android/antitheft/yell/b;->d()V

    .line 138
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/b;->c:Lcom/avira/android/antitheft/yell/e;

    invoke-virtual {v0}, Lcom/avira/android/antitheft/yell/e;->c()V

    .line 139
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    iget-wide v2, p0, Lcom/avira/android/antitheft/yell/b;->a:J

    sub-long/2addr v0, v2

    .line 158
    const-wide/16 v2, 0x4e20

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 161
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "RMTSCRM"

    const-string v1, "PAUSED time exceeds Duration, Abort Resume Scream"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/avira/android/antitheft/yell/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "alarm.mp3"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/avira/android/antitheft/yell/b;->d:Landroid/content/res/AssetFileDescriptor;

    .line 165
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v2, "RMTSCRM"

    const-string v3, "mAssetFileDescriptor assigned value."

    invoke-static {v2, v3}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/avira/android/antitheft/yell/b;->c:Lcom/avira/android/antitheft/yell/e;

    iget-object v3, p0, Lcom/avira/android/antitheft/yell/b;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/avira/android/antitheft/yell/b;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/antitheft/yell/e;->a(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;)Z

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/avira/android/antitheft/yell/b;->a(J)V

    .line 168
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "RMTSCRM"

    const-string v1, "setupScreamTimeout called."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "RMTSCRM"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 176
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "RMTSCRM"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    :catch_2
    move-exception v0

    .line 180
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "RMTSCRM"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
