.class final Lio/fabric/sdk/android/services/f/l;
.super Lio/fabric/sdk/android/services/b/a;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/f/z;


# static fields
.field static final BUILD_VERSION_PARAM:Ljava/lang/String; = "build_version"

.field static final DISPLAY_VERSION_PARAM:Ljava/lang/String; = "display_version"

.field static final ICON_HASH:Ljava/lang/String; = "icon_hash"

.field static final INSTANCE_PARAM:Ljava/lang/String; = "instance"

.field static final SOURCE_PARAM:Ljava/lang/String; = "source"


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;)V
    .locals 6

    .prologue
    .line 41
    sget-object v5, Lio/fabric/sdk/android/services/d/d;->GET:Lio/fabric/sdk/android/services/d/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/f/l;-><init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Lio/fabric/sdk/android/services/d/d;)V

    .line 42
    return-void
.end method

.method private constructor <init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Lio/fabric/sdk/android/services/d/d;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lio/fabric/sdk/android/services/b/a;-><init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Lio/fabric/sdk/android/services/d/d;)V

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lio/fabric/sdk/android/services/f/y;)Lorg/json/JSONObject;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 54
    .line 59
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "build_version"

    iget-object v3, p1, Lio/fabric/sdk/android/services/f/y;->e:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "display_version"

    iget-object v3, p1, Lio/fabric/sdk/android/services/f/y;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    iget v3, p1, Lio/fabric/sdk/android/services/f/y;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lio/fabric/sdk/android/services/f/y;->g:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "icon_hash"

    iget-object v3, p1, Lio/fabric/sdk/android/services/f/y;->g:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p1, Lio/fabric/sdk/android/services/f/y;->c:Ljava/lang/String;

    invoke-static {v2}, Lio/fabric/sdk/android/services/b/l;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "instance"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1
    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/f/l;->getHttpRequest(Ljava/util/Map;)Lio/fabric/sdk/android/services/d/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 61
    :try_start_1
    const-string v3, "X-CRASHLYTICS-API-KEY"

    iget-object v4, p1, Lio/fabric/sdk/android/services/f/y;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v3

    const-string v4, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v3

    const-string v4, "X-CRASHLYTICS-D"

    iget-object v5, p1, Lio/fabric/sdk/android/services/f/y;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v3

    const-string v4, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v5, p0, Lio/fabric/sdk/android/services/f/l;->kit:Lio/fabric/sdk/android/k;

    invoke-virtual {v5}, Lio/fabric/sdk/android/k;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v3

    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 63
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Requesting settings from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/f/l;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v2}, Lio/fabric/sdk/android/q;->b()V

    .line 64
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Settings query params were: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v2}, Lio/fabric/sdk/android/q;->b()V

    .line 66
    invoke-virtual {v3}, Lio/fabric/sdk/android/services/d/e;->b()I

    move-result v0

    .line 67
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Settings result was: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v2}, Lio/fabric/sdk/android/q;->b()V

    .line 69
    invoke-virtual {v3}, Lio/fabric/sdk/android/services/d/e;->d()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 70
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 75
    if-eqz v3, :cond_2

    .line 76
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Settings request ID: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "X-REQUEST-ID"

    invoke-virtual {v3, v4}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v1}, Lio/fabric/sdk/android/q;->b()V

    .line 81
    :cond_2
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 72
    :goto_1
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v4

    const-string v5, "Fabric"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to retrieve settings from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/f/l;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Settings response "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 75
    if-eqz v3, :cond_4

    .line 76
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Settings request ID: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "X-REQUEST-ID"

    invoke-virtual {v3, v4}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    move-object v0, v1

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_3

    .line 76
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Settings request ID: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "X-REQUEST-ID"

    invoke-virtual {v3, v4}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v1}, Lio/fabric/sdk/android/q;->b()V

    :cond_3
    throw v0

    .line 75
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 71
    :catch_1
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method
