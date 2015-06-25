.class public final Lcom/avira/android/blacklist/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/avira/android/blacklist/d/f;

.field private static b:Lcom/avira/android/blacklist/d/h;

.field private static c:Lcom/avira/android/blacklist/d/v;


# instance fields
.field private final d:Lcom/avira/android/blacklist/d/r;

.field private final e:Lcom/avira/android/blacklist/d/l;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/d/f;->e:Lcom/avira/android/blacklist/d/l;

    .line 24
    new-instance v0, Lcom/avira/android/blacklist/d/g;

    invoke-direct {v0, p0}, Lcom/avira/android/blacklist/d/g;-><init>(Lcom/avira/android/blacklist/d/f;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/f;->d:Lcom/avira/android/blacklist/d/r;

    .line 33
    iget-object v0, p0, Lcom/avira/android/blacklist/d/f;->e:Lcom/avira/android/blacklist/d/l;

    const-string v1, "blacklistTable"

    iget-object v2, p0, Lcom/avira/android/blacklist/d/f;->d:Lcom/avira/android/blacklist/d/r;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/blacklist/d/l;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 34
    return-void
.end method

.method public static declared-synchronized a()Lcom/avira/android/blacklist/d/f;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/avira/android/blacklist/d/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/blacklist/d/f;->a:Lcom/avira/android/blacklist/d/f;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/avira/android/blacklist/d/f;

    invoke-direct {v0}, Lcom/avira/android/blacklist/d/f;-><init>()V

    sput-object v0, Lcom/avira/android/blacklist/d/f;->a:Lcom/avira/android/blacklist/d/f;

    .line 47
    :cond_0
    sget-object v0, Lcom/avira/android/blacklist/d/f;->a:Lcom/avira/android/blacklist/d/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e()Lcom/avira/android/blacklist/d/h;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/avira/android/blacklist/d/f;->b:Lcom/avira/android/blacklist/d/h;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/avira/android/blacklist/d/l;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avira/android/blacklist/d/f;->e:Lcom/avira/android/blacklist/d/l;

    return-object v0
.end method

.method public final declared-synchronized c()Lcom/avira/android/blacklist/d/h;
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/avira/android/blacklist/d/f;->b:Lcom/avira/android/blacklist/d/h;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/avira/android/blacklist/d/h;

    invoke-direct {v0}, Lcom/avira/android/blacklist/d/h;-><init>()V

    .line 65
    sput-object v0, Lcom/avira/android/blacklist/d/f;->b:Lcom/avira/android/blacklist/d/h;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/h;->a()V

    .line 67
    :cond_0
    sget-object v0, Lcom/avira/android/blacklist/d/f;->b:Lcom/avira/android/blacklist/d/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Lcom/avira/android/blacklist/d/v;
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/avira/android/blacklist/d/f;->c:Lcom/avira/android/blacklist/d/v;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/avira/android/blacklist/d/v;

    invoke-direct {v0}, Lcom/avira/android/blacklist/d/v;-><init>()V

    sput-object v0, Lcom/avira/android/blacklist/d/f;->c:Lcom/avira/android/blacklist/d/v;

    .line 81
    :cond_0
    sget-object v0, Lcom/avira/android/blacklist/d/f;->c:Lcom/avira/android/blacklist/d/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
