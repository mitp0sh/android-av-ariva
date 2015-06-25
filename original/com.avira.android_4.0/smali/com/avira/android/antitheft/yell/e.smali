.class public Lcom/avira/android/antitheft/yell/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static d:Lcom/avira/android/antitheft/yell/e;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private e:Landroid/media/MediaPlayer;

.field private f:Landroid/media/AudioManager;

.field private g:Lcom/avira/android/antitheft/yell/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/avira/android/antitheft/yell/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/avira/android/antitheft/yell/e;->a:I

    .line 22
    iput-boolean v0, p0, Lcom/avira/android/antitheft/yell/e;->b:Z

    .line 23
    iput-boolean v0, p0, Lcom/avira/android/antitheft/yell/e;->c:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/antitheft/yell/e;->g:Lcom/avira/android/antitheft/yell/h;

    .line 35
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/avira/android/antitheft/yell/e;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static a()Lcom/avira/android/antitheft/yell/e;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/avira/android/antitheft/yell/e;

    invoke-direct {v0}, Lcom/avira/android/antitheft/yell/e;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/antitheft/yell/e;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/avira/android/antitheft/yell/e;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/antitheft/yell/e;ZZ)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/avira/android/antitheft/yell/e;->a(ZZ)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->g:Lcom/avira/android/antitheft/yell/h;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->g:Lcom/avira/android/antitheft/yell/h;

    invoke-interface {v0, p1}, Lcom/avira/android/antitheft/yell/h;->a(Z)V

    .line 298
    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 225
    if-eqz p1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->f:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/avira/android/antitheft/yell/e;->f:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/avira/android/antitheft/yell/e;->f:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v1, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setStreamVolume to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    if-eqz p2, :cond_1

    .line 231
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->f:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->f:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v1, "setMode and setSpeakerphoneOn done."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v1, "setVolumeSettings done."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public static b()Lcom/avira/android/antitheft/yell/e;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/avira/android/antitheft/yell/e;->d:Lcom/avira/android/antitheft/yell/e;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/avira/android/antitheft/yell/e;

    invoke-direct {v0}, Lcom/avira/android/antitheft/yell/e;-><init>()V

    sput-object v0, Lcom/avira/android/antitheft/yell/e;->d:Lcom/avira/android/antitheft/yell/e;

    .line 49
    :cond_0
    sget-object v0, Lcom/avira/android/antitheft/yell/e;->d:Lcom/avira/android/antitheft/yell/e;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/android/antitheft/yell/e;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/avira/android/antitheft/yell/e;->e()V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;)Z
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    .line 139
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/avira/android/antitheft/yell/e;->f:Landroid/media/AudioManager;

    .line 140
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->f:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/avira/android/antitheft/yell/e;->a:I

    .line 141
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAudioManager and mOriginalMediaVolume assigned. Original volume is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/avira/android/antitheft/yell/e;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/avira/android/antitheft/yell/f;

    invoke-direct {v1, p0}, Lcom/avira/android/antitheft/yell/f;-><init>(Lcom/avira/android/antitheft/yell/e;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 160
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 161
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v1, "setDataSource succeeded."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/avira/android/antitheft/yell/g;

    invoke-direct {v1, p0}, Lcom/avira/android/antitheft/yell/g;-><init>(Lcom/avira/android/antitheft/yell/e;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 173
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 174
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 175
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v1, "prepare succeeded."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-boolean v0, p0, Lcom/avira/android/antitheft/yell/e;->b:Z

    iget-boolean v1, p0, Lcom/avira/android/antitheft/yell/e;->c:Z

    invoke-direct {p0, v0, v1}, Lcom/avira/android/antitheft/yell/e;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v6

    .line 192
    :goto_0
    return v0

    .line 181
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected Error in Initializing player - 01"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_1
    invoke-direct {p0, v6}, Lcom/avira/android/antitheft/yell/e;->a(Z)V

    .line 192
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected Error in Initializing player - 02"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :catch_2
    move-exception v0

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected Error in Initializing player - 03"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/avira/android/antitheft/yell/e;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/avira/android/antitheft/yell/e;->b:Z

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Lcom/avira/android/antitheft/yell/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v1, "MediaPlayer NOT playing, Abort Stop"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 206
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 207
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 208
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v1, "stop done."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    invoke-direct {p0, v2}, Lcom/avira/android/antitheft/yell/e;->a(Z)V

    .line 219
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 220
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v1, "reset done."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected Error in stopping player"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avira/android/antitheft/yell/e;->a(Z)V

    .line 214
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/avira/android/antitheft/yell/e;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/avira/android/antitheft/yell/e;->c:Z

    return v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 254
    iget-boolean v0, p0, Lcom/avira/android/antitheft/yell/e;->b:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->f:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/avira/android/antitheft/yell/e;->a:I

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 258
    :cond_0
    iget-boolean v0, p0, Lcom/avira/android/antitheft/yell/e;->c:Z

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->f:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->f:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 262
    :cond_1
    return-void
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/avira/android/antitheft/yell/h;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/avira/android/antitheft/yell/e;->g:Lcom/avira/android/antitheft/yell/h;

    .line 122
    return-void
.end method

.method final a(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/avira/android/antitheft/yell/e;->b:Z

    .line 74
    iput-boolean v0, p0, Lcom/avira/android/antitheft/yell/e;->c:Z

    .line 75
    invoke-direct {p0}, Lcom/avira/android/antitheft/yell/e;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    .line 78
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v2, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v3, "isMediaPlayerUnusable true, getting new MediaPlayer."

    invoke-static {v2, v3}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/avira/android/antitheft/yell/e;->d()V

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/avira/android/antitheft/yell/e;->b(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 86
    iget-object v2, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v1, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v2, "tryInitializePlayer succeeded."

    invoke-static {v1, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return v0

    .line 90
    :catch_0
    move-exception v2

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    sget-object v3, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v4, "Unexpected Error in starting media player"

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v0}, Lcom/avira/android/antitheft/yell/e;->a(Z)V

    move v0, v1

    .line 92
    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v2, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v3, "Failed to initialize player"

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 98
    goto :goto_0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/avira/android/antitheft/yell/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/avira/android/antitheft/yell/e;->d()V

    .line 109
    invoke-direct {p0}, Lcom/avira/android/antitheft/yell/e;->e()V

    .line 110
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/e;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 111
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v1, "release called."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antitheft/yell/e;->TAG:Ljava/lang/String;

    const-string v1, "stopPlay - MediaPlayer in END State, Abort Stop"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
