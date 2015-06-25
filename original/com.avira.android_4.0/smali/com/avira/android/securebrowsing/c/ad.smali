.class final Lcom/avira/android/securebrowsing/c/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/securebrowsing/c/ab;

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/avira/android/securebrowsing/c/v;


# direct methods
.method private constructor <init>(Lcom/avira/android/securebrowsing/c/ab;Lcom/avira/android/securebrowsing/c/v;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/avira/android/securebrowsing/c/ad;->a:Lcom/avira/android/securebrowsing/c/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p3, p0, Lcom/avira/android/securebrowsing/c/ad;->b:Landroid/net/Uri;

    .line 254
    iput-object p2, p0, Lcom/avira/android/securebrowsing/c/ad;->c:Lcom/avira/android/securebrowsing/c/v;

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/securebrowsing/c/ab;Lcom/avira/android/securebrowsing/c/v;Landroid/net/Uri;B)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1, p2, p3}, Lcom/avira/android/securebrowsing/c/ad;-><init>(Lcom/avira/android/securebrowsing/c/ab;Lcom/avira/android/securebrowsing/c/v;Landroid/net/Uri;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/avira/android/securebrowsing/c/y;)V
    .locals 4

    .prologue
    .line 320
    const-string v0, "url=%s; category=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/avira/android/securebrowsing/c/y;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/avira/android/securebrowsing/c/ac;->$SwitchMap$com$avira$android$securebrowsing$utilities$SBCategoryEnum:[I

    invoke-virtual {p2}, Lcom/avira/android/securebrowsing/c/y;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    return-void

    .line 325
    :pswitch_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNKNOWN for url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SAFE for url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :pswitch_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNSAFE for url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/ad;->c:Lcom/avira/android/securebrowsing/c/v;

    sget-object v1, Lcom/avira/android/securebrowsing/c/v;->DEFAULT_BROWSER:Lcom/avira/android/securebrowsing/c/v;

    if-ne v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/ad;->a:Lcom/avira/android/securebrowsing/c/ab;

    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/ad;->c:Lcom/avira/android/securebrowsing/c/v;

    invoke-static {p1, p2, v0}, Lcom/avira/android/securebrowsing/c/ab;->a(Ljava/lang/String;Lcom/avira/android/securebrowsing/c/y;Lcom/avira/android/securebrowsing/c/v;)Z

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/ad;->a:Lcom/avira/android/securebrowsing/c/ab;

    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/ad;->c:Lcom/avira/android/securebrowsing/c/v;

    invoke-static {p1, p2, v0}, Lcom/avira/android/securebrowsing/c/ab;->b(Ljava/lang/String;Lcom/avira/android/securebrowsing/c/y;Lcom/avira/android/securebrowsing/c/v;)Z

    goto :goto_0

    .line 344
    :pswitch_3
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USER_ALLOWED for url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 6

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UrlClassifierTaskRunner - Querying from Uri Host = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/avira/android/securebrowsing/c/ad;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/avira/android/securebrowsing/c/v;->CUSTOM_BROWSER:Lcom/avira/android/securebrowsing/c/v;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/ad;->c:Lcom/avira/android/securebrowsing/c/v;

    if-ne v0, v1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/ad;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/ae;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 274
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to retrieve Url from Bookmark History"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 270
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/ad;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/ae;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/ad;->a:Lcom/avira/android/securebrowsing/c/ab;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/ab;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Allowing localhost request; url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 282
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/ad;->a:Lcom/avira/android/securebrowsing/c/ab;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 284
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Allowing Data scheme request"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 287
    :cond_4
    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->c()Lcom/avira/android/securebrowsing/c/x;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avira/android/securebrowsing/c/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 289
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/ad;->c:Lcom/avira/android/securebrowsing/c/v;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/ad;->b:Landroid/net/Uri;

    sget-object v1, Lcom/avira/android/securebrowsing/c/y;->USER_ALLOWED:Lcom/avira/android/securebrowsing/c/y;

    invoke-direct {p0, v0, v1}, Lcom/avira/android/securebrowsing/c/ad;->a(Ljava/lang/String;Lcom/avira/android/securebrowsing/c/y;)V

    goto :goto_1

    .line 293
    :cond_5
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Checking AUC classification - url = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/ad;->a:Lcom/avira/android/securebrowsing/c/ab;

    invoke-static {v1}, Lcom/avira/android/securebrowsing/c/ab;->a(Lcom/avira/android/securebrowsing/c/ab;)Lcom/avira/android/securebrowsing/a/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avira/android/securebrowsing/a/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 295
    if-eqz v1, :cond_0

    .line 297
    const-string v2, "AUC classification [url=%s; result=%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/avira/android/securebrowsing/c/ad;->a:Lcom/avira/android/securebrowsing/c/ab;

    invoke-static {v1}, Lcom/avira/android/securebrowsing/c/ab;->a(Lorg/json/JSONObject;)Lcom/avira/android/securebrowsing/c/y;

    move-result-object v1

    .line 301
    iget-object v2, p0, Lcom/avira/android/securebrowsing/c/ad;->c:Lcom/avira/android/securebrowsing/c/v;

    iget-object v2, p0, Lcom/avira/android/securebrowsing/c/ad;->b:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/avira/android/securebrowsing/c/ad;->a(Ljava/lang/String;Lcom/avira/android/securebrowsing/c/y;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
