.class public Lcom/google/android/gms/analytics/c;
.super Lcom/google/android/gms/analytics/n;


# static fields
.field private static a:Z

.field private static l:Lcom/google/android/gms/analytics/c;


# instance fields
.field private b:Z

.field private c:Lcom/google/android/gms/analytics/ak;

.field private d:Lcom/google/android/gms/analytics/w;

.field private e:Landroid/content/Context;

.field private volatile f:Ljava/lang/Boolean;

.field private g:Lcom/google/android/gms/analytics/i;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/analytics/d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/analytics/bj;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/bj;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/analytics/ax;->c()Lcom/google/android/gms/analytics/ax;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/analytics/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/analytics/ak;Lcom/google/android/gms/analytics/w;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/analytics/ak;Lcom/google/android/gms/analytics/w;)V
    .locals 7

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/n;-><init>()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->f:Ljava/lang/Boolean;

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/c;->k:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/analytics/c;->c:Lcom/google/android/gms/analytics/ak;

    iput-object p3, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/analytics/w;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/al;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/v;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/analytics/am;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/analytics/as;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/as;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->g:Lcom/google/android/gms/analytics/i;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/c;->j:Ljava/util/Set;

    sget-boolean v0, Lcom/google/android/gms/analytics/c;->a:Z

    if-nez v0, :cond_1

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x81

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "Couldn\'t get ApplicationInfo to load gloabl config."

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->d(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PackageManager doesn\'t know about package: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v3, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v3, Lcom/google/android/gms/analytics/bp;

    iget-object v5, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/google/android/gms/analytics/bp;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/analytics/bp;->a(I)Lcom/google/android/gms/analytics/ap;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/br;

    if-eqz v0, :cond_1

    const-string v3, "Loading global config values."

    invoke-static {v3}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/analytics/br;->a:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v3, v1

    :goto_2
    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/android/gms/analytics/br;->a:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/analytics/c;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "app name loaded: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/analytics/c;->i:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/analytics/br;->b:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v3, v1

    :goto_3
    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/google/android/gms/analytics/br;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/analytics/c;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "app version loaded: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/analytics/c;->h:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/analytics/br;->c:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v3, v1

    :goto_4
    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/google/android/gms/analytics/br;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "verbose"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v3, v2

    :goto_5
    if-ltz v3, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "log level loaded: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/analytics/p;->c(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gms/analytics/c;->g:Lcom/google/android/gms/analytics/i;

    invoke-interface {v5, v3}, Lcom/google/android/gms/analytics/i;->a(I)V

    :cond_5
    iget v3, v0, Lcom/google/android/gms/analytics/br;->d:I

    if-ltz v3, :cond_e

    move v3, v1

    :goto_6
    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/analytics/w;

    iget v5, v0, Lcom/google/android/gms/analytics/br;->d:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/analytics/w;->a(I)V

    :cond_6
    iget v3, v0, Lcom/google/android/gms/analytics/br;->e:I

    if-eq v3, v4, :cond_f

    move v3, v1

    :goto_7
    if-eqz v3, :cond_1

    iget v0, v0, Lcom/google/android/gms/analytics/br;->e:I

    if-ne v0, v1, :cond_10

    move v0, v1

    :goto_8
    invoke-static {}, Lcom/google/android/gms/analytics/bn;->a()Lcom/google/android/gms/analytics/bn;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/analytics/bo;->tn:Lcom/google/android/gms/analytics/bo;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/bn;->a(Lcom/google/android/gms/analytics/bo;)V

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/c;->b:Z

    goto/16 :goto_1

    :cond_7
    move v3, v2

    goto/16 :goto_2

    :cond_8
    move v3, v2

    goto :goto_3

    :cond_9
    move v3, v2

    goto :goto_4

    :cond_a
    const-string v5, "info"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v3, v1

    goto :goto_5

    :cond_b
    const-string v5, "warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v3, 0x2

    goto :goto_5

    :cond_c
    const-string v5, "error"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x3

    goto :goto_5

    :cond_d
    move v3, v4

    goto :goto_5

    :cond_e
    move v3, v2

    goto :goto_6

    :cond_f
    move v3, v2

    goto :goto_7

    :cond_10
    move v0, v2

    goto :goto_8
.end method

.method static a()Lcom/google/android/gms/analytics/c;
    .locals 2

    const-class v1, Lcom/google/android/gms/analytics/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/c;->l:Lcom/google/android/gms/analytics/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/analytics/c;
    .locals 2

    const-class v1, Lcom/google/android/gms/analytics/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/c;->l:Lcom/google/android/gms/analytics/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/analytics/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/c;->l:Lcom/google/android/gms/analytics/c;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/c;->l:Lcom/google/android/gms/analytics/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/analytics/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Ljava/util/Map;)V
    .locals 3
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

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "&ul"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/ac;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/analytics/ac;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&sr"

    invoke-static {}, Lcom/google/android/gms/analytics/v;->a()Lcom/google/android/gms/analytics/v;

    move-result-object v1

    const-string v2, "&sr"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/analytics/ac;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&_u"

    invoke-static {}, Lcom/google/android/gms/analytics/bn;->a()Lcom/google/android/gms/analytics/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/bn;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/bn;->a()Lcom/google/android/gms/analytics/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/bn;->b()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->c:Lcom/google/android/gms/analytics/ak;

    invoke-interface {v0, p1}, Lcom/google/android/gms/analytics/ak;->a(Ljava/util/Map;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method final b(Lcom/google/android/gms/analytics/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/bn;->a()Lcom/google/android/gms/analytics/bn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bo;->to:Lcom/google/android/gms/analytics/bo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bn;->a(Lcom/google/android/gms/analytics/bo;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/c;->b:Z

    return v0
.end method

.method public final c()Lcom/google/android/gms/analytics/k;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/analytics/bn;->a()Lcom/google/android/gms/analytics/bn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bo;->sY:Lcom/google/android/gms/analytics/bo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bn;->a(Lcom/google/android/gms/analytics/bo;)V

    new-instance v1, Lcom/google/android/gms/analytics/k;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/k;-><init>(Lcom/google/android/gms/analytics/n;)V

    new-instance v0, Lcom/google/android/gms/analytics/z;

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/analytics/z;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f050000

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/z;->a(I)Lcom/google/android/gms/analytics/ap;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/ab;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/analytics/k;->a(Landroid/content/Context;Lcom/google/android/gms/analytics/ab;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "&an"

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/analytics/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "&av"

    iget-object v2, p0, Lcom/google/android/gms/analytics/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/analytics/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/analytics/bn;->a()Lcom/google/android/gms/analytics/bn;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/bo;->tc:Lcom/google/android/gms/analytics/bo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bn;->a(Lcom/google/android/gms/analytics/bo;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final e()Lcom/google/android/gms/analytics/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->g:Lcom/google/android/gms/analytics/i;

    return-object v0
.end method

.method public final f()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/c;->d:Lcom/google/android/gms/analytics/w;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/w;->a()V

    return-void
.end method
