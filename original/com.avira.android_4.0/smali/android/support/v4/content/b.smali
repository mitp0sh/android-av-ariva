.class final Landroid/support/v4/content/b;
.super Landroid/support/v4/content/s;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/s",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field b:Z

.field final synthetic c:Landroid/support/v4/content/a;

.field private d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Landroid/support/v4/content/a;)V
    .locals 2

    .prologue
    .line 40
    iput-object p1, p0, Landroid/support/v4/content/b;->c:Landroid/support/v4/content/a;

    invoke-direct {p0}, Landroid/support/v4/content/s;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/content/b;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/b;->c:Landroid/support/v4/content/a;

    iget-object v1, p0, Landroid/support/v4/content/b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/a;->a(Landroid/support/v4/content/b;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Landroid/support/v4/content/b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/b;->c:Landroid/support/v4/content/a;

    iget-object v1, v0, Landroid/support/v4/content/a;->a:Landroid/support/v4/content/b;

    if-eq v1, p0, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/a;->a(Landroid/support/v4/content/b;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    iget-object v0, p0, Landroid/support/v4/content/b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 64
    return-void

    .line 61
    :cond_0
    :try_start_1
    iget-boolean v1, v0, Landroid/support/v4/content/l;->q:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/content/a;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/support/v4/content/b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    .line 61
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, v0, Landroid/support/v4/content/l;->t:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/support/v4/content/a;->d:J

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/content/a;->a:Landroid/support/v4/content/b;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/a;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v4/content/b;->c:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Landroid/support/v4/content/a;->d()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/content/b;->a:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/content/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/b;->b:Z

    .line 80
    iget-object v0, p0, Landroid/support/v4/content/b;->c:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Landroid/support/v4/content/a;->c()V

    .line 81
    return-void
.end method
