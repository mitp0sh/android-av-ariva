.class final Lcom/mixpanel/android/mpmetrics/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/locks/ReentrantLock;

.field private b:Z

.field private c:J

.field private final d:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/t;->a:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1186
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/t;->d:J

    .line 1187
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1190
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/t;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1192
    :try_start_0
    iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/t;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mixpanel/android/mpmetrics/t;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/mixpanel/android/mpmetrics/t;->d:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1194
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/t;->b()V

    .line 1197
    :cond_0
    iget-boolean v2, p0, Lcom/mixpanel/android/mpmetrics/t;->b:Z

    if-nez v2, :cond_1

    .line 1198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mixpanel/android/mpmetrics/t;->c:J

    .line 1199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mixpanel/android/mpmetrics/t;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/t;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1208
    :goto_0
    return v0

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/t;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/t;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    move v0, v1

    .line 1208
    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/t;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/t;->b:Z

    .line 1216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/t;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/t;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1221
    :cond_0
    return-void

    .line 1218
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/t;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
