.class public Lcom/facebook/b/an;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_ERROR"

.field public static final ACTION_LIKE_ACTION_CONTROLLER_DID_RESET:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_RESET"

.field public static final ACTION_LIKE_ACTION_CONTROLLER_UPDATED:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.UPDATED"

.field public static final ACTION_OBJECT_ID_KEY:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.OBJECT_ID"

.field private static final ERROR_CODE_OBJECT_ALREADY_LIKED:I = 0xdad

.field public static final ERROR_INVALID_OBJECT_ID:Ljava/lang/String; = "Invalid Object Id"

.field private static final JSON_BOOL_IS_OBJECT_LIKED_KEY:Ljava/lang/String; = "is_object_liked"

.field private static final JSON_BUNDLE_PENDING_CALL_ANALYTICS_BUNDLE:Ljava/lang/String; = "pending_call_analytics_bundle"

.field private static final JSON_INT_VERSION_KEY:Ljava/lang/String; = "com.facebook.internal.LikeActionController.version"

.field private static final JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY:Ljava/lang/String; = "like_count_string_without_like"

.field private static final JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY:Ljava/lang/String; = "like_count_string_with_like"

.field private static final JSON_STRING_OBJECT_ID_KEY:Ljava/lang/String; = "object_id"

.field private static final JSON_STRING_PENDING_CALL_ID_KEY:Ljava/lang/String; = "pending_call_id"

.field private static final JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY:Ljava/lang/String; = "social_sentence_without_like"

.field private static final JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY:Ljava/lang/String; = "social_sentence_with_like"

.field private static final JSON_STRING_UNLIKE_TOKEN_KEY:Ljava/lang/String; = "unlike_token"

.field private static final LIKE_ACTION_CONTROLLER_STORE:Ljava/lang/String; = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

.field private static final LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY:Ljava/lang/String; = "OBJECT_SUFFIX"

.field private static final LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY:Ljava/lang/String; = "PENDING_CONTROLLER_KEY"

.field private static final LIKE_ACTION_CONTROLLER_VERSION:I = 0x2

.field private static final LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY:Ljava/lang/String; = "like_count_string"

.field private static final LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY:Ljava/lang/String; = "object_is_liked"

.field private static final LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY:Ljava/lang/String; = "social_sentence"

.field private static final LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY:Ljava/lang/String; = "unlike_token"

.field private static final MAX_CACHE_SIZE:I = 0x80

.field private static final MAX_OBJECT_SUFFIX:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static a:Lcom/facebook/b/o;

.field private static b:Lcom/facebook/b/cq;

.field private static c:Lcom/facebook/b/cq;

.field private static final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/b/an;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Landroid/os/Handler;

.field private static e:Ljava/lang/String;

.field private static f:Z

.field private static g:Z

.field private static volatile h:I


# instance fields
.field private i:Lcom/facebook/by;

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/util/UUID;

.field private w:Landroid/os/Bundle;

.field private x:Lcom/facebook/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    const-class v0, Lcom/facebook/b/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/b/an;->TAG:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/b/an;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    new-instance v0, Lcom/facebook/b/cq;

    invoke-direct {v0, v1}, Lcom/facebook/b/cq;-><init>(I)V

    sput-object v0, Lcom/facebook/b/an;->b:Lcom/facebook/b/cq;

    .line 89
    new-instance v0, Lcom/facebook/b/cq;

    invoke-direct {v0, v1}, Lcom/facebook/b/cq;-><init>(I)V

    sput-object v0, Lcom/facebook/b/an;->c:Lcom/facebook/b/cq;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/facebook/by;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/facebook/b/an;->j:Landroid/content/Context;

    .line 520
    iput-object p2, p0, Lcom/facebook/b/an;->i:Lcom/facebook/by;

    .line 521
    iput-object p3, p0, Lcom/facebook/b/an;->k:Ljava/lang/String;

    .line 523
    invoke-static {p1, p2}, Lcom/facebook/c;->a(Landroid/content/Context;Lcom/facebook/by;)Lcom/facebook/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/an;->x:Lcom/facebook/c;

    .line 524
    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .prologue
    .line 45
    sput p0, Lcom/facebook/b/an;->h:I

    return p0
.end method

.method private static a(Ljava/lang/String;)Lcom/facebook/b/an;
    .locals 5

    .prologue
    .line 331
    invoke-static {p0}, Lcom/facebook/b/an;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    sget-object v0, Lcom/facebook/b/an;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/b/an;

    .line 334
    if-eqz v0, :cond_0

    .line 336
    sget-object v2, Lcom/facebook/b/an;->b:Lcom/facebook/b/cq;

    new-instance v3, Lcom/facebook/b/bl;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/facebook/b/bl;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/facebook/b/cq;->a(Ljava/lang/Runnable;)Lcom/facebook/b/cs;

    .line 339
    :cond_0
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)Lcom/facebook/widget/c;
    .locals 1

    .prologue
    .line 683
    new-instance v0, Lcom/facebook/b/au;

    invoke-direct {v0, p0, p1}, Lcom/facebook/b/au;-><init>(Lcom/facebook/b/an;Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/b/an;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/b/an;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/app/Activity;ZLandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 586
    invoke-direct {p0, p2}, Lcom/facebook/b/an;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    if-eqz p2, :cond_0

    .line 588
    iput-boolean v1, p0, Lcom/facebook/b/an;->u:Z

    new-instance v0, Lcom/facebook/b/av;

    invoke-direct {v0, p0, p1, p3}, Lcom/facebook/b/av;-><init>(Lcom/facebook/b/an;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/facebook/b/an;->a(Lcom/facebook/b/bo;)V

    .line 595
    :goto_0
    return-void

    .line 590
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/b/an;->u:Z

    new-instance v0, Lcom/facebook/br;

    invoke-direct {v0}, Lcom/facebook/br;-><init>()V

    new-instance v1, Lcom/facebook/b/bn;

    iget-object v2, p0, Lcom/facebook/b/an;->q:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/facebook/b/bn;-><init>(Lcom/facebook/b/an;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/facebook/b/bn;->a(Lcom/facebook/br;)V

    new-instance v2, Lcom/facebook/b/ax;

    invoke-direct {v2, p0, v1, p1, p3}, Lcom/facebook/b/ax;-><init>(Lcom/facebook/b/an;Lcom/facebook/b/bn;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lcom/facebook/br;->a(Lcom/facebook/bs;)V

    invoke-virtual {v0}, Lcom/facebook/br;->h()Lcom/facebook/bq;

    goto :goto_0

    .line 593
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/facebook/b/an;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 232
    const-class v1, Lcom/facebook/b/an;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/b/an;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    monitor-exit v1

    return-void

    .line 236
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/b/an;->d:Landroid/os/Handler;

    .line 238
    const-string v0, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 242
    const-string v2, "OBJECT_SUFFIX"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/facebook/b/an;->h:I

    .line 243
    new-instance v0, Lcom/facebook/b/o;

    sget-object v2, Lcom/facebook/b/an;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/b/x;

    invoke-direct {v3}, Lcom/facebook/b/x;-><init>()V

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/b/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/x;)V

    sput-object v0, Lcom/facebook/b/an;->a:Lcom/facebook/b/o;

    .line 245
    invoke-static {p0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/facebook/b/as;

    invoke-direct {v3}, Lcom/facebook/b/as;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 247
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/b/an;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/facebook/b/an;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/b/an;->b(Landroid/content/Context;Lcom/facebook/b/an;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-static {p0, v0, p1, v0}, Lcom/facebook/b/an;->b(Landroid/content/Context;Lcom/facebook/b/an;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/be;)V
    .locals 2

    .prologue
    .line 176
    sget-boolean v0, Lcom/facebook/b/an;->g:Z

    if-nez v0, :cond_0

    .line 177
    invoke-static {p0}, Lcom/facebook/b/an;->a(Landroid/content/Context;)V

    .line 180
    :cond_0
    invoke-static {p1}, Lcom/facebook/b/an;->a(Ljava/lang/String;)Lcom/facebook/b/an;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_1

    .line 183
    invoke-static {p2, v0}, Lcom/facebook/b/an;->a(Lcom/facebook/b/be;Lcom/facebook/b/an;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_1
    sget-object v0, Lcom/facebook/b/an;->c:Lcom/facebook/b/cq;

    new-instance v1, Lcom/facebook/b/bd;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/b/bd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/be;)V

    invoke-virtual {v0, v1}, Lcom/facebook/b/cq;->a(Ljava/lang/Runnable;)Lcom/facebook/b/cs;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/b/an;)V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/b/an;->i:Lcom/facebook/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/b/an;->i:Lcom/facebook/by;

    invoke-virtual {v0}, Lcom/facebook/by;->b()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/cs;->CREATED:Lcom/facebook/cs;

    iget-object v1, p0, Lcom/facebook/b/an;->i:Lcom/facebook/by;

    invoke-virtual {v1}, Lcom/facebook/by;->c()Lcom/facebook/cs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/cs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/facebook/b/bu;

    iget-object v1, p0, Lcom/facebook/b/an;->j:Landroid/content/Context;

    invoke-static {}, Lcom/facebook/cu;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/b/an;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/b/bu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/b/bu;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/facebook/b/ba;

    invoke-direct {v1, p0}, Lcom/facebook/b/ba;-><init>(Lcom/facebook/b/an;)V

    invoke-virtual {v0, v1}, Lcom/facebook/b/bu;->a(Lcom/facebook/b/ce;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/facebook/b/ay;

    invoke-direct {v0, p0}, Lcom/facebook/b/ay;-><init>(Lcom/facebook/b/an;)V

    invoke-direct {p0, v0}, Lcom/facebook/b/an;->a(Lcom/facebook/b/bo;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/b/an;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/facebook/b/an;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/b/an;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/facebook/b/an;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/b/an;Ljava/lang/String;Lcom/facebook/ap;)V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/ap;->e()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "error"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/facebook/b/an;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/b/an;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p6}, Lcom/facebook/b/an;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/facebook/b/be;Lcom/facebook/b/an;)V
    .locals 2

    .prologue
    .line 251
    if-nez p0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 255
    :cond_0
    sget-object v0, Lcom/facebook/b/an;->d:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/b/ar;

    invoke-direct {v1, p0, p1}, Lcom/facebook/b/ar;-><init>(Lcom/facebook/b/be;Lcom/facebook/b/an;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Lcom/facebook/b/bo;)V
    .locals 4

    .prologue
    .line 953
    iget-object v0, p0, Lcom/facebook/b/an;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 954
    if-eqz p1, :cond_0

    .line 955
    invoke-interface {p1}, Lcom/facebook/b/bo;->a()V

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    new-instance v0, Lcom/facebook/b/bg;

    iget-object v1, p0, Lcom/facebook/b/an;->k:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/facebook/b/bg;-><init>(Lcom/facebook/b/an;Ljava/lang/String;)V

    .line 962
    new-instance v1, Lcom/facebook/b/bi;

    iget-object v2, p0, Lcom/facebook/b/an;->k:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/facebook/b/bi;-><init>(Lcom/facebook/b/an;Ljava/lang/String;)V

    .line 964
    new-instance v2, Lcom/facebook/br;

    invoke-direct {v2}, Lcom/facebook/br;-><init>()V

    .line 965
    invoke-virtual {v0, v2}, Lcom/facebook/b/bg;->a(Lcom/facebook/br;)V

    .line 966
    invoke-virtual {v1, v2}, Lcom/facebook/b/bi;->a(Lcom/facebook/br;)V

    .line 968
    new-instance v3, Lcom/facebook/b/ap;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/facebook/b/ap;-><init>(Lcom/facebook/b/an;Lcom/facebook/b/bg;Lcom/facebook/b/bi;Lcom/facebook/b/bo;)V

    invoke-virtual {v2, v3}, Lcom/facebook/br;->a(Lcom/facebook/bs;)V

    .line 991
    invoke-virtual {v2}, Lcom/facebook/br;->h()Lcom/facebook/bq;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 995
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 996
    const-string v1, "object_id"

    iget-object v2, p0, Lcom/facebook/b/an;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v1, "current_action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v1, p0, Lcom/facebook/b/an;->x:Lcom/facebook/c;

    const-string v2, "fb_like_control_error"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1000
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 45
    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/facebook/b/an;->a:Lcom/facebook/b/o;

    invoke-virtual {v0, p0}, Lcom/facebook/b/o;->b(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lcom/facebook/b/an;->TAG:Ljava/lang/String;

    const-string v3, "Unable to serialize controller to disk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    :cond_1
    throw v0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 604
    invoke-static {p2, v6}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-static {p3, v6}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 606
    invoke-static {p4, v6}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 607
    invoke-static {p5, v6}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 608
    invoke-static {p6, v6}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 610
    iget-boolean v0, p0, Lcom/facebook/b/an;->l:Z

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/b/an;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/b/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/b/an;->n:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/facebook/b/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/b/an;->o:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/facebook/b/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/b/an;->p:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/facebook/b/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/b/an;->q:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/facebook/b/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 617
    :goto_0
    if-nez v0, :cond_2

    .line 631
    :goto_1
    return-void

    .line 610
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 621
    :cond_2
    iput-boolean p1, p0, Lcom/facebook/b/an;->l:Z

    .line 622
    iput-object v1, p0, Lcom/facebook/b/an;->m:Ljava/lang/String;

    .line 623
    iput-object v2, p0, Lcom/facebook/b/an;->n:Ljava/lang/String;

    .line 624
    iput-object v3, p0, Lcom/facebook/b/an;->o:Ljava/lang/String;

    .line 625
    iput-object v4, p0, Lcom/facebook/b/an;->p:Ljava/lang/String;

    .line 626
    iput-object v5, p0, Lcom/facebook/b/an;->q:Ljava/lang/String;

    .line 628
    invoke-static {p0}, Lcom/facebook/b/an;->m(Lcom/facebook/b/an;)V

    .line 630
    iget-object v0, p0, Lcom/facebook/b/an;->j:Landroid/content/Context;

    const-string v1, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {v0, p0, v1, v6}, Lcom/facebook/b/an;->b(Landroid/content/Context;Lcom/facebook/b/an;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;IILandroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-static {p3}, Lcom/facebook/b/bw;->a(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v1

    .line 133
    if-nez v1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    sget-object v2, Lcom/facebook/b/an;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    const-string v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 143
    const-string v3, "PENDING_CONTROLLER_KEY"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/b/an;->e:Ljava/lang/String;

    .line 148
    :cond_2
    sget-object v2, Lcom/facebook/b/an;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    sget-object v0, Lcom/facebook/b/an;->e:Ljava/lang/String;

    new-instance v2, Lcom/facebook/b/ao;

    invoke-direct {v2, p1, p2, p3, v1}, Lcom/facebook/b/ao;-><init>(IILandroid/content/Intent;Ljava/util/UUID;)V

    invoke-static {p0, v0, v2}, Lcom/facebook/b/an;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/be;)V

    .line 163
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/b/an;ILandroid/content/Intent;Ljava/util/UUID;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 45
    iget-object v1, p0, Lcom/facebook/b/an;->v:Ljava/util/UUID;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/b/an;->v:Ljava/util/UUID;

    invoke-virtual {v1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/facebook/b/cb;->a()Lcom/facebook/b/cb;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/b/an;->v:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Lcom/facebook/b/cb;->b(Ljava/util/UUID;)Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/b/an;->j:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/b/an;->w:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/facebook/b/an;->a(Landroid/os/Bundle;)Lcom/facebook/widget/c;

    move-result-object v0

    invoke-static {v1, p1, p2, v0}, Lcom/facebook/widget/FacebookDialog;->a(Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/c;)Z

    invoke-static {}, Lcom/facebook/b/cb;->a()Lcom/facebook/b/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/an;->v:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/facebook/b/cb;->a(Ljava/util/UUID;)V

    iput-object v3, p0, Lcom/facebook/b/an;->v:Ljava/util/UUID;

    iput-object v3, p0, Lcom/facebook/b/an;->w:Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/facebook/b/an;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/b/an;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/facebook/b/an;->t:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 45
    sput-boolean p0, Lcom/facebook/b/an;->f:Z

    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/b/an;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 380
    .line 384
    :try_start_0
    invoke-static {p1}, Lcom/facebook/b/an;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    sget-object v2, Lcom/facebook/b/an;->a:Lcom/facebook/b/o;

    invoke-virtual {v2, v1}, Lcom/facebook/b/o;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 386
    if-eqz v2, :cond_0

    .line 387
    :try_start_1
    invoke-static {v2}, Lcom/facebook/b/cl;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 389
    invoke-static {p0, v1}, Lcom/facebook/b/an;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/b/an;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 396
    :cond_0
    if-eqz v2, :cond_1

    .line 397
    invoke-static {v2}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    .line 401
    :cond_1
    :goto_0
    return-object v0

    .line 392
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 393
    :goto_1
    :try_start_2
    sget-object v3, Lcom/facebook/b/an;->TAG:Ljava/lang/String;

    const-string v4, "Unable to deserialize controller from disk"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 396
    if-eqz v2, :cond_1

    .line 397
    invoke-static {v2}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_2

    .line 397
    invoke-static {v2}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    :cond_2
    throw v0

    .line 396
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 392
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/b/an;)Lcom/facebook/c;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/b/an;->x:Lcom/facebook/c;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/b/an;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/b/an;->r:Ljava/lang/String;

    return-object p1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v1

    .line 475
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/by;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {v1}, Lcom/facebook/by;->e()Ljava/lang/String;

    move-result-object v0

    .line 478
    :cond_0
    if-eqz v0, :cond_1

    .line 482
    invoke-static {v0}, Lcom/facebook/b/cl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    :cond_1
    const-string v1, "%s|%s|com.fb.sdk.like|%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {v0, v4}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    sget v3, Lcom/facebook/b/an;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 634
    new-instance v0, Lcom/facebook/b/bj;

    iget-object v1, p0, Lcom/facebook/b/an;->k:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/facebook/b/bj;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0}, Lcom/facebook/b/bj;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    invoke-virtual {v0}, Lcom/facebook/b/bj;->f()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog;->a()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    invoke-static {}, Lcom/facebook/b/cb;->a()Lcom/facebook/b/cb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/b/cb;->a(Lcom/facebook/widget/FacebookDialog$PendingCall;)V

    invoke-virtual {v0}, Lcom/facebook/widget/FacebookDialog$PendingCall;->b()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/an;->v:Ljava/util/UUID;

    iget-object v0, p0, Lcom/facebook/b/an;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/b/an;->c(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/facebook/b/an;->w:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/facebook/b/an;->m(Lcom/facebook/b/an;)V

    .line 638
    iget-object v0, p0, Lcom/facebook/b/an;->x:Lcom/facebook/c;

    const-string v1, "fb_like_control_did_present_dialog"

    invoke-virtual {v0, v1, p2}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/b/bj;->e()Ljava/lang/String;

    move-result-object v1

    .line 641
    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 642
    invoke-virtual {v0}, Lcom/facebook/b/bj;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/b/bj;->c()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/facebook/b/an;->a(Landroid/os/Bundle;)Lcom/facebook/widget/c;

    move-result-object v3

    invoke-static {p1, v1, v2, v0, v3}, Lcom/facebook/b/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/c;)Z

    move-result v0

    .line 648
    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/facebook/b/an;->x:Lcom/facebook/c;

    const-string v1, "fb_like_control_did_present_fallback_dialog"

    invoke-virtual {v0, v1, p2}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/facebook/b/an;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 500
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    if-eqz p1, :cond_1

    .line 502
    if-nez p3, :cond_0

    .line 503
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 506
    :cond_0
    const-string v1, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    iget-object v2, p1, Lcom/facebook/b/an;->k:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_1
    if-eqz p3, :cond_2

    .line 510
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 512
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    .line 513
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/be;)V
    .locals 5

    .prologue
    .line 45
    invoke-static {p1}, Lcom/facebook/b/an;->a(Ljava/lang/String;)Lcom/facebook/b/an;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2, v0}, Lcom/facebook/b/an;->a(Lcom/facebook/b/be;Lcom/facebook/b/an;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/b/an;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/b/an;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/facebook/b/an;

    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/b/an;-><init>(Landroid/content/Context;Lcom/facebook/by;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/b/an;->m(Lcom/facebook/b/an;)V

    :cond_1
    invoke-static {p1}, Lcom/facebook/b/an;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/b/an;->b:Lcom/facebook/b/cq;

    new-instance v3, Lcom/facebook/b/bl;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/facebook/b/bl;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/facebook/b/cq;->a(Ljava/lang/Runnable;)Lcom/facebook/b/cs;

    sget-object v2, Lcom/facebook/b/an;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/facebook/b/an;->d:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/b/aq;

    invoke-direct {v2, v0}, Lcom/facebook/b/aq;-><init>(Lcom/facebook/b/an;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {p2, v0}, Lcom/facebook/b/an;->a(Lcom/facebook/b/be;Lcom/facebook/b/an;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/b/an;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/b/an;->l:Z

    iget-boolean v1, p0, Lcom/facebook/b/an;->t:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/b/an;->l:Z

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/b/an;->a(Landroid/app/Activity;ZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/facebook/b/an;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/facebook/b/an;->s:Z

    return p1
.end method

.method private b(Z)Z
    .locals 2

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/facebook/b/an;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/b/an;->r:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/b/an;->i:Lcom/facebook/by;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/b/an;->i:Lcom/facebook/by;

    invoke-virtual {v0}, Lcom/facebook/by;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/b/an;->i:Lcom/facebook/by;

    invoke-virtual {v0}, Lcom/facebook/by;->f()Ljava/util/List;

    move-result-object v0

    const-string v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/b/an;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/b/an;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/b/an;->j:Landroid/content/Context;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/b/an;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 408
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 409
    const-string v0, "com.facebook.internal.LikeActionController.version"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 410
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 441
    :goto_0
    return-object v1

    .line 415
    :cond_0
    new-instance v0, Lcom/facebook/b/an;

    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v3

    const-string v4, "object_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v3, v4}, Lcom/facebook/b/an;-><init>(Landroid/content/Context;Lcom/facebook/by;Ljava/lang/String;)V

    .line 421
    const-string v3, "like_count_string_with_like"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/b/an;->m:Ljava/lang/String;

    .line 422
    const-string v3, "like_count_string_without_like"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/b/an;->n:Ljava/lang/String;

    .line 423
    const-string v3, "social_sentence_with_like"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/b/an;->o:Ljava/lang/String;

    .line 424
    const-string v3, "social_sentence_without_like"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/b/an;->p:Ljava/lang/String;

    .line 425
    const-string v3, "is_object_liked"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/facebook/b/an;->l:Z

    .line 426
    const-string v3, "unlike_token"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/b/an;->q:Ljava/lang/String;

    .line 427
    const-string v3, "pending_call_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v3}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 429
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iput-object v3, v0, Lcom/facebook/b/an;->v:Ljava/util/UUID;

    .line 432
    :cond_1
    const-string v3, "pending_call_analytics_bundle"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 433
    if-eqz v2, :cond_2

    .line 434
    invoke-static {v2}, Lcom/facebook/b/b;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/b/an;->w:Landroid/os/Bundle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object v1, v0

    .line 441
    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    sget-object v2, Lcom/facebook/b/an;->TAG:Ljava/lang/String;

    const-string v3, "Unable to deserialize controller from JSON"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 438
    goto :goto_1
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 748
    sput-object p1, Lcom/facebook/b/an;->e:Ljava/lang/String;

    .line 749
    iget-object v0, p0, Lcom/facebook/b/an;->j:Landroid/content/Context;

    const-string v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PENDING_CONTROLLER_KEY"

    sget-object v2, Lcom/facebook/b/an;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 753
    return-void
.end method

.method static synthetic d(Lcom/facebook/b/an;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/b/an;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/facebook/b/an;->f:Z

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/facebook/b/an;->h:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/b/an;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/b/an;->u:Z

    return v0
.end method

.method static synthetic f(Lcom/facebook/b/an;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/b/an;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/facebook/b/an;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic g()Lcom/facebook/b/o;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/facebook/b/an;->a:Lcom/facebook/b/o;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/b/an;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/b/an;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/facebook/b/an;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/facebook/b/an;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/b/an;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/facebook/b/an;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/facebook/b/an;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/b/an;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/facebook/b/an;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/b/an;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/facebook/b/an;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/b/an;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/facebook/b/an;)Lcom/facebook/by;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/b/an;->i:Lcom/facebook/by;

    return-object v0
.end method

.method private static m(Lcom/facebook/b/an;)V
    .locals 4

    .prologue
    .line 347
    invoke-static {p0}, Lcom/facebook/b/an;->n(Lcom/facebook/b/an;)Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/facebook/b/an;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/b/an;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    sget-object v2, Lcom/facebook/b/an;->c:Lcom/facebook/b/cq;

    new-instance v3, Lcom/facebook/b/bp;

    invoke-direct {v3, v1, v0}, Lcom/facebook/b/bp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/facebook/b/cq;->a(Ljava/lang/Runnable;)Lcom/facebook/b/cs;

    .line 353
    :cond_0
    return-void
.end method

.method private static n(Lcom/facebook/b/an;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 447
    :try_start_0
    const-string v1, "com.facebook.internal.LikeActionController.version"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 448
    const-string v1, "object_id"

    iget-object v2, p0, Lcom/facebook/b/an;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 449
    const-string v1, "like_count_string_with_like"

    iget-object v2, p0, Lcom/facebook/b/an;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    const-string v1, "like_count_string_without_like"

    iget-object v2, p0, Lcom/facebook/b/an;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    const-string v1, "social_sentence_with_like"

    iget-object v2, p0, Lcom/facebook/b/an;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
    const-string v1, "social_sentence_without_like"

    iget-object v2, p0, Lcom/facebook/b/an;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    const-string v1, "is_object_liked"

    iget-boolean v2, p0, Lcom/facebook/b/an;->l:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 454
    const-string v1, "unlike_token"

    iget-object v2, p0, Lcom/facebook/b/an;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    iget-object v1, p0, Lcom/facebook/b/an;->v:Ljava/util/UUID;

    if-eqz v1, :cond_0

    .line 456
    const-string v1, "pending_call_id"

    iget-object v2, p0, Lcom/facebook/b/an;->v:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/facebook/b/an;->w:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/facebook/b/an;->w:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/facebook/b/b;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    .line 460
    if-eqz v1, :cond_1

    .line 461
    const-string v2, "pending_call_analytics_bundle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    sget-object v1, Lcom/facebook/b/an;->TAG:Ljava/lang/String;

    const-string v2, "Unable to serialize controller to JSON"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/facebook/b/an;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/b/an;->m:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/b/an;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 562
    iget-object v0, p0, Lcom/facebook/b/an;->x:Lcom/facebook/c;

    const-string v1, "fb_like_control_did_tap"

    invoke-virtual {v0, v1, p2}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 564
    iget-boolean v0, p0, Lcom/facebook/b/an;->l:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    .line 565
    :goto_0
    invoke-direct {p0, v1}, Lcom/facebook/b/an;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    iget-object v2, p0, Lcom/facebook/b/an;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/b/an;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/b/an;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/b/an;->p:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/b/an;->q:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/b/an;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-boolean v0, p0, Lcom/facebook/b/an;->u:Z

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/facebook/b/an;->x:Lcom/facebook/c;

    const-string v1, "fb_like_control_did_undo_quickly"

    invoke-virtual {v0, v1, p2}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 583
    :goto_1
    return-void

    .line 564
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 582
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/facebook/b/an;->a(Landroid/app/Activity;ZLandroid/os/Bundle;)V

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/facebook/b/an;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/b/an;->o:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/b/an;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/facebook/b/an;->l:Z

    return v0
.end method
