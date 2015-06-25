.class public final Lio/fabric/sdk/android/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:[Lio/fabric/sdk/android/k;

.field private c:Lio/fabric/sdk/android/services/concurrency/v;

.field private d:Landroid/os/Handler;

.field private e:Lio/fabric/sdk/android/q;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lio/fabric/sdk/android/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/g",
            "<",
            "Lio/fabric/sdk/android/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/e;->a:Landroid/content/Context;

    .line 79
    return-void
.end method


# virtual methods
.method public final a()Lio/fabric/sdk/android/b;
    .locals 9

    .prologue
    .line 209
    iget-object v0, p0, Lio/fabric/sdk/android/e;->b:[Lio/fabric/sdk/android/k;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kits must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/e;->c:Lio/fabric/sdk/android/services/concurrency/v;

    if-nez v0, :cond_1

    .line 214
    invoke-static {}, Lio/fabric/sdk/android/services/concurrency/v;->a()Lio/fabric/sdk/android/services/concurrency/v;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/e;->c:Lio/fabric/sdk/android/services/concurrency/v;

    .line 217
    :cond_1
    iget-object v0, p0, Lio/fabric/sdk/android/e;->d:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 218
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/fabric/sdk/android/e;->d:Landroid/os/Handler;

    .line 221
    :cond_2
    iget-object v0, p0, Lio/fabric/sdk/android/e;->e:Lio/fabric/sdk/android/q;

    if-nez v0, :cond_3

    .line 222
    iget-boolean v0, p0, Lio/fabric/sdk/android/e;->f:Z

    if-eqz v0, :cond_6

    .line 223
    new-instance v0, Lio/fabric/sdk/android/a;

    invoke-direct {v0}, Lio/fabric/sdk/android/a;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/e;->e:Lio/fabric/sdk/android/q;

    .line 230
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/fabric/sdk/android/e;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 231
    iget-object v0, p0, Lio/fabric/sdk/android/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/e;->h:Ljava/lang/String;

    .line 234
    :cond_4
    iget-object v0, p0, Lio/fabric/sdk/android/e;->i:Lio/fabric/sdk/android/g;

    if-nez v0, :cond_5

    .line 235
    sget-object v0, Lio/fabric/sdk/android/g;->EMPTY:Lio/fabric/sdk/android/g;

    iput-object v0, p0, Lio/fabric/sdk/android/e;->i:Lio/fabric/sdk/android/g;

    .line 238
    :cond_5
    iget-object v0, p0, Lio/fabric/sdk/android/e;->b:[Lio/fabric/sdk/android/k;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/b;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 240
    new-instance v8, Lio/fabric/sdk/android/services/b/y;

    iget-object v0, p0, Lio/fabric/sdk/android/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/fabric/sdk/android/e;->h:Ljava/lang/String;

    iget-object v3, p0, Lio/fabric/sdk/android/e;->g:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v8, v0, v1, v3, v4}, Lio/fabric/sdk/android/services/b/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 243
    new-instance v0, Lio/fabric/sdk/android/b;

    iget-object v1, p0, Lio/fabric/sdk/android/e;->a:Landroid/content/Context;

    iget-object v3, p0, Lio/fabric/sdk/android/e;->c:Lio/fabric/sdk/android/services/concurrency/v;

    iget-object v4, p0, Lio/fabric/sdk/android/e;->d:Landroid/os/Handler;

    iget-object v5, p0, Lio/fabric/sdk/android/e;->e:Lio/fabric/sdk/android/q;

    iget-boolean v6, p0, Lio/fabric/sdk/android/e;->f:Z

    iget-object v7, p0, Lio/fabric/sdk/android/e;->i:Lio/fabric/sdk/android/g;

    invoke-direct/range {v0 .. v8}, Lio/fabric/sdk/android/b;-><init>(Landroid/content/Context;Ljava/util/Map;Lio/fabric/sdk/android/services/concurrency/v;Landroid/os/Handler;Lio/fabric/sdk/android/q;ZLio/fabric/sdk/android/g;Lio/fabric/sdk/android/services/b/y;)V

    return-object v0

    .line 225
    :cond_6
    new-instance v0, Lio/fabric/sdk/android/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/a;-><init>(B)V

    iput-object v0, p0, Lio/fabric/sdk/android/e;->e:Lio/fabric/sdk/android/q;

    goto :goto_0
.end method

.method public final varargs a([Lio/fabric/sdk/android/k;)Lio/fabric/sdk/android/e;
    .locals 2

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Kits must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Kits must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    iget-object v0, p0, Lio/fabric/sdk/android/e;->b:[Lio/fabric/sdk/android/k;

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kits already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    iput-object p1, p0, Lio/fabric/sdk/android/e;->b:[Lio/fabric/sdk/android/k;

    .line 96
    return-object p0
.end method
