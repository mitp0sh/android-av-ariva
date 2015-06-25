.class final Lio/fabric/sdk/android/services/f/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/f/u;


# static fields
.field private static final LOAD_ERROR_MESSAGE:Ljava/lang/String; = "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

.field private static final PREFS_BUILD_INSTANCE_IDENTIFIER:Ljava/lang/String; = "existing_instance_identifier"


# instance fields
.field private final a:Lio/fabric/sdk/android/services/f/y;

.field private final b:Lio/fabric/sdk/android/services/f/x;

.field private final c:Lio/fabric/sdk/android/services/b/r;

.field private final d:Lio/fabric/sdk/android/services/f/g;

.field private final e:Lio/fabric/sdk/android/services/f/z;

.field private final f:Lio/fabric/sdk/android/k;

.field private final g:Lio/fabric/sdk/android/services/e/b;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/k;Lio/fabric/sdk/android/services/f/y;Lio/fabric/sdk/android/services/b/r;Lio/fabric/sdk/android/services/f/x;Lio/fabric/sdk/android/services/f/g;Lio/fabric/sdk/android/services/f/z;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/fabric/sdk/android/services/f/j;->f:Lio/fabric/sdk/android/k;

    .line 38
    iput-object p2, p0, Lio/fabric/sdk/android/services/f/j;->a:Lio/fabric/sdk/android/services/f/y;

    .line 39
    iput-object p3, p0, Lio/fabric/sdk/android/services/f/j;->c:Lio/fabric/sdk/android/services/b/r;

    .line 40
    iput-object p4, p0, Lio/fabric/sdk/android/services/f/j;->b:Lio/fabric/sdk/android/services/f/x;

    .line 41
    iput-object p5, p0, Lio/fabric/sdk/android/services/f/j;->d:Lio/fabric/sdk/android/services/f/g;

    .line 42
    iput-object p6, p0, Lio/fabric/sdk/android/services/f/j;->e:Lio/fabric/sdk/android/services/f/z;

    .line 43
    new-instance v0, Lio/fabric/sdk/android/services/e/c;

    iget-object v1, p0, Lio/fabric/sdk/android/services/f/j;->f:Lio/fabric/sdk/android/k;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/e/c;-><init>(Lio/fabric/sdk/android/k;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/f/j;->g:Lio/fabric/sdk/android/services/e/b;

    .line 44
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lio/fabric/sdk/android/services/f/j;->f:Lio/fabric/sdk/android/k;

    invoke-virtual {v0}, Lio/fabric/sdk/android/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lio/fabric/sdk/android/services/f/j;->b:Lio/fabric/sdk/android/services/f/x;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/f/x;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 130
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 131
    return-void
.end method

.method private b(Lio/fabric/sdk/android/services/f/t;)Lio/fabric/sdk/android/services/f/v;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 88
    .line 91
    :try_start_0
    sget-object v1, Lio/fabric/sdk/android/services/f/t;->SKIP_CACHE_LOOKUP:Lio/fabric/sdk/android/services/f/t;

    invoke-virtual {v1, p1}, Lio/fabric/sdk/android/services/f/t;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lio/fabric/sdk/android/services/f/j;->d:Lio/fabric/sdk/android/services/f/g;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/f/g;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_5

    .line 95
    iget-object v1, p0, Lio/fabric/sdk/android/services/f/j;->b:Lio/fabric/sdk/android/services/f/x;

    iget-object v3, p0, Lio/fabric/sdk/android/services/f/j;->c:Lio/fabric/sdk/android/services/b/r;

    invoke-interface {v1, v3, v2}, Lio/fabric/sdk/android/services/f/x;->a(Lio/fabric/sdk/android/services/b/r;Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/f/v;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_4

    .line 99
    const-string v3, "Loaded cached settings: "

    invoke-direct {p0, v2, v3}, Lio/fabric/sdk/android/services/f/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lio/fabric/sdk/android/services/f/j;->c:Lio/fabric/sdk/android/services/b/r;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/b/r;->a()J

    move-result-wide v2

    .line 103
    sget-object v4, Lio/fabric/sdk/android/services/f/t;->IGNORE_CACHE_EXPIRATION:Lio/fabric/sdk/android/services/f/t;

    invoke-virtual {v4, p1}, Lio/fabric/sdk/android/services/f/t;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-wide v4, v1, Lio/fabric/sdk/android/services/f/v;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v2, v4, v2

    if-gez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_3

    .line 106
    :cond_0
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 122
    :cond_1
    :goto_1
    return-object v0

    .line 103
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 108
    :cond_3
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    invoke-interface {v1}, Lio/fabric/sdk/android/q;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 118
    :catch_0
    move-exception v1

    .line 119
    :goto_2
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed to get cached settings"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 111
    :cond_4
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to transform cached settings data."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 115
    :cond_5
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    invoke-interface {v1}, Lio/fabric/sdk/android/q;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 118
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/fabric/sdk/android/services/f/j;->f:Lio/fabric/sdk/android/k;

    invoke-virtual {v2}, Lio/fabric/sdk/android/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/b/l;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lio/fabric/sdk/android/services/f/v;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lio/fabric/sdk/android/services/f/t;->USE_CACHE:Lio/fabric/sdk/android/services/f/t;

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/f/j;->a(Lio/fabric/sdk/android/services/f/t;)Lio/fabric/sdk/android/services/f/v;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/fabric/sdk/android/services/f/t;)Lio/fabric/sdk/android/services/f/v;
    .locals 7

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 58
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/services/f/j;->g:Lio/fabric/sdk/android/services/e/b;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/e/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "existing_instance_identifier"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lio/fabric/sdk/android/services/f/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/f/j;->b(Lio/fabric/sdk/android/services/f/t;)Lio/fabric/sdk/android/services/f/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 62
    :cond_0
    if-nez v1, :cond_1

    .line 63
    :try_start_1
    iget-object v0, p0, Lio/fabric/sdk/android/services/f/j;->e:Lio/fabric/sdk/android/services/f/z;

    iget-object v2, p0, Lio/fabric/sdk/android/services/f/j;->a:Lio/fabric/sdk/android/services/f/y;

    invoke-interface {v0, v2}, Lio/fabric/sdk/android/services/f/z;->a(Lio/fabric/sdk/android/services/f/y;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    iget-object v2, p0, Lio/fabric/sdk/android/services/f/j;->b:Lio/fabric/sdk/android/services/f/x;

    iget-object v3, p0, Lio/fabric/sdk/android/services/f/j;->c:Lio/fabric/sdk/android/services/b/r;

    invoke-interface {v2, v3, v0}, Lio/fabric/sdk/android/services/f/x;->a(Lio/fabric/sdk/android/services/b/r;Lorg/json/JSONObject;)Lio/fabric/sdk/android/services/f/v;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lio/fabric/sdk/android/services/f/j;->d:Lio/fabric/sdk/android/services/f/g;

    iget-wide v4, v1, Lio/fabric/sdk/android/services/f/v;->g:J

    invoke-interface {v2, v4, v5, v0}, Lio/fabric/sdk/android/services/f/g;->a(JLorg/json/JSONObject;)V

    .line 69
    const-string v2, "Loaded settings: "

    invoke-direct {p0, v0, v2}, Lio/fabric/sdk/android/services/f/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lio/fabric/sdk/android/services/f/j;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lio/fabric/sdk/android/services/f/j;->g:Lio/fabric/sdk/android/services/e/b;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/e/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "existing_instance_identifier"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lio/fabric/sdk/android/services/f/j;->g:Lio/fabric/sdk/android/services/e/b;

    invoke-interface {v0, v2}, Lio/fabric/sdk/android/services/e/b;->a(Landroid/content/SharedPreferences$Editor;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v0, v1

    .line 77
    if-nez v0, :cond_2

    .line 78
    :try_start_2
    sget-object v1, Lio/fabric/sdk/android/services/f/t;->IGNORE_CACHE_EXPIRATION:Lio/fabric/sdk/android/services/f/t;

    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/f/j;->b(Lio/fabric/sdk/android/services/f/t;)Lio/fabric/sdk/android/services/f/v;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 84
    :cond_2
    :goto_1
    return-object v0

    .line 58
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 82
    :goto_2
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 81
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method
