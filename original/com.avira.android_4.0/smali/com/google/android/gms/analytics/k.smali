.class public final Lcom/google/android/gms/analytics/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/analytics/n;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/analytics/u;

.field private final d:Lcom/google/android/gms/analytics/am;

.field private final e:Lcom/google/android/gms/analytics/v;

.field private final f:Lcom/google/android/gms/analytics/al;

.field private g:Z

.field private h:Lcom/google/android/gms/analytics/l;

.field private i:Lcom/google/android/gms/analytics/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/n;)V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/analytics/am;->a()Lcom/google/android/gms/analytics/am;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/analytics/v;->a()Lcom/google/android/gms/analytics/v;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/analytics/al;->a()Lcom/google/android/gms/analytics/al;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/analytics/bu;

    const-string v0, "tracking"

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/analytics/bu;-><init>(Ljava/lang/String;B)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/analytics/k;-><init>(Lcom/google/android/gms/analytics/n;Lcom/google/android/gms/analytics/am;Lcom/google/android/gms/analytics/v;Lcom/google/android/gms/analytics/al;Lcom/google/android/gms/analytics/u;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/analytics/n;Lcom/google/android/gms/analytics/am;Lcom/google/android/gms/analytics/v;Lcom/google/android/gms/analytics/al;Lcom/google/android/gms/analytics/u;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/k;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/analytics/k;->a:Lcom/google/android/gms/analytics/n;

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->b:Ljava/util/Map;

    const-string v1, "useSecure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/analytics/k;->d:Lcom/google/android/gms/analytics/am;

    iput-object p3, p0, Lcom/google/android/gms/analytics/k;->e:Lcom/google/android/gms/analytics/v;

    iput-object p4, p0, Lcom/google/android/gms/analytics/k;->f:Lcom/google/android/gms/analytics/al;

    iput-object p5, p0, Lcom/google/android/gms/analytics/k;->c:Lcom/google/android/gms/analytics/u;

    new-instance v0, Lcom/google/android/gms/analytics/l;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/l;-><init>(Lcom/google/android/gms/analytics/k;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/k;->h:Lcom/google/android/gms/analytics/l;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/k;)Lcom/google/android/gms/analytics/l;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->h:Lcom/google/android/gms/analytics/l;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/Context;Lcom/google/android/gms/analytics/ab;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "Loading Tracker config values."

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    iget-object v0, v0, Lcom/google/android/gms/analytics/ab;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    iget-object v0, v0, Lcom/google/android/gms/analytics/ab;->a:Ljava/lang/String;

    const-string v3, "&tid"

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/analytics/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Tracker] trackingId loaded: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    iget-wide v4, v0, Lcom/google/android/gms/analytics/ab;->b:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_8

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    iget-wide v4, v0, Lcom/google/android/gms/analytics/ab;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v3, "&sf"

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/analytics/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Tracker] sample frequency loaded: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    iget v0, v0, Lcom/google/android/gms/analytics/ab;->c:I

    if-ltz v0, :cond_9

    move v0, v1

    :goto_2
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    iget v0, v0, Lcom/google/android/gms/analytics/ab;->c:I

    int-to-long v4, v0

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->h:Lcom/google/android/gms/analytics/l;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/analytics/l;->a(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[Tracker] session timeout loaded: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/analytics/k;->h:Lcom/google/android/gms/analytics/l;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/l;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    iget v0, v0, Lcom/google/android/gms/analytics/ab;->d:I

    if-eq v0, v8, :cond_a

    move v0, v1

    :goto_3
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    iget v0, v0, Lcom/google/android/gms/analytics/ab;->d:I

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/google/android/gms/analytics/k;->h:Lcom/google/android/gms/analytics/l;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/analytics/l;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[Tracker] auto activity tracking loaded: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/analytics/k;->h:Lcom/google/android/gms/analytics/l;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/l;->b()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    iget v0, v0, Lcom/google/android/gms/analytics/ab;->e:I

    if-eq v0, v8, :cond_c

    move v0, v1

    :goto_5
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    iget v0, v0, Lcom/google/android/gms/analytics/ab;->e:I

    if-ne v0, v1, :cond_d

    :goto_6
    if-eqz v1, :cond_4

    const-string v0, "&aip"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[Tracker] anonymize ip loaded: true"

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    :cond_4
    const-string v0, "[Tracker] anonymize ip loaded: false"

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ab;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/k;->g:Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->i:Lcom/google/android/gms/analytics/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/android/gms/analytics/b;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/analytics/b;-><init>(Lcom/google/android/gms/analytics/k;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Tracker] report uncaught exceptions loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/k;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_3

    :cond_b
    move v0, v2

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_5

    :cond_d
    move v1, v2

    goto :goto_6
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&cd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Key should be non-null"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/bn;->a()Lcom/google/android/gms/analytics/bn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bo;->sv:Lcom/google/android/gms/analytics/bo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bn;->a(Lcom/google/android/gms/analytics/bo;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/bn;->a()Lcom/google/android/gms/analytics/bn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bo;->sw:Lcom/google/android/gms/analytics/bo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bn;->a(Lcom/google/android/gms/analytics/bo;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v0, "&tid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Missing tracking id (%s) parameter."

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "&tid"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->d(Ljava/lang/String;)V

    :cond_1
    const-string v0, "&t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Missing hit type (%s) parameter."

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "&t"

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->d(Ljava/lang/String;)V

    const-string v0, ""

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/analytics/k;->h:Lcom/google/android/gms/analytics/l;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/l;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "&sc"

    const-string v3, "start"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v2, "transaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->c:Lcom/google/android/gms/analytics/u;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/u;->a()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Too many hits sent too quickly, rate limiting invoked."

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/analytics/k;->a:Lcom/google/android/gms/analytics/n;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/n;->a(Ljava/util/Map;)V

    goto :goto_0
.end method
