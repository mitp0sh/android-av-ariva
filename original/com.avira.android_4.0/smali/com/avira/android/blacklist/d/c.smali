.class public final Lcom/avira/android/blacklist/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/avira/android/blacklist/d/c;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/avira/android/blacklist/c/a;

.field private d:Lcom/avira/android/blacklist/d/e;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/c;->b:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/d/c;)Lcom/avira/android/blacklist/c/a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/avira/android/blacklist/d/c;->c:Lcom/avira/android/blacklist/c/a;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/avira/android/blacklist/d/c;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/avira/android/blacklist/d/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/blacklist/d/c;->a:Lcom/avira/android/blacklist/d/c;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/avira/android/blacklist/d/c;

    invoke-direct {v0}, Lcom/avira/android/blacklist/d/c;-><init>()V

    sput-object v0, Lcom/avira/android/blacklist/d/c;->a:Lcom/avira/android/blacklist/d/c;

    .line 47
    :cond_0
    sget-object v0, Lcom/avira/android/blacklist/d/c;->a:Lcom/avira/android/blacklist/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/avira/android/blacklist/c/a;Ljava/util/ArrayList;Lcom/avira/android/blacklist/d/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avira/android/blacklist/c/a;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;",
            "Lcom/avira/android/blacklist/d/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/avira/android/blacklist/d/c;->c:Lcom/avira/android/blacklist/c/a;

    .line 64
    iget-object v0, p0, Lcom/avira/android/blacklist/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    iget-object v0, p0, Lcom/avira/android/blacklist/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 67
    iput-object p3, p0, Lcom/avira/android/blacklist/d/c;->d:Lcom/avira/android/blacklist/d/e;

    .line 68
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/avira/android/blacklist/d/d;

    invoke-direct {v0, p0, v2}, Lcom/avira/android/blacklist/d/d;-><init>(Lcom/avira/android/blacklist/d/c;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/avira/android/blacklist/d/c;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()Lcom/avira/android/blacklist/d/e;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avira/android/blacklist/d/c;->d:Lcom/avira/android/blacklist/d/e;

    return-object v0
.end method
