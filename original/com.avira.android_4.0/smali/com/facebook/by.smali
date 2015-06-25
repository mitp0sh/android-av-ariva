.class public Lcom/facebook/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ACTION_ACTIVE_SESSION_CLOSED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

.field public static final ACTION_ACTIVE_SESSION_OPENED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_OPENED"

.field public static final ACTION_ACTIVE_SESSION_SET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_SET"

.field public static final ACTION_ACTIVE_SESSION_UNSET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_UNSET"

.field private static final AUTH_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.authBundleKey"

.field public static final DEFAULT_AUTHORIZE_ACTIVITY_CODE:I = 0xface

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static final SESSION_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.saveSessionKey"

.field private static final STATIC_LOCK:Ljava/lang/Object;

.field public static final TAG:Ljava/lang/String;

.field private static final TOKEN_EXTEND_RETRY_SECONDS:I = 0xe10

.field private static final TOKEN_EXTEND_THRESHOLD_SECONDS:I = 0x15180

.field public static final WEB_VIEW_ERROR_CODE_KEY:Ljava/lang/String; = "com.facebook.sdk.WebViewErrorCode"

.field public static final WEB_VIEW_FAILING_URL_KEY:Ljava/lang/String; = "com.facebook.sdk.FailingUrl"

.field private static a:Lcom/facebook/by; = null

.field private static volatile b:Landroid/content/Context; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/facebook/cs;

.field private e:Lcom/facebook/a;

.field private f:Ljava/util/Date;

.field private g:Lcom/facebook/ce;

.field private h:Lcom/facebook/q;

.field private volatile i:Landroid/os/Bundle;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/cn;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/os/Handler;

.field private l:Lcom/facebook/ci;

.field private final m:Ljava/lang/Object;

.field private n:Lcom/facebook/cx;

.field private volatile o:Lcom/facebook/co;

.field private p:Lcom/facebook/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/facebook/by;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/by;->TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/by;->STATIC_LOCK:Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/facebook/bz;

    invoke-direct {v0}, Lcom/facebook/bz;-><init>()V

    sput-object v0, Lcom/facebook/by;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/facebook/by;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/cx;B)V

    .line 267
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/cx;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/by;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/cx;B)V

    .line 271
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/cx;B)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/facebook/by;->f:Ljava/util/Date;

    .line 152
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    .line 277
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 278
    invoke-static {p1}, Lcom/facebook/b/cl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 281
    :cond_0
    const-string v1, "applicationId"

    invoke-static {p2, v1}, Lcom/facebook/b/cp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-static {p1}, Lcom/facebook/by;->b(Landroid/content/Context;)V

    .line 285
    if-nez p3, :cond_1

    .line 286
    new-instance p3, Lcom/facebook/cw;

    sget-object v1, Lcom/facebook/by;->b:Landroid/content/Context;

    invoke-direct {p3, v1}, Lcom/facebook/cw;-><init>(Landroid/content/Context;)V

    .line 289
    :cond_1
    iput-object p2, p0, Lcom/facebook/by;->c:Ljava/lang/String;

    .line 290
    iput-object p3, p0, Lcom/facebook/by;->n:Lcom/facebook/cx;

    .line 291
    sget-object v1, Lcom/facebook/cs;->CREATED:Lcom/facebook/cs;

    iput-object v1, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    .line 292
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/by;->j:Ljava/util/List;

    .line 294
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/facebook/by;->k:Landroid/os/Handler;

    .line 296
    invoke-virtual {p3}, Lcom/facebook/cx;->a()Landroid/os/Bundle;

    move-result-object v1

    .line 297
    if-nez v1, :cond_5

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 298
    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {v1, v0}, Lcom/facebook/cx;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 300
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 302
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 305
    :cond_3
    invoke-virtual {p3}, Lcom/facebook/cx;->b()V

    .line 313
    :cond_4
    invoke-static {}, Lcom/facebook/a;->f()Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    .line 315
    :goto_1
    return-void

    .line 297
    :cond_5
    const-string v2, "com.facebook.TokenCachingStrategy.Token"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 309
    :cond_6
    invoke-static {v1}, Lcom/facebook/a;->a(Landroid/os/Bundle;)Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    .line 310
    sget-object v0, Lcom/facebook/cs;->CREATED_TOKEN_LOADED:Lcom/facebook/cs;

    iput-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/by;
    .locals 2

    .prologue
    .line 995
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/by;->a(Landroid/content/Context;ZLcom/facebook/ck;)Lcom/facebook/by;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/util/List;Lcom/facebook/cn;)Lcom/facebook/by;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/cn;",
            ")",
            "Lcom/facebook/by;"
        }
    .end annotation

    .prologue
    .line 1092
    const/4 v0, 0x1

    new-instance v1, Lcom/facebook/ck;

    invoke-direct {v1, p1}, Lcom/facebook/ck;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v1, p3}, Lcom/facebook/ck;->b(Lcom/facebook/cn;)Lcom/facebook/ck;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/facebook/ck;->b(Ljava/util/List;)Lcom/facebook/ck;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/by;->a(Landroid/content/Context;ZLcom/facebook/ck;)Lcom/facebook/by;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Landroid/content/Context;Lcom/facebook/cn;Landroid/os/Bundle;)Lcom/facebook/by;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 906
    if-nez p2, :cond_0

    move-object v0, v1

    .line 931
    :goto_0
    return-object v0

    .line 909
    :cond_0
    const-string v0, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 910
    if-eqz v0, :cond_2

    .line 911
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 913
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/by;

    .line 914
    invoke-static {p0}, Lcom/facebook/by;->b(Landroid/content/Context;)V

    .line 915
    new-instance v2, Lcom/facebook/cw;

    invoke-direct {v2, p0}, Lcom/facebook/cw;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/facebook/by;->n:Lcom/facebook/cx;

    .line 920
    if-eqz p1, :cond_1

    .line 921
    invoke-virtual {v0, p1}, Lcom/facebook/by;->a(Lcom/facebook/cn;)V

    .line 923
    :cond_1
    const-string v2, "com.facebook.sdk.Session.authBundleKey"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/by;->i:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 925
    :catch_0
    move-exception v0

    .line 926
    sget-object v2, Lcom/facebook/by;->TAG:Ljava/lang/String;

    const-string v3, "Unable to restore session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    move-object v0, v1

    .line 931
    goto :goto_0

    .line 927
    :catch_1
    move-exception v0

    .line 928
    sget-object v2, Lcom/facebook/by;->TAG:Ljava/lang/String;

    const-string v3, "Unable to restore session."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;ZLcom/facebook/ck;)Lcom/facebook/by;
    .locals 3

    .prologue
    .line 1130
    new-instance v0, Lcom/facebook/cj;

    invoke-direct {v0, p0}, Lcom/facebook/cj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/facebook/cj;->a()Lcom/facebook/by;

    move-result-object v0

    .line 1131
    sget-object v1, Lcom/facebook/cs;->CREATED_TOKEN_LOADED:Lcom/facebook/cs;

    invoke-virtual {v0}, Lcom/facebook/by;->c()Lcom/facebook/cs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/cs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 1132
    :cond_0
    invoke-static {v0}, Lcom/facebook/by;->a(Lcom/facebook/by;)V

    .line 1133
    invoke-virtual {v0, p2}, Lcom/facebook/by;->a(Lcom/facebook/ck;)V

    .line 1136
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/facebook/bx;)Lcom/facebook/cl;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 656
    invoke-virtual {p0}, Lcom/facebook/bx;->a()Lcom/facebook/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 699
    :goto_0
    return-object v0

    .line 660
    :cond_0
    const-class v0, Lcom/facebook/c/b;

    invoke-virtual {p0, v0}, Lcom/facebook/bx;->a(Ljava/lang/Class;)Lcom/facebook/c/c;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/b;

    .line 661
    if-nez v0, :cond_1

    move-object v0, v1

    .line 662
    goto :goto_0

    .line 665
    :cond_1
    invoke-interface {v0}, Lcom/facebook/c/b;->a()Lcom/facebook/c/i;

    move-result-object v2

    .line 666
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/facebook/c/i;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 667
    goto :goto_0

    .line 669
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/facebook/c/i;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 670
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/facebook/c/i;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 673
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcom/facebook/c/i;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c;

    .line 674
    invoke-interface {v0}, Lcom/facebook/c/c;->e()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 675
    invoke-interface {v2}, Lcom/facebook/c/i;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/facebook/c/c;

    .line 676
    invoke-interface {v1}, Lcom/facebook/c/c;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 677
    const-string v5, "installed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 678
    invoke-interface {v1}, Lcom/facebook/c/c;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 681
    const-string v5, "granted"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 682
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 683
    :cond_5
    const-string v5, "declined"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 684
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 688
    :cond_6
    invoke-interface {v0}, Lcom/facebook/c/c;->c()Ljava/util/Map;

    move-result-object v0

    .line 689
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 690
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "installed"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 691
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_7

    .line 694
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 699
    :cond_8
    new-instance v0, Lcom/facebook/cl;

    invoke-direct {v0, v3, v4}, Lcom/facebook/cl;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private a(ILcom/facebook/af;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1315
    .line 1317
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1318
    iget-object v0, p2, Lcom/facebook/af;->a:Lcom/facebook/ag;

    sget-object v2, Lcom/facebook/ag;->SUCCESS:Lcom/facebook/ag;

    if-ne v0, v2, :cond_0

    .line 1319
    iget-object v0, p2, Lcom/facebook/af;->b:Lcom/facebook/a;

    move-object v2, v0

    move-object v0, v1

    .line 1327
    :goto_0
    iget-object v3, p2, Lcom/facebook/af;->a:Lcom/facebook/ag;

    iget-object v4, p2, Lcom/facebook/af;->f:Ljava/util/Map;

    invoke-direct {p0, v3, v4, v0}, Lcom/facebook/by;->a(Lcom/facebook/ag;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 1329
    iput-object v1, p0, Lcom/facebook/by;->h:Lcom/facebook/q;

    .line 1330
    invoke-direct {p0, v2, v0}, Lcom/facebook/by;->a(Lcom/facebook/a;Ljava/lang/Exception;)V

    .line 1331
    return-void

    .line 1321
    :cond_0
    new-instance v0, Lcom/facebook/ak;

    iget-object v2, p2, Lcom/facebook/af;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/facebook/ak;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    .line 1323
    :cond_1
    if-nez p1, :cond_2

    .line 1324
    new-instance v0, Lcom/facebook/ao;

    iget-object v2, p2, Lcom/facebook/af;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/facebook/ao;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/facebook/by;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/facebook/a;)V
    .locals 2

    .prologue
    .line 1516
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/by;->n:Lcom/facebook/cx;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/facebook/by;->n:Lcom/facebook/cx;

    invoke-virtual {p1}, Lcom/facebook/a;->g()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/cx;->a(Landroid/os/Bundle;)V

    .line 1519
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/a;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1458
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1460
    new-instance p2, Lcom/facebook/am;

    const-string v1, "Invalid access token."

    invoke-direct {p2, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 1464
    :cond_0
    iget-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 1465
    :try_start_0
    sget-object v0, Lcom/facebook/cd;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-virtual {v2}, Lcom/facebook/cs;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 1484
    :goto_0
    monitor-exit v1

    return-void

    .line 1468
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    invoke-direct {p0, p1}, Lcom/facebook/by;->a(Lcom/facebook/a;)V

    sget-object v2, Lcom/facebook/cs;->OPENED:Lcom/facebook/cs;

    iput-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    :cond_1
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    iget-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-direct {p0, v0, v2, p2}, Lcom/facebook/by;->a(Lcom/facebook/cs;Lcom/facebook/cs;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1484
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1468
    :cond_2
    if-eqz p2, :cond_1

    :try_start_1
    sget-object v2, Lcom/facebook/cs;->CLOSED_LOGIN_FAILED:Lcom/facebook/cs;

    iput-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    goto :goto_1

    .line 1474
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    invoke-direct {p0, p1}, Lcom/facebook/by;->a(Lcom/facebook/a;)V

    sget-object v2, Lcom/facebook/cs;->OPENED_TOKEN_UPDATED:Lcom/facebook/cs;

    iput-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    iget-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-direct {p0, v0, v2, p2}, Lcom/facebook/by;->a(Lcom/facebook/cs;Lcom/facebook/cs;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1481
    :pswitch_2
    sget-object v0, Lcom/facebook/by;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected call to finishAuthOrReauth in state "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/facebook/ag;Ljava/util/Map;Ljava/lang/Exception;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ag;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1358
    iget-object v2, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    if-nez v2, :cond_0

    .line 1361
    const-string v2, ""

    invoke-static {v2}, Lcom/facebook/q;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1362
    const-string v3, "2_result"

    sget-object v4, Lcom/facebook/ag;->ERROR:Lcom/facebook/ag;

    invoke-virtual {v4}, Lcom/facebook/ag;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string v3, "5_error_message"

    const-string v4, "Unexpected call to logAuthorizationComplete with null pendingAuthorizationRequest."

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    :goto_0
    const-string v3, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1397
    invoke-direct {p0}, Lcom/facebook/by;->o()Lcom/facebook/c;

    move-result-object v3

    .line 1398
    const-string v4, "fb_mobile_login_complete"

    invoke-virtual {v3, v4, v2}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1399
    return-void

    .line 1367
    :cond_0
    iget-object v2, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    invoke-virtual {v2}, Lcom/facebook/ce;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/q;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 1368
    if-eqz p1, :cond_1

    .line 1369
    const-string v2, "2_result"

    invoke-virtual {p1}, Lcom/facebook/ag;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1372
    const-string v2, "5_error_message"

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    :cond_2
    const/4 v2, 0x0

    .line 1377
    iget-object v3, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    invoke-static {v3}, Lcom/facebook/ce;->a(Lcom/facebook/ce;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1378
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    invoke-static {v3}, Lcom/facebook/ce;->a(Lcom/facebook/ce;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1380
    :cond_3
    if-eqz p2, :cond_4

    .line 1381
    if-nez v2, :cond_7

    .line 1382
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1385
    :goto_1
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 1386
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v2, v5

    .line 1391
    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    .line 1392
    const-string v3, "6_extras"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v2, v4

    goto/16 :goto_0

    :cond_6
    move-object v2, v5

    .line 1389
    goto :goto_3

    :cond_7
    move-object v5, v2

    goto :goto_1
.end method

.method public static final a(Lcom/facebook/by;)V
    .locals 2

    .prologue
    .line 962
    sget-object v1, Lcom/facebook/by;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 963
    :try_start_0
    sget-object v0, Lcom/facebook/by;->a:Lcom/facebook/by;

    if-eq p0, v0, :cond_2

    .line 964
    sget-object v0, Lcom/facebook/by;->a:Lcom/facebook/by;

    .line 966
    if-eqz v0, :cond_0

    .line 967
    invoke-direct {v0}, Lcom/facebook/by;->n()V

    .line 970
    :cond_0
    sput-object p0, Lcom/facebook/by;->a:Lcom/facebook/by;

    .line 972
    if-eqz v0, :cond_1

    .line 973
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-static {v0}, Lcom/facebook/by;->b(Ljava/lang/String;)V

    .line 976
    :cond_1
    if-eqz p0, :cond_2

    .line 977
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-static {v0}, Lcom/facebook/by;->b(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0}, Lcom/facebook/by;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 980
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v0}, Lcom/facebook/by;->b(Ljava/lang/String;)V

    .line 984
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/facebook/by;ILcom/facebook/af;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/facebook/by;->a(ILcom/facebook/af;)V

    return-void
.end method

.method public static final a(Lcom/facebook/by;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 878
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 879
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 881
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 885
    const-string v1, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 886
    const-string v0, "com.facebook.sdk.Session.authBundleKey"

    iget-object v1, p0, Lcom/facebook/by;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 888
    :cond_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    new-instance v1, Lcom/facebook/am;

    const-string v2, "Unable to save session."

    invoke-direct {v1, v2, v0}, Lcom/facebook/am;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/facebook/ck;Lcom/facebook/b/cg;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1194
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ce;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/facebook/b/cg;->PUBLISH:Lcom/facebook/b/cg;

    invoke-virtual {v0, p2}, Lcom/facebook/b/cg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/facebook/am;

    const-string v1, "Cannot request publish or manage authorization with no permissions."

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ce;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v2, "publish"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "manage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/facebook/by;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    sget-object v2, Lcom/facebook/b/cg;->READ:Lcom/facebook/b/cg;

    invoke-virtual {v2, p2}, Lcom/facebook/b/cg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/facebook/am;

    const-string v3, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/b/cg;->PUBLISH:Lcom/facebook/b/cg;

    invoke-virtual {v2, p2}, Lcom/facebook/b/cg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/facebook/by;->TAG:Ljava/lang/String;

    const-string v6, "Should not pass a read permission (%s) to a request for publish or manage authorization"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1195
    :cond_6
    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/facebook/ce;->b(Lcom/facebook/ce;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/facebook/by;->b:Landroid/content/Context;

    const-class v5, Lcom/facebook/LoginActivity;

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/facebook/by;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/facebook/am;

    const-string v2, "Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/ce;->b()Lcom/facebook/cr;

    move-result-object v5

    aput-object v5, v3, v4

    const-class v4, Lcom/facebook/LoginActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :cond_7
    iget-object v2, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v2

    .line 1199
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    if-eqz v0, :cond_9

    .line 1200
    iget-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    iget-object v1, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Session: an attempt was made to open a session that has a pending request."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/by;->a(Lcom/facebook/cs;Lcom/facebook/cs;Ljava/lang/Exception;)V

    .line 1202
    monitor-exit v2

    .line 1239
    :cond_8
    :goto_2
    return-void

    .line 1204
    :cond_9
    iget-object v5, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    .line 1206
    sget-object v0, Lcom/facebook/cd;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v6, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-virtual {v6}, Lcom/facebook/cs;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_0

    .line 1227
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Session: an attempt was made to open an already opened session."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 1208
    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/facebook/cs;->OPENING:Lcom/facebook/cs;

    iput-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    .line 1209
    if-nez p1, :cond_a

    .line 1210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "openRequest cannot be null when opening a new Session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_a
    iput-object p1, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    .line 1230
    :goto_3
    if-eqz p1, :cond_b

    .line 1231
    invoke-virtual {p1}, Lcom/facebook/ck;->a()Lcom/facebook/cn;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/facebook/by;->a(Lcom/facebook/cn;)V

    .line 1233
    :cond_b
    const/4 v6, 0x0

    invoke-direct {p0, v5, v0, v6}, Lcom/facebook/by;->a(Lcom/facebook/cs;Lcom/facebook/cs;Ljava/lang/Exception;)V

    .line 1234
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1236
    sget-object v2, Lcom/facebook/cs;->OPENING:Lcom/facebook/cs;

    if-ne v0, v2, :cond_8

    .line 1237
    iget-object v0, p0, Lcom/facebook/by;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/ce;->a(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/facebook/by;->l:Lcom/facebook/ci;

    if-nez v0, :cond_11

    invoke-static {}, Lcom/facebook/cu;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/facebook/by;->c:Ljava/lang/String;

    if-eqz v2, :cond_11

    new-instance v0, Lcom/facebook/ci;

    sget-object v5, Lcom/facebook/by;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v5}, Lcom/facebook/ci;-><init>(Lcom/facebook/by;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/by;->l:Lcom/facebook/ci;

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_c

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/facebook/ci;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_c
    iget-object v0, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    invoke-virtual {v0}, Lcom/facebook/ce;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/q;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "login_behavior"

    iget-object v5, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    invoke-static {v5}, Lcom/facebook/ce;->c(Lcom/facebook/ce;)Lcom/facebook/cr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/cr;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "request_code"

    iget-object v5, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    invoke-static {v5}, Lcom/facebook/ce;->d(Lcom/facebook/ce;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "is_legacy"

    iget-object v5, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    invoke-static {v5}, Lcom/facebook/ce;->b(Lcom/facebook/ce;)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v4, "permissions"

    const-string v5, ","

    iget-object v6, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    invoke-static {v6}, Lcom/facebook/ce;->e(Lcom/facebook/ce;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "default_audience"

    iget-object v5, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    invoke-static {v5}, Lcom/facebook/ce;->f(Lcom/facebook/ce;)Lcom/facebook/cq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/cq;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "6_extras"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_5
    invoke-direct {p0}, Lcom/facebook/by;->o()Lcom/facebook/c;

    move-result-object v2

    const-string v4, "fb_mobile_login_start"

    invoke-virtual {v2, v4, v0}, Lcom/facebook/c;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/facebook/by;->a(Lcom/facebook/ce;)Z

    move-result v2

    iget-object v0, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    invoke-static {v0}, Lcom/facebook/ce;->a(Lcom/facebook/ce;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "try_login_activity"

    if-eqz v2, :cond_f

    const-string v0, "1"

    :goto_6
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_10

    invoke-static {p1}, Lcom/facebook/ce;->b(Lcom/facebook/ce;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    invoke-static {v0}, Lcom/facebook/ce;->a(Lcom/facebook/ce;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "try_legacy"

    const-string v4, "1"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/facebook/q;

    invoke-direct {v0}, Lcom/facebook/q;-><init>()V

    iput-object v0, p0, Lcom/facebook/by;->h:Lcom/facebook/q;

    iget-object v0, p0, Lcom/facebook/by;->h:Lcom/facebook/q;

    new-instance v2, Lcom/facebook/ca;

    invoke-direct {v2, p0}, Lcom/facebook/ca;-><init>(Lcom/facebook/by;)V

    iput-object v2, v0, Lcom/facebook/q;->e:Lcom/facebook/ae;

    iget-object v0, p0, Lcom/facebook/by;->h:Lcom/facebook/q;

    sget-object v2, Lcom/facebook/by;->b:Landroid/content/Context;

    iput-object v2, v0, Lcom/facebook/q;->c:Landroid/content/Context;

    iput-object v3, v0, Lcom/facebook/q;->d:Lcom/facebook/ah;

    iget-object v0, p0, Lcom/facebook/by;->h:Lcom/facebook/q;

    invoke-virtual {p1}, Lcom/facebook/ce;->g()Lcom/facebook/y;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/q;->a(Lcom/facebook/y;)V

    move v0, v1

    :goto_7
    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    sget-object v2, Lcom/facebook/cd;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v3, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-virtual {v3}, Lcom/facebook/cs;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    sget-object v2, Lcom/facebook/cs;->CLOSED_LOGIN_FAILED:Lcom/facebook/cs;

    iput-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    new-instance v2, Lcom/facebook/am;

    const-string v3, "Log in attempt failed: LoginActivity could not be started, and not legacy request"

    invoke-direct {v2, v3}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/facebook/ag;->ERROR:Lcom/facebook/ag;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/facebook/by;->a(Lcom/facebook/ag;Ljava/util/Map;Ljava/lang/Exception;)V

    iget-object v3, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-direct {p0, v0, v3, v2}, Lcom/facebook/by;->a(Lcom/facebook/cs;Lcom/facebook/cs;Ljava/lang/Exception;)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1215
    :pswitch_2
    if-eqz p1, :cond_d

    :try_start_5
    invoke-virtual {p1}, Lcom/facebook/ck;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1216
    invoke-virtual {p1}, Lcom/facebook/ck;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/by;->f()Ljava/util/List;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/facebook/b/cl;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1217
    iput-object p1, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    .line 1220
    :cond_d
    iget-object v0, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    if-nez v0, :cond_e

    .line 1221
    sget-object v0, Lcom/facebook/cs;->OPENED:Lcom/facebook/cs;

    iput-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    goto/16 :goto_3

    .line 1223
    :cond_e
    sget-object v0, Lcom/facebook/cs;->OPENING:Lcom/facebook/cs;

    iput-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 1237
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_f
    const-string v0, "0"

    goto/16 :goto_6

    :pswitch_3
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception v2

    goto/16 :goto_5

    :cond_10
    move v0, v2

    goto :goto_7

    :cond_11
    move-object v0, v3

    goto/16 :goto_4

    .line 1206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1237
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/facebook/cs;Lcom/facebook/cs;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 1525
    if-ne p1, p2, :cond_1

    sget-object v0, Lcom/facebook/cs;->OPENED_TOKEN_UPDATED:Lcom/facebook/cs;

    if-eq p1, v0, :cond_1

    if-nez p3, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1531
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1532
    invoke-static {}, Lcom/facebook/a;->f()Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    .line 1538
    :cond_2
    new-instance v0, Lcom/facebook/cb;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/cb;-><init>(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V

    .line 1554
    iget-object v1, p0, Lcom/facebook/by;->k:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/facebook/by;->b(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 1556
    sget-object v0, Lcom/facebook/by;->a:Lcom/facebook/by;

    if-ne p0, v0, :cond_0

    .line 1557
    invoke-virtual {p1}, Lcom/facebook/cs;->a()Z

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/cs;->a()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1558
    invoke-virtual {p2}, Lcom/facebook/cs;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1559
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v0}, Lcom/facebook/by;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1561
    :cond_3
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-static {v0}, Lcom/facebook/by;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1418
    sget-object v1, Lcom/facebook/by;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1419
    if-nez v1, :cond_0

    .line 1422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/facebook/ce;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1402
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/facebook/by;->b:Landroid/content/Context;

    const-class v3, Lcom/facebook/LoginActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/ce;->b()Lcom/facebook/cr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/cr;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/facebook/ce;->g()Lcom/facebook/y;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/LoginActivity;->a(Lcom/facebook/y;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1404
    invoke-static {v1}, Lcom/facebook/by;->a(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1414
    :goto_0
    return v0

    .line 1409
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ce;->e()Lcom/facebook/cm;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ce;->c()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/facebook/cm;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    const/4 v0, 0x1

    goto :goto_0

    .line 1411
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1770
    if-nez p0, :cond_1

    .line 1771
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1773
    :goto_0
    return v0

    .line 1771
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1773
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/by;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/by;->j:Ljava/util/List;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1144
    if-eqz p0, :cond_1

    sget-object v0, Lcom/facebook/by;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1145
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1146
    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    sput-object p0, Lcom/facebook/by;->b:Landroid/content/Context;

    .line 1148
    :cond_1
    return-void
.end method

.method private static b(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 1574
    if-eqz p0, :cond_0

    .line 1575
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1579
    :goto_0
    return-void

    .line 1577
    :cond_0
    invoke-static {}, Lcom/facebook/cu;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1568
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1570
    sget-object v1, Lcom/facebook/by;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/o;->a(Landroid/content/Intent;)Z

    .line 1571
    return-void
.end method

.method static synthetic c(Lcom/facebook/by;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/by;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/by;)Lcom/facebook/co;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/by;->o:Lcom/facebook/co;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/by;)Lcom/facebook/co;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/by;->o:Lcom/facebook/co;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/by;)Lcom/facebook/ci;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/by;->l:Lcom/facebook/ci;

    return-object v0
.end method

.method public static final h()Lcom/facebook/by;
    .locals 2

    .prologue
    .line 941
    sget-object v1, Lcom/facebook/by;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 942
    :try_start_0
    sget-object v0, Lcom/facebook/by;->a:Lcom/facebook/by;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static i()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1140
    sget-object v0, Lcom/facebook/by;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l()Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/facebook/by;->b:Landroid/content/Context;

    return-object v0
.end method

.method private m()Ljava/util/Date;
    .locals 2

    .prologue
    .line 391
    iget-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    invoke-virtual {v0}, Lcom/facebook/a;->b()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private n()V
    .locals 5

    .prologue
    .line 768
    iget-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 769
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    .line 771
    sget-object v2, Lcom/facebook/cd;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v3, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-virtual {v3}, Lcom/facebook/cs;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 784
    :goto_0
    monitor-exit v1

    return-void

    .line 774
    :pswitch_0
    sget-object v2, Lcom/facebook/cs;->CLOSED_LOGIN_FAILED:Lcom/facebook/cs;

    iput-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    .line 775
    iget-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    new-instance v3, Lcom/facebook/am;

    const-string v4, "Log in attempt aborted."

    invoke-direct {v3, v4}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/by;->a(Lcom/facebook/cs;Lcom/facebook/cs;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 782
    :pswitch_1
    :try_start_1
    sget-object v2, Lcom/facebook/cs;->CLOSED:Lcom/facebook/cs;

    iput-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    .line 783
    iget-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/by;->a(Lcom/facebook/cs;Lcom/facebook/cs;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private o()Lcom/facebook/c;
    .locals 3

    .prologue
    .line 1620
    iget-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 1621
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->p:Lcom/facebook/c;

    if-nez v0, :cond_0

    .line 1622
    sget-object v0, Lcom/facebook/by;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/by;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/by;->p:Lcom/facebook/c;

    .line 1624
    :cond_0
    iget-object v0, p0, Lcom/facebook/by;->p:Lcom/facebook/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1625
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 838
    iget-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    .line 841
    sget-object v2, Lcom/facebook/cd;->$SwitchMap$com$facebook$SessionState:[I

    iget-object v3, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-virtual {v3}, Lcom/facebook/cs;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 850
    sget-object v0, Lcom/facebook/by;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "refreshToken ignored in state "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 851
    monitor-exit v1

    .line 857
    :goto_0
    return-void

    .line 843
    :pswitch_0
    sget-object v2, Lcom/facebook/cs;->OPENED_TOKEN_UPDATED:Lcom/facebook/cs;

    iput-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    .line 844
    iget-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/by;->a(Lcom/facebook/cs;Lcom/facebook/cs;Ljava/lang/Exception;)V

    .line 853
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    invoke-static {v0, p1}, Lcom/facebook/a;->a(Lcom/facebook/a;Landroid/os/Bundle;)Lcom/facebook/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    .line 854
    iget-object v0, p0, Lcom/facebook/by;->n:Lcom/facebook/cx;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/facebook/by;->n:Lcom/facebook/cx;

    iget-object v2, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    invoke-virtual {v2}, Lcom/facebook/a;->g()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/cx;->a(Landroid/os/Bundle;)V

    .line 857
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 841
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/facebook/ck;)V
    .locals 1

    .prologue
    .line 471
    sget-object v0, Lcom/facebook/b/cg;->READ:Lcom/facebook/b/cg;

    invoke-direct {p0, p1, v0}, Lcom/facebook/by;->a(Lcom/facebook/ck;Lcom/facebook/b/cg;)V

    .line 472
    return-void
.end method

.method public final a(Lcom/facebook/cn;)V
    .locals 2

    .prologue
    .line 812
    iget-object v1, p0, Lcom/facebook/by;->j:Ljava/util/List;

    monitor-enter v1

    .line 813
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/facebook/by;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
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

.method final a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/facebook/by;->f:Ljava/util/Date;

    .line 1642
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-virtual {v0}, Lcom/facebook/cs;->a()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 723
    const-string v0, "currentActivity"

    invoke-static {p1, v0}, Lcom/facebook/b/cp;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    invoke-static {p1}, Lcom/facebook/by;->b(Landroid/content/Context;)V

    .line 727
    iget-object v2, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v2

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/by;->g:Lcom/facebook/ce;

    invoke-virtual {v0}, Lcom/facebook/ce;->c()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 729
    :cond_0
    const/4 v0, 0x0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    :goto_0
    return v0

    .line 731
    :cond_1
    monitor-exit v2

    .line 734
    sget-object v2, Lcom/facebook/ag;->ERROR:Lcom/facebook/ag;

    .line 736
    if-eqz p4, :cond_5

    .line 737
    const-string v0, "com.facebook.LoginActivity:Result"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/af;

    .line 739
    if-eqz v0, :cond_2

    .line 741
    invoke-direct {p0, p3, v0}, Lcom/facebook/by;->a(ILcom/facebook/af;)V

    move v0, v1

    .line 742
    goto :goto_0

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/facebook/by;->h:Lcom/facebook/q;

    if-eqz v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/facebook/by;->h:Lcom/facebook/q;

    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/q;->a(IILandroid/content/Intent;)Z

    move v0, v1

    .line 746
    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 753
    :goto_1
    if-nez v0, :cond_4

    .line 754
    new-instance v0, Lcom/facebook/am;

    const-string v4, "Unexpected call to Session.onActivityResult"

    invoke-direct {v0, v4}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    .line 757
    :cond_4
    invoke-direct {p0, v2, v3, v0}, Lcom/facebook/by;->a(Lcom/facebook/ag;Ljava/util/Map;Ljava/lang/Exception;)V

    .line 758
    invoke-direct {p0, v3, v0}, Lcom/facebook/by;->a(Lcom/facebook/a;Ljava/lang/Exception;)V

    move v0, v1

    .line 760
    goto :goto_0

    .line 748
    :cond_5
    if-nez p3, :cond_6

    .line 749
    new-instance v2, Lcom/facebook/ao;

    const-string v0, "User canceled operation."

    invoke-direct {v2, v0}, Lcom/facebook/ao;-><init>(Ljava/lang/String;)V

    .line 750
    sget-object v0, Lcom/facebook/ag;->CANCEL:Lcom/facebook/ag;

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    goto :goto_1

    :cond_6
    move-object v0, v3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/facebook/by;->f()Ljava/util/List;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/facebook/ck;)V
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lcom/facebook/b/cg;->PUBLISH:Lcom/facebook/b/cg;

    invoke-direct {p0, p1, v0}, Lcom/facebook/by;->a(Lcom/facebook/ck;Lcom/facebook/b/cg;)V

    .line 507
    return-void
.end method

.method public final b(Lcom/facebook/cn;)V
    .locals 2

    .prologue
    .line 825
    iget-object v1, p0, Lcom/facebook/by;->j:Ljava/util/List;

    monitor-enter v1

    .line 826
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 827
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 342
    iget-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-virtual {v0}, Lcom/facebook/cs;->b()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Lcom/facebook/cs;
    .locals 2

    .prologue
    .line 354
    iget-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/facebook/by;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    iget-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    invoke-virtual {v0}, Lcom/facebook/a;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1758
    instance-of v1, p1, Lcom/facebook/by;

    if-nez v1, :cond_1

    .line 1763
    :cond_0
    :goto_0
    return v0

    .line 1761
    :cond_1
    check-cast p1, Lcom/facebook/by;

    .line 1763
    iget-object v1, p1, Lcom/facebook/by;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/by;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/facebook/by;->i:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/facebook/by;->i:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/facebook/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/facebook/by;->d:Lcom/facebook/cs;

    iget-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-static {v1, v2}, Lcom/facebook/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p1}, Lcom/facebook/by;->m()Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/by;->m()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    invoke-virtual {v0}, Lcom/facebook/a;->c()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/facebook/by;->n:Lcom/facebook/cx;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/facebook/by;->n:Lcom/facebook/cx;

    invoke-virtual {v0}, Lcom/facebook/cx;->b()V

    .line 801
    :cond_0
    sget-object v0, Lcom/facebook/by;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/b/cl;->b(Landroid/content/Context;)V

    .line 802
    sget-object v0, Lcom/facebook/by;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/b/cl;->c(Landroid/content/Context;)V

    .line 803
    invoke-direct {p0}, Lcom/facebook/by;->n()V

    .line 804
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1753
    const/4 v0, 0x0

    return v0
.end method

.method final j()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1582
    iget-object v1, p0, Lcom/facebook/by;->o:Lcom/facebook/co;

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1583
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/by;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/facebook/by;->o:Lcom/facebook/co;

    if-nez v2, :cond_1

    new-instance v0, Lcom/facebook/co;

    invoke-direct {v0, p0}, Lcom/facebook/co;-><init>(Lcom/facebook/by;)V

    iput-object v0, p0, Lcom/facebook/by;->o:Lcom/facebook/co;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/co;->a()V

    .line 1585
    :cond_2
    return-void

    .line 1582
    :cond_3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-virtual {v2}, Lcom/facebook/cs;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    invoke-virtual {v2}, Lcom/facebook/a;->d()Lcom/facebook/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/by;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    invoke-virtual {v1}, Lcom/facebook/a;->e()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1583
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final k()Lcom/facebook/a;
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Session state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/by;->d:Lcom/facebook/cs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/by;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/by;->e:Lcom/facebook/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/by;->c:Ljava/lang/String;

    goto :goto_1
.end method
