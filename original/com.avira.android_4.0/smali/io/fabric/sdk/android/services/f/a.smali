.class abstract Lio/fabric/sdk/android/services/f/a;
.super Lio/fabric/sdk/android/services/b/a;
.source "SourceFile"


# static fields
.field public static final APP_BUILD_VERSION_PARAM:Ljava/lang/String; = "app[build_version]"

.field public static final APP_BUILT_SDK_VERSION_PARAM:Ljava/lang/String; = "app[built_sdk_version]"

.field public static final APP_DISPLAY_VERSION_PARAM:Ljava/lang/String; = "app[display_version]"

.field public static final APP_ICON_DATA_PARAM:Ljava/lang/String; = "app[icon][data]"

.field public static final APP_ICON_HASH_PARAM:Ljava/lang/String; = "app[icon][hash]"

.field public static final APP_ICON_HEIGHT_PARAM:Ljava/lang/String; = "app[icon][height]"

.field public static final APP_ICON_PRERENDERED_PARAM:Ljava/lang/String; = "app[icon][prerendered]"

.field public static final APP_ICON_WIDTH_PARAM:Ljava/lang/String; = "app[icon][width]"

.field public static final APP_IDENTIFIER_PARAM:Ljava/lang/String; = "app[identifier]"

.field public static final APP_INSTANCE_IDENTIFIER_PARAM:Ljava/lang/String; = "app[instance_identifier]"

.field public static final APP_MIN_SDK_VERSION_PARAM:Ljava/lang/String; = "app[minimum_sdk_version]"

.field public static final APP_NAME_PARAM:Ljava/lang/String; = "app[name]"

.field public static final APP_SDK_MODULES_PARAM_PREFIX:Ljava/lang/String; = "app[build][libraries]"

.field public static final APP_SOURCE_PARAM:Ljava/lang/String; = "app[source]"

.field static final ICON_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field static final ICON_FILE_NAME:Ljava/lang/String; = "icon.png"


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Lio/fabric/sdk/android/services/d/d;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lio/fabric/sdk/android/services/b/a;-><init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Lio/fabric/sdk/android/services/d/d;)V

    .line 47
    return-void
.end method

.method private a(Lio/fabric/sdk/android/services/d/e;Lio/fabric/sdk/android/services/f/d;)Lio/fabric/sdk/android/services/d/e;
    .locals 7

    .prologue
    .line 85
    const-string v0, "app[identifier]"

    iget-object v1, p2, Lio/fabric/sdk/android/services/f/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lio/fabric/sdk/android/services/d/e;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "app[name]"

    iget-object v2, p2, Lio/fabric/sdk/android/services/f/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "app[display_version]"

    iget-object v2, p2, Lio/fabric/sdk/android/services/f/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "app[build_version]"

    iget-object v2, p2, Lio/fabric/sdk/android/services/f/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "app[source]"

    iget v2, p2, Lio/fabric/sdk/android/services/f/d;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "app[minimum_sdk_version]"

    iget-object v2, p2, Lio/fabric/sdk/android/services/f/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "app[built_sdk_version]"

    iget-object v2, p2, Lio/fabric/sdk/android/services/f/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v2

    .line 93
    iget-object v0, p2, Lio/fabric/sdk/android/services/f/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-string v0, "app[instance_identifier]"

    iget-object v1, p2, Lio/fabric/sdk/android/services/f/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lio/fabric/sdk/android/services/d/e;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    .line 97
    :cond_0
    iget-object v0, p2, Lio/fabric/sdk/android/services/f/d;->j:Lio/fabric/sdk/android/services/f/n;

    if-eqz v0, :cond_1

    .line 98
    const/4 v1, 0x0

    .line 101
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/f/a;->kit:Lio/fabric/sdk/android/k;

    invoke-virtual {v0}, Lio/fabric/sdk/android/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p2, Lio/fabric/sdk/android/services/f/d;->j:Lio/fabric/sdk/android/services/f/n;

    iget v3, v3, Lio/fabric/sdk/android/services/f/n;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 104
    const-string v0, "app[icon][hash]"

    iget-object v3, p2, Lio/fabric/sdk/android/services/f/d;->j:Lio/fabric/sdk/android/services/f/n;

    iget-object v3, v3, Lio/fabric/sdk/android/services/f/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lio/fabric/sdk/android/services/d/e;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v3, "app[icon][data]"

    const-string v4, "icon.png"

    const-string v5, "application/octet-stream"

    invoke-virtual {v0, v3, v4, v5, v1}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v3, "app[icon][width]"

    iget-object v4, p2, Lio/fabric/sdk/android/services/f/d;->j:Lio/fabric/sdk/android/services/f/n;

    iget v4, v4, Lio/fabric/sdk/android/services/f/n;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v3, "app[icon][height]"

    iget-object v4, p2, Lio/fabric/sdk/android/services/f/d;->j:Lio/fabric/sdk/android/services/f/n;

    iget v4, v4, Lio/fabric/sdk/android/services/f/n;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/Number;)Lio/fabric/sdk/android/services/d/e;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 117
    :cond_1
    :goto_0
    iget-object v0, p2, Lio/fabric/sdk/android/services/f/d;->k:Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p2, Lio/fabric/sdk/android/services/f/d;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/k;

    .line 119
    invoke-virtual {v0}, Lio/fabric/sdk/android/k;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    .line 120
    :goto_2
    invoke-virtual {v0}, Lio/fabric/sdk/android/k;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v0, ""

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "app[build][libraries]["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lio/fabric/sdk/android/services/d/e;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to find app icon with resource ID: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lio/fabric/sdk/android/services/f/d;->j:Lio/fabric/sdk/android/services/f/n;

    iget v6, v6, Lio/fabric/sdk/android/services/f/n;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "Failed to close app icon InputStream."

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    invoke-virtual {v0}, Lio/fabric/sdk/android/k;->getVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {v0}, Lio/fabric/sdk/android/k;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 124
    :cond_4
    return-object v2
.end method


# virtual methods
.method public a(Lio/fabric/sdk/android/services/f/d;)Z
    .locals 5

    .prologue
    .line 51
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/f/a;->getHttpRequest()Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    .line 52
    const-string v1, "X-CRASHLYTICS-API-KEY"

    iget-object v2, p1, Lio/fabric/sdk/android/services/f/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v2, p0, Lio/fabric/sdk/android/services/f/a;->kit:Lio/fabric/sdk/android/k;

    invoke-virtual {v2}, Lio/fabric/sdk/android/k;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    .line 53
    invoke-direct {p0, v0, p1}, Lio/fabric/sdk/android/services/f/a;->a(Lio/fabric/sdk/android/services/d/e;Lio/fabric/sdk/android/services/f/d;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v1

    .line 55
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending app info to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/f/a;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 56
    iget-object v0, p1, Lio/fabric/sdk/android/services/f/d;->j:Lio/fabric/sdk/android/services/f/n;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "App icon hash is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lio/fabric/sdk/android/services/f/d;->j:Lio/fabric/sdk/android/services/f/n;

    iget-object v3, v3, Lio/fabric/sdk/android/services/f/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 59
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "App icon size is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lio/fabric/sdk/android/services/f/d;->j:Lio/fabric/sdk/android/services/f/n;

    iget v3, v3, Lio/fabric/sdk/android/services/f/n;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lio/fabric/sdk/android/services/f/d;->j:Lio/fabric/sdk/android/services/f/n;

    iget v3, v3, Lio/fabric/sdk/android/services/f/n;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 63
    :cond_0
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/d/e;->b()I

    move-result v2

    .line 64
    const-string v0, "POST"

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/d/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Create"

    .line 67
    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " app request ID: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "X-REQUEST-ID"

    invoke-virtual {v1, v4}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v3}, Lio/fabric/sdk/android/q;->b()V

    .line 69
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Result was "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 71
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/ah;->a(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 64
    :cond_1
    const-string v0, "Update"

    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
