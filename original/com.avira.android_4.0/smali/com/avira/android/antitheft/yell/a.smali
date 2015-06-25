.class public Lcom/avira/android/antitheft/yell/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SCREAM_TONE_FILE:Ljava/lang/String; = "alarm.mp3"

.field private static final TAG:Ljava/lang/String;

.field private static d:Lcom/avira/android/antitheft/yell/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/avira/android/antitheft/yell/e;

.field private c:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/avira/android/antitheft/yell/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antitheft/yell/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/antitheft/yell/a;->c:Landroid/content/res/AssetFileDescriptor;

    .line 29
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/yell/a;->a:Landroid/content/Context;

    .line 30
    invoke-static {}, Lcom/avira/android/antitheft/yell/e;->a()Lcom/avira/android/antitheft/yell/e;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/yell/a;->b:Lcom/avira/android/antitheft/yell/e;

    .line 31
    return-void
.end method

.method public static a()Lcom/avira/android/antitheft/yell/a;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/avira/android/antitheft/yell/a;->d:Lcom/avira/android/antitheft/yell/a;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/avira/android/antitheft/yell/a;

    invoke-direct {v0}, Lcom/avira/android/antitheft/yell/a;-><init>()V

    sput-object v0, Lcom/avira/android/antitheft/yell/a;->d:Lcom/avira/android/antitheft/yell/a;

    .line 39
    :cond_0
    sget-object v0, Lcom/avira/android/antitheft/yell/a;->d:Lcom/avira/android/antitheft/yell/a;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 4

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/a;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antitheft/yell/a;->TAG:Ljava/lang/String;

    const-string v1, "Phone Call in Progress, Abort local yell."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "alarm.mp3"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/yell/a;->c:Landroid/content/res/AssetFileDescriptor;

    .line 53
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antitheft/yell/a;->TAG:Ljava/lang/String;

    const-string v1, "mAssetFileDescriptor assigned value."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/a;->b:Lcom/avira/android/antitheft/yell/e;

    iget-object v1, p0, Lcom/avira/android/antitheft/yell/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/avira/android/antitheft/yell/a;->c:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/antitheft/yell/e;->a(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    sget-object v2, Lcom/avira/android/antitheft/yell/a;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 62
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    sget-object v2, Lcom/avira/android/antitheft/yell/a;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :catch_2
    move-exception v0

    .line 66
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    sget-object v2, Lcom/avira/android/antitheft/yell/a;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/a;->b:Lcom/avira/android/antitheft/yell/e;

    invoke-virtual {v0}, Lcom/avira/android/antitheft/yell/e;->c()V

    .line 73
    return-void
.end method
