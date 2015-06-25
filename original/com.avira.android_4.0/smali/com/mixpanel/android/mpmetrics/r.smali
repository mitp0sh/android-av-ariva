.class public final Lcom/mixpanel/android/mpmetrics/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ENGAGE_DATE_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI"

.field public static final VERSION:Ljava/lang/String; = "4.0.1-RC1"

.field private static k:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/mixpanel/android/mpmetrics/r;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPrefsLoader:Lcom/mixpanel/android/mpmetrics/am;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/mixpanel/android/mpmetrics/a;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/mixpanel/android/mpmetrics/w;

.field private final e:Lcom/mixpanel/android/mpmetrics/ah;

.field private final f:Ljava/lang/Object;

.field private g:I

.field private h:Landroid/graphics/Bitmap;

.field private i:I

.field private final j:Lcom/mixpanel/android/mpmetrics/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/r;->sInstanceMap:Ljava/util/Map;

    .line 1249
    new-instance v0, Lcom/mixpanel/android/mpmetrics/am;

    invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/am;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/r;->sPrefsLoader:Lcom/mixpanel/android/mpmetrics/am;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1239
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->f:Ljava/lang/Object;

    .line 1240
    const/4 v0, -0x1

    iput v0, p0, Lcom/mixpanel/android/mpmetrics/r;->g:I

    .line 1245
    new-instance v0, Lcom/mixpanel/android/mpmetrics/t;

    invoke-direct {v0, v1}, Lcom/mixpanel/android/mpmetrics/t;-><init>(B)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->j:Lcom/mixpanel/android/mpmetrics/t;

    .line 103
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/r;->a:Landroid/content/Context;

    .line 104
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/r;->c:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/mixpanel/android/mpmetrics/w;

    invoke-direct {v0, p0, v1}, Lcom/mixpanel/android/mpmetrics/w;-><init>(Lcom/mixpanel/android/mpmetrics/r;B)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lcom/mixpanel/android/mpmetrics/w;

    .line 106
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->b:Lcom/mixpanel/android/mpmetrics/a;

    .line 108
    new-instance v0, Lcom/mixpanel/android/mpmetrics/s;

    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/s;-><init>(Lcom/mixpanel/android/mpmetrics/r;)V

    .line 118
    sget-object v1, Lcom/mixpanel/android/mpmetrics/r;->sPrefsLoader:Lcom/mixpanel/android/mpmetrics/am;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.mixpanel.android.mpmetrics.MixpanelAPI_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/mixpanel/android/mpmetrics/am;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/ao;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/mixpanel/android/mpmetrics/ah;

    invoke-direct {v1, p2, v0}, Lcom/mixpanel/android/mpmetrics/ah;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/r;->e:Lcom/mixpanel/android/mpmetrics/ah;

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/n;->a(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/n;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/mixpanel/android/mpmetrics/ac;

    invoke-direct {v1, p0}, Lcom/mixpanel/android/mpmetrics/ac;-><init>(Lcom/mixpanel/android/mpmetrics/r;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 121
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/r;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/mixpanel/android/mpmetrics/r;->i:I

    return p1
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/r;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/r;->h:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/r;)Lcom/mixpanel/android/mpmetrics/ah;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->e:Lcom/mixpanel/android/mpmetrics/ah;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/r;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 150
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    sget-object v2, Lcom/mixpanel/android/mpmetrics/r;->sInstanceMap:Ljava/util/Map;

    monitor-enter v2

    .line 154
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 156
    sget-object v0, Lcom/mixpanel/android/mpmetrics/r;->k:Ljava/util/concurrent/Future;

    if-nez v0, :cond_2

    .line 157
    sget-object v0, Lcom/mixpanel/android/mpmetrics/r;->sPrefsLoader:Lcom/mixpanel/android/mpmetrics/am;

    const-string v1, "com.mixpanel.android.mpmetrics.ReferralInfo"

    const/4 v4, 0x0

    invoke-virtual {v0, p0, v1, v4}, Lcom/mixpanel/android/mpmetrics/am;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/ao;)Ljava/util/concurrent/Future;

    move-result-object v0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/r;->k:Ljava/util/concurrent/Future;

    .line 160
    :cond_2
    sget-object v0, Lcom/mixpanel/android/mpmetrics/r;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 161
    if-nez v0, :cond_4

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    sget-object v1, Lcom/mixpanel/android/mpmetrics/r;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 166
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/r;

    .line 167
    if-nez v0, :cond_3

    .line 168
    new-instance v0, Lcom/mixpanel/android/mpmetrics/r;

    sget-object v4, Lcom/mixpanel/android/mpmetrics/r;->k:Ljava/util/concurrent/Future;

    invoke-direct {v0, v3, v4, p1}, Lcom/mixpanel/android/mpmetrics/r;-><init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;)V

    .line 169
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/r;Lorg/json/JSONArray;)V
    .locals 4

    .prologue
    .line 91
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/r;->b:Lcom/mixpanel/android/mpmetrics/a;

    invoke-virtual {v2, v1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MixpanelAPI"

    const-string v3, "Malformed people record stored pending identity, will not send it."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/r;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 91
    const-string v0, "$distinct_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->b:Lcom/mixpanel/android/mpmetrics/a;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/a;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->e:Lcom/mixpanel/android/mpmetrics/ah;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/ah;->a(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method static a(Lcom/mixpanel/android/mpmetrics/u;)V
    .locals 4

    .prologue
    .line 787
    sget-object v1, Lcom/mixpanel/android/mpmetrics/r;->sInstanceMap:Ljava/util/Map;

    monitor-enter v1

    .line 788
    :try_start_0
    sget-object v0, Lcom/mixpanel/android/mpmetrics/r;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 789
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/r;

    .line 790
    invoke-interface {p0, v0}, Lcom/mixpanel/android/mpmetrics/u;->a(Lcom/mixpanel/android/mpmetrics/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 793
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method static synthetic b(Lcom/mixpanel/android/mpmetrics/r;I)I
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/mixpanel/android/mpmetrics/r;->g:I

    return p1
.end method

.method static synthetic b(Lcom/mixpanel/android/mpmetrics/r;)Lcom/mixpanel/android/mpmetrics/t;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->j:Lcom/mixpanel/android/mpmetrics/t;

    return-object v0
.end method

.method static synthetic c(Lcom/mixpanel/android/mpmetrics/r;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/mixpanel/android/mpmetrics/r;)Lcom/mixpanel/android/mpmetrics/a;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->b:Lcom/mixpanel/android/mpmetrics/a;

    return-object v0
.end method

.method static synthetic e(Lcom/mixpanel/android/mpmetrics/r;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/mixpanel/android/mpmetrics/r;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/r;->g:I

    return v0
.end method

.method static synthetic g(Lcom/mixpanel/android/mpmetrics/r;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic h(Lcom/mixpanel/android/mpmetrics/r;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/r;->i:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->b:Lcom/mixpanel/android/mpmetrics/a;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/a;->a()V

    .line 326
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 274
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 276
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->e:Lcom/mixpanel/android/mpmetrics/ah;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ah;->b()Ljava/util/Map;

    move-result-object v0

    .line 277
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    const-string v1, "MixpanelAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception tracking event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    :goto_1
    return-void

    .line 283
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->e:Lcom/mixpanel/android/mpmetrics/ah;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ah;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 285
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 292
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 293
    const-string v3, "time"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 294
    const-string v0, "distinct_id"

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/r;->e:Lcom/mixpanel/android/mpmetrics/ah;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/ah;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    new-instance v0, Lcom/mixpanel/android/mpmetrics/b;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/r;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v2, v1}, Lcom/mixpanel/android/mpmetrics/b;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/r;->b:Lcom/mixpanel/android/mpmetrics/a;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/b;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->e:Lcom/mixpanel/android/mpmetrics/ah;

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/ah;->b(Lorg/json/JSONObject;)V

    .line 393
    return-void
.end method

.method public final b()Lcom/mixpanel/android/mpmetrics/v;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/r;->d:Lcom/mixpanel/android/mpmetrics/w;

    return-object v0
.end method
