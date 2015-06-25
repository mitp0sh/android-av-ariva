.class public Lcom/facebook/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final INVALID_SESSION_FACEBOOK_ERROR_CODE:I = 0xbe

.field public static final NON_JSON_RESPONSE_PROPERTY:Ljava/lang/String; = "FACEBOOK_NON_JSON_RESULT"

.field private static final RESPONSE_CACHE_TAG:Ljava/lang/String; = "ResponseCache"

.field private static final RESPONSE_LOG_TAG:Ljava/lang/String; = "Response"

.field public static final SUCCESS_KEY:Ljava/lang/String; = "success"

.field private static h:Lcom/facebook/b/o;


# instance fields
.field private final a:Ljava/net/HttpURLConnection;

.field private final b:Lcom/facebook/c/c;

.field private final c:Lcom/facebook/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/c/i",
            "<",
            "Lcom/facebook/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lcom/facebook/ap;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/facebook/Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/bx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/bx;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/ap;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 81
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/bx;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/c/c;Lcom/facebook/c/i;ZLcom/facebook/ap;)V

    .line 82
    return-void
.end method

.method private constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/c/c;Lcom/facebook/c/i;ZLcom/facebook/ap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request;",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Lcom/facebook/c/c;",
            "Lcom/facebook/c/i",
            "<",
            "Lcom/facebook/c/c;",
            ">;Z",
            "Lcom/facebook/ap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/facebook/bx;->g:Lcom/facebook/Request;

    .line 86
    iput-object p2, p0, Lcom/facebook/bx;->a:Ljava/net/HttpURLConnection;

    .line 87
    iput-object p3, p0, Lcom/facebook/bx;->f:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/facebook/bx;->b:Lcom/facebook/c/c;

    .line 89
    iput-object p5, p0, Lcom/facebook/bx;->c:Lcom/facebook/c/i;

    .line 90
    iput-boolean p6, p0, Lcom/facebook/bx;->d:Z

    .line 91
    iput-object p7, p0, Lcom/facebook/bx;->e:Lcom/facebook/ap;

    .line 92
    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/c/c;Z)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/bx;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/c/c;Lcom/facebook/c/i;ZLcom/facebook/ap;)V

    .line 73
    return-void
.end method

.method private constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/c/i;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request;",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Lcom/facebook/c/i",
            "<",
            "Lcom/facebook/c/c;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/bx;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/c/c;Lcom/facebook/c/i;ZLcom/facebook/ap;)V

    .line 78
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/br;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/br;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    invoke-static {p0}, Lcom/facebook/b/cl;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 346
    sget-object v1, Lcom/facebook/av;->INCLUDE_RAW_RESPONSES:Lcom/facebook/av;

    const-string v2, "Response"

    const-string v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/bx;->a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/br;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/br;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/br;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 358
    invoke-static {p1, p2, v0, p3}, Lcom/facebook/bx;->a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    .line 359
    sget-object v1, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    const-string v2, "Response"

    const-string v3, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/facebook/br;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    return-object v0
.end method

.method static a(Ljava/net/HttpURLConnection;Lcom/facebook/br;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/br;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 276
    .line 280
    instance-of v0, p1, Lcom/facebook/b/k;

    if-eqz v0, :cond_7

    move-object v0, p1

    .line 281
    check-cast v0, Lcom/facebook/b/k;

    .line 282
    sget-object v1, Lcom/facebook/bx;->h:Lcom/facebook/b/o;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/facebook/by;->i()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Lcom/facebook/b/o;

    const-string v4, "ResponseCache"

    new-instance v5, Lcom/facebook/b/x;

    invoke-direct {v5}, Lcom/facebook/b/x;-><init>()V

    invoke-direct {v3, v1, v4, v5}, Lcom/facebook/b/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/x;)V

    sput-object v3, Lcom/facebook/bx;->h:Lcom/facebook/b/o;

    :cond_0
    sget-object v3, Lcom/facebook/bx;->h:Lcom/facebook/b/o;

    .line 283
    invoke-virtual {v0}, Lcom/facebook/b/k;->i()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 285
    invoke-virtual {p1}, Lcom/facebook/br;->size()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 287
    invoke-virtual {p1, v6}, Lcom/facebook/br;->a(I)Lcom/facebook/Request;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Request;->h()Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/b/k;->j()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 297
    :try_start_0
    invoke-virtual {v3, v1}, Lcom/facebook/b/o;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/facebook/am; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 298
    if-eqz v2, :cond_3

    .line 299
    const/4 v0, 0x0

    const/4 v4, 0x1

    :try_start_1
    invoke-static {v2, v0, p1, v4}, Lcom/facebook/bx;->a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/br;Z)Ljava/util/List;
    :try_end_1
    .catch Lcom/facebook/am; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 305
    invoke-static {v2}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    .line 338
    :goto_1
    return-object v0

    .line 289
    :cond_2
    sget-object v4, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    const-string v5, "ResponseCache"

    const-string v6, "Not using cache for cacheable request because no key was specified"

    invoke-static {v4, v5, v6}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_3
    invoke-static {v2}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    move-object v0, v3

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    .line 312
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_5

    .line 313
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 324
    :cond_4
    :goto_3
    const/4 v0, 0x0

    invoke-static {v1, p0, p1, v0}, Lcom/facebook/bx;->a(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/br;Z)Ljava/util/List;
    :try_end_2
    .catch Lcom/facebook/am; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 338
    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 305
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_4
    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    .line 306
    goto :goto_2

    .line 305
    :catch_1
    move-exception v0

    invoke-static {v2}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    move-object v0, v3

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    .line 306
    goto :goto_2

    .line 305
    :catch_2
    move-exception v0

    invoke-static {v2}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    move-object v0, v3

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    .line 306
    goto :goto_2

    .line 305
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    throw v0

    .line 315
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 316
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 317
    invoke-virtual {v0, v2, v1}, Lcom/facebook/b/o;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_3
    .catch Lcom/facebook/am; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 318
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 319
    goto :goto_3

    .line 325
    :catch_3
    move-exception v0

    .line 326
    :try_start_4
    sget-object v2, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-static {p1, p0, v0}, Lcom/facebook/bx;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/am;)Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 338
    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 328
    :catch_4
    move-exception v0

    .line 329
    :try_start_5
    sget-object v2, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    new-instance v2, Lcom/facebook/am;

    invoke-direct {v2, v0}, Lcom/facebook/am;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/facebook/bx;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/am;)Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 338
    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 331
    :catch_5
    move-exception v0

    .line 332
    :try_start_6
    sget-object v2, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    new-instance v2, Lcom/facebook/am;

    invoke-direct {v2, v0}, Lcom/facebook/am;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/facebook/bx;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/am;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    .line 338
    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 334
    :catch_6
    move-exception v0

    .line 335
    :try_start_7
    sget-object v2, Lcom/facebook/av;->REQUESTS:Lcom/facebook/av;

    const-string v3, "Response"

    const-string v4, "Response <Error>: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    new-instance v2, Lcom/facebook/am;

    invoke-direct {v2, v0}, Lcom/facebook/am;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v2}, Lcom/facebook/bx;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/am;)Ljava/util/List;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    .line 338
    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcom/facebook/b/cl;->a(Ljava/io/Closeable;)V

    throw v0

    .line 305
    :catch_7
    move-exception v0

    move-object v0, v2

    goto/16 :goto_4

    :cond_6
    move-object v0, v3

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_2

    :cond_7
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_2
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 367
    sget-boolean v1, Lcom/facebook/bx;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 369
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 370
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 373
    const/4 v1, 0x1

    if-ne v4, v1, :cond_3

    .line 374
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Request;

    .line 379
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 380
    const-string v2, "body"

    invoke-virtual {v5, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 382
    :goto_0
    const-string v6, "code"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 385
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    :goto_1
    instance-of v1, v2, Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    move-object v1, v2

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 397
    :cond_1
    new-instance v1, Lcom/facebook/am;

    const-string v2, "Unexpected number of results"

    invoke-direct {v1, v2}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    .line 398
    throw v1

    .line 381
    :cond_2
    const/16 v2, 0xc8

    goto :goto_0

    .line 389
    :catch_0
    move-exception v2

    .line 390
    new-instance v5, Lcom/facebook/bx;

    new-instance v6, Lcom/facebook/ap;

    invoke-direct {v6, p0, v2}, Lcom/facebook/ap;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v1, p0, v6}, Lcom/facebook/bx;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/ap;)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, p2

    .line 393
    goto :goto_1

    .line 391
    :catch_1
    move-exception v2

    .line 392
    new-instance v5, Lcom/facebook/bx;

    new-instance v6, Lcom/facebook/ap;

    invoke-direct {v6, p0, v2}, Lcom/facebook/ap;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v1, p0, v6}, Lcom/facebook/bx;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/ap;)V

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v2, p2

    goto :goto_1

    :cond_4
    move-object v7, v2

    .line 401
    check-cast v7, Lorg/json/JSONArray;

    move v8, v3

    .line 403
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v8, v1, :cond_a

    .line 404
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/Request;

    .line 406
    :try_start_1
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 407
    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_b

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1, p2, p0}, Lcom/facebook/ap;->a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/ap;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/facebook/ap;->b()I

    move-result v1

    const/16 v4, 0xbe

    if-ne v1, v4, :cond_5

    invoke-virtual {v2}, Lcom/facebook/Request;->d()Lcom/facebook/by;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/facebook/by;->g()V

    :cond_5
    new-instance v1, Lcom/facebook/bx;

    invoke-direct {v1, v2, p0, v3}, Lcom/facebook/bx;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/ap;)V

    :goto_3
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    :goto_4
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_2

    .line 407
    :cond_6
    const-string v3, "body"

    const-string v4, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {v1, v3, v4}, Lcom/facebook/b/cl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v1, v3, Lorg/json/JSONObject;

    if-eqz v1, :cond_7

    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    invoke-static {v1}, Lcom/facebook/c/d;->a(Lorg/json/JSONObject;)Lcom/facebook/c/c;

    move-result-object v5

    new-instance v1, Lcom/facebook/bx;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/bx;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/c/c;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/facebook/am; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    .line 408
    :catch_2
    move-exception v1

    .line 409
    new-instance v3, Lcom/facebook/bx;

    new-instance v4, Lcom/facebook/ap;

    invoke-direct {v4, p0, v1}, Lcom/facebook/ap;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v3, v2, p0, v4}, Lcom/facebook/bx;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/ap;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 407
    :cond_7
    :try_start_2
    instance-of v1, v3, Lorg/json/JSONArray;

    if-eqz v1, :cond_8

    move-object v0, v3

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    const-class v4, Lcom/facebook/c/c;

    invoke-static {v1, v4}, Lcom/facebook/c/d;->a(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/c/i;

    move-result-object v5

    new-instance v1, Lcom/facebook/bx;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/bx;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/c/i;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/facebook/am; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 410
    :catch_3
    move-exception v1

    .line 411
    new-instance v3, Lcom/facebook/bx;

    new-instance v4, Lcom/facebook/ap;

    invoke-direct {v4, p0, v1}, Lcom/facebook/ap;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v3, v2, p0, v4}, Lcom/facebook/bx;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/ap;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 407
    :cond_8
    :try_start_3
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object v3, v1

    :goto_5
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v3, v1, :cond_9

    new-instance v1, Lcom/facebook/bx;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/bx;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/c/c;Z)V

    goto :goto_3

    :cond_9
    new-instance v1, Lcom/facebook/am;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got unexpected object type in response, class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/facebook/am;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/facebook/am; {:try_start_3 .. :try_end_3} :catch_3

    .line 415
    :cond_a
    return-object v9

    :cond_b
    move-object v3, v1

    goto :goto_5
.end method

.method static a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/am;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/am;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/bx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 460
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 461
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 462
    new-instance v4, Lcom/facebook/bx;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    new-instance v5, Lcom/facebook/ap;

    invoke-direct {v5, p1, p2}, Lcom/facebook/ap;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v4, v0, p1, v5}, Lcom/facebook/bx;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/ap;)V

    .line 463
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 465
    :cond_0
    return-object v3
.end method


# virtual methods
.method public final a()Lcom/facebook/ap;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/bx;->e:Lcom/facebook/ap;

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Lcom/facebook/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/c/c;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/bx;->b:Lcom/facebook/c/c;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_0
    if-nez p1, :cond_1

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must pass in a valid interface that extends GraphObject"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/facebook/bx;->b:Lcom/facebook/c/c;

    invoke-interface {v0}, Lcom/facebook/c/c;->b()Lcom/facebook/c/c;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Lcom/facebook/c/c;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/bx;->b:Lcom/facebook/c/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 243
    :try_start_0
    const-string v1, "%d"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/bx;->a:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/bx;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{Response:  responseCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bx;->b:Lcom/facebook/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/bx;->e:Lcom/facebook/ap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFromCache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/bx;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    const/16 v0, 0xc8

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    const-string v0, "unknown"

    goto :goto_1
.end method
