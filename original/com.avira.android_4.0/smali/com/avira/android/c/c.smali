.class final Lcom/avira/android/c/c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/c/a;


# direct methods
.method constructor <init>(Lcom/avira/android/c/a;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/avira/android/c/c;->a:Lcom/avira/android/c/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/avira/android/c/c;->a:Lcom/avira/android/c/a;

    invoke-static {v0}, Lcom/avira/android/c/a;->c(Lcom/avira/android/c/a;)V

    .line 275
    invoke-static {}, Lcom/avira/android/c/a;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 277
    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    new-instance v2, Lcom/avira/android/c/d;

    invoke-direct {v2, p0}, Lcom/avira/android/c/d;-><init>(Lcom/avira/android/c/c;)V

    invoke-virtual {v0, v2}, Lcom/avira/android/ApplicationService;->a(Ljava/lang/Runnable;)Z

    .line 286
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
