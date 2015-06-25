.class public Lcom/facebook/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_APP_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSHED"

.field public static final APP_EVENTS_EXTRA_FLUSH_RESULT:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

.field public static final APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

.field private static final APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS:I = 0x15180

.field private static final FLUSH_APP_SESSION_INFO_IN_SECONDS:I = 0x1e

.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0xf

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x64

.field private static final SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT:Ljava/lang/String; = "_fbSourceApplicationHasBeenSet"

.field private static final TAG:Ljava/lang/String;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/i;",
            "Lcom/facebook/p;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static e:Lcom/facebook/k;

.field private static f:Z

.field private static g:Landroid/content/Context;

.field private static h:Ljava/lang/Object;

.field private static i:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const-class v0, Lcom/facebook/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/c;->TAG:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/c;->c:Ljava/util/Map;

    .line 163
    sget-object v0, Lcom/facebook/k;->AUTO:Lcom/facebook/k;

    sput-object v0, Lcom/facebook/c;->e:Lcom/facebook/k;

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/c;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/by;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/b/cp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    iput-object p1, p0, Lcom/facebook/c;->a:Landroid/content/Context;

    .line 619
    if-nez p3, :cond_0

    .line 620
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object p3

    .line 624
    :cond_0
    if-eqz p3, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Lcom/facebook/by;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 627
    :cond_1
    new-instance v0, Lcom/facebook/i;

    invoke-direct {v0, p3}, Lcom/facebook/i;-><init>(Lcom/facebook/by;)V

    iput-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/i;

    .line 636
    :goto_0
    sget-object v1, Lcom/facebook/c;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    :try_start_0
    sget-object v0, Lcom/facebook/c;->i:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 639
    invoke-static {p1, p2}, Lcom/facebook/b/cl;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/c;->i:Ljava/lang/String;

    .line 642
    :cond_2
    sget-object v0, Lcom/facebook/c;->g:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 643
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/c;->g:Landroid/content/Context;

    .line 645
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    sget-object v1, Lcom/facebook/c;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/facebook/c;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_6

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 648
    :goto_1
    return-void

    .line 630
    :cond_4
    if-nez p2, :cond_5

    .line 631
    invoke-static {p1}, Lcom/facebook/b/cl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 633
    :cond_5
    new-instance v0, Lcom/facebook/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/i;

    goto :goto_0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 647
    :cond_6
    :try_start_2
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/c;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance v1, Lcom/facebook/d;

    invoke-direct {v1}, Lcom/facebook/d;-><init>()V

    sget-object v0, Lcom/facebook/c;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    new-instance v1, Lcom/facebook/e;

    invoke-direct {v1}, Lcom/facebook/e;-><init>()V

    sget-object v0, Lcom/facebook/c;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/32 v4, 0x15180

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/c;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 356
    new-instance v0, Lcom/facebook/c;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/by;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/by;)Lcom/facebook/c;
    .locals 2

    .prologue
    .line 369
    new-instance v0, Lcom/facebook/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/by;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/c;
    .locals 2

    .prologue
    .line 398
    new-instance v0, Lcom/facebook/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/by;)V

    return-object v0
.end method

.method public static a()Lcom/facebook/k;
    .locals 2

    .prologue
    .line 418
    sget-object v1, Lcom/facebook/c;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    sget-object v0, Lcom/facebook/c;->e:Lcom/facebook/k;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/facebook/l;Ljava/util/Set;)Lcom/facebook/n;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/l;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/i;",
            ">;)",
            "Lcom/facebook/n;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 814
    new-instance v2, Lcom/facebook/n;

    invoke-direct {v2, v12}, Lcom/facebook/n;-><init>(B)V

    .line 816
    sget-object v0, Lcom/facebook/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/cu;->b(Landroid/content/Context;)Z

    move-result v5

    .line 818
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 819
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/i;

    .line 820
    invoke-static {v0}, Lcom/facebook/c;->a(Lcom/facebook/i;)Lcom/facebook/p;

    move-result-object v8

    .line 821
    if-eqz v8, :cond_0

    .line 822
    invoke-virtual {v0}, Lcom/facebook/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Z)Lcom/facebook/b/co;

    move-result-object v9

    const-string v4, "%s/activities"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v1, v10, v12

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/facebook/Request;->a(Ljava/lang/String;Lcom/facebook/c/c;)Lcom/facebook/Request;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Request;->c()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v10, "access_token"

    invoke-virtual {v0}, Lcom/facebook/i;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/facebook/Request;->a(Landroid/os/Bundle;)V

    if-nez v9, :cond_2

    move-object v0, v3

    .line 827
    :goto_1
    if-eqz v0, :cond_0

    .line 828
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 822
    :cond_2
    invoke-virtual {v9}, Lcom/facebook/b/co;->b()Z

    move-result v1

    invoke-virtual {v9}, Lcom/facebook/b/co;->a()Z

    move-result v9

    invoke-virtual {v8, v4, v1, v9, v5}, Lcom/facebook/p;->a(Lcom/facebook/Request;ZZZ)I

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v3

    goto :goto_1

    :cond_3
    iget v9, v2, Lcom/facebook/n;->a:I

    add-int/2addr v1, v9

    iput v1, v2, Lcom/facebook/n;->a:I

    new-instance v1, Lcom/facebook/h;

    invoke-direct {v1, v0, v4, v8, v2}, Lcom/facebook/h;-><init>(Lcom/facebook/i;Lcom/facebook/Request;Lcom/facebook/p;Lcom/facebook/n;)V

    invoke-virtual {v4, v1}, Lcom/facebook/Request;->a(Lcom/facebook/bk;)V

    move-object v0, v4

    goto :goto_1

    .line 832
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 833
    sget-object v0, Lcom/facebook/av;->APP_EVENTS:Lcom/facebook/av;

    sget-object v1, Lcom/facebook/c;->TAG:Ljava/lang/String;

    const-string v3, "Flushing %d events due to %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v2, Lcom/facebook/n;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-virtual {p0}, Lcom/facebook/l;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-static {v0, v1, v3, v4}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 840
    invoke-virtual {v0}, Lcom/facebook/Request;->g()Lcom/facebook/bx;

    goto :goto_2

    :cond_5
    move-object v0, v2

    .line 845
    :goto_3
    return-object v0

    :cond_6
    move-object v0, v3

    goto :goto_3
.end method

.method static synthetic a(Landroid/content/Context;Lcom/facebook/i;)Lcom/facebook/p;
    .locals 1

    .prologue
    .line 127
    invoke-static {p0, p1}, Lcom/facebook/c;->b(Landroid/content/Context;Lcom/facebook/i;)Lcom/facebook/p;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/facebook/i;)Lcom/facebook/p;
    .locals 2

    .prologue
    .line 766
    sget-object v1, Lcom/facebook/c;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 767
    :try_start_0
    sget-object v0, Lcom/facebook/c;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/p;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/facebook/i;Lcom/facebook/Request;Lcom/facebook/bx;Lcom/facebook/p;Lcom/facebook/n;)V
    .locals 10

    .prologue
    .line 127
    invoke-virtual {p2}, Lcom/facebook/bx;->a()Lcom/facebook/ap;

    move-result-object v3

    const-string v1, "Success"

    sget-object v0, Lcom/facebook/m;->SUCCESS:Lcom/facebook/m;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/facebook/ap;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string v1, "Failed: No Connectivity"

    sget-object v0, Lcom/facebook/m;->NO_CONNECTIVITY:Lcom/facebook/m;

    move-object v2, v1

    move-object v1, v0

    :goto_0
    sget-object v0, Lcom/facebook/av;->APP_EVENTS:Lcom/facebook/av;

    invoke-static {v0}, Lcom/facebook/cu;->a(Lcom/facebook/av;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/Request;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    sget-object v4, Lcom/facebook/av;->APP_EVENTS:Lcom/facebook/av;

    sget-object v5, Lcom/facebook/c;->TAG:Ljava/lang/String;

    const-string v6, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/facebook/Request;->a()Lcom/facebook/c/c;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    aput-object v0, v7, v2

    invoke-static {v4, v5, v6, v7}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Lcom/facebook/p;->a(Z)V

    sget-object v0, Lcom/facebook/m;->NO_CONNECTIVITY:Lcom/facebook/m;

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/facebook/c;->g:Landroid/content/Context;

    invoke-static {v0, p0, p3}, Lcom/facebook/o;->a(Landroid/content/Context;Lcom/facebook/i;Lcom/facebook/p;)V

    :cond_1
    sget-object v0, Lcom/facebook/m;->SUCCESS:Lcom/facebook/m;

    if-eq v1, v0, :cond_2

    iget-object v0, p4, Lcom/facebook/n;->b:Lcom/facebook/m;

    sget-object v2, Lcom/facebook/m;->NO_CONNECTIVITY:Lcom/facebook/m;

    if-eq v0, v2, :cond_2

    iput-object v1, p4, Lcom/facebook/n;->b:Lcom/facebook/m;

    :cond_2
    return-void

    :cond_3
    const-string v0, "Failed:\n  Response: %s\n  Error %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/facebook/bx;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v3}, Lcom/facebook/ap;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/m;->SERVER_ERROR:Lcom/facebook/m;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "<Can\'t encode events for debug logging>"

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move-object v2, v1

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/l;)V
    .locals 4

    .prologue
    .line 127
    sget-object v1, Lcom/facebook/c;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/c;->f:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/c;->f:Z

    new-instance v2, Ljava/util/HashSet;

    sget-object v0, Lcom/facebook/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/facebook/c;->i()I

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v2}, Lcom/facebook/c;->a(Lcom/facebook/l;Ljava/util/Set;)Lcom/facebook/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    sget-object v1, Lcom/facebook/c;->h:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_2
    sput-boolean v2, Lcom/facebook/c;->f:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v3, v0, Lcom/facebook/n;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v0, v0, Lcom/facebook/n;->b:Lcom/facebook/m;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object v0, Lcom/facebook/c;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/facebook/c;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/b/cl;->d(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 5

    .prologue
    .line 698
    new-instance v0, Lcom/facebook/j;

    iget-object v1, p0, Lcom/facebook/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/facebook/j;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 699
    iget-object v1, p0, Lcom/facebook/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/c;->b:Lcom/facebook/i;

    invoke-static {}, Lcom/facebook/cu;->b()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/facebook/f;

    invoke-direct {v4, v1, v2, v0}, Lcom/facebook/f;-><init>(Landroid/content/Context;Lcom/facebook/i;Lcom/facebook/j;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 700
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/facebook/i;)Lcom/facebook/p;
    .locals 5

    .prologue
    .line 747
    sget-object v0, Lcom/facebook/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/p;

    .line 748
    const/4 v1, 0x0

    .line 749
    if-nez v0, :cond_0

    .line 751
    invoke-static {p0}, Lcom/facebook/b/a;->a(Landroid/content/Context;)Lcom/facebook/b/a;

    move-result-object v0

    move-object v1, v0

    .line 754
    :cond_0
    sget-object v2, Lcom/facebook/c;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 756
    :try_start_0
    sget-object v0, Lcom/facebook/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/p;

    .line 757
    if-nez v0, :cond_1

    .line 758
    new-instance v0, Lcom/facebook/p;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/c;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/p;-><init>(Lcom/facebook/b/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    sget-object v1, Lcom/facebook/c;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 762
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/facebook/c;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/facebook/c;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e()V
    .locals 4

    .prologue
    .line 127
    sget-object v1, Lcom/facebook/c;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/c;->a()Lcom/facebook/k;

    move-result-object v0

    sget-object v2, Lcom/facebook/k;->EXPLICIT_ONLY:Lcom/facebook/k;

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/facebook/c;->h()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/facebook/l;->EVENT_THRESHOLD:Lcom/facebook/l;

    invoke-static {}, Lcom/facebook/cu;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/g;

    invoke-direct {v3, v0}, Lcom/facebook/g;-><init>(Lcom/facebook/l;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/facebook/c;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/facebook/c;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static h()I
    .locals 4

    .prologue
    .line 732
    sget-object v2, Lcom/facebook/c;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 734
    const/4 v0, 0x0

    .line 735
    :try_start_0
    sget-object v1, Lcom/facebook/c;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/p;

    .line 736
    invoke-virtual {v0}, Lcom/facebook/p;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 737
    goto :goto_0

    .line 738
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static i()I
    .locals 5

    .prologue
    .line 953
    sget-object v0, Lcom/facebook/c;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/o;->a(Landroid/content/Context;)Lcom/facebook/o;

    move-result-object v2

    .line 955
    const/4 v0, 0x0

    .line 956
    invoke-virtual {v2}, Lcom/facebook/o;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/i;

    .line 957
    sget-object v4, Lcom/facebook/c;->g:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/facebook/c;->b(Landroid/content/Context;Lcom/facebook/i;)Lcom/facebook/p;

    move-result-object v4

    .line 959
    invoke-virtual {v2, v0}, Lcom/facebook/o;->a(Lcom/facebook/i;)Ljava/util/List;

    move-result-object v0

    .line 960
    invoke-virtual {v4, v0}, Lcom/facebook/p;->a(Ljava/util/List;)V

    .line 961
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 962
    goto :goto_0

    .line 964
    :cond_0
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/c;->a(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 484
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/facebook/c;->b:Lcom/facebook/i;

    invoke-virtual {v0}, Lcom/facebook/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/c;->a(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 578
    return-void
.end method
