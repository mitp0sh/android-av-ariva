.class Lcom/crashlytics/android/answers/DefaultSessionAnalyticsFilesSender;
.super Lio/fabric/sdk/android/services/b/a;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/c/p;


# static fields
.field static final FILE_CONTENT_TYPE:Ljava/lang/String; = "application/vnd.crashlytics.android.events"

.field static final FILE_PARAM_NAME:Ljava/lang/String; = "session_analytics_file_"


# instance fields
.field private final apiKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 27
    sget-object v6, Lio/fabric/sdk/android/services/d/d;->POST:Lio/fabric/sdk/android/services/d/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/answers/DefaultSessionAnalyticsFilesSender;-><init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Ljava/lang/String;Lio/fabric/sdk/android/services/d/d;)V

    .line 28
    return-void
.end method

.method constructor <init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Ljava/lang/String;Lio/fabric/sdk/android/services/d/d;)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/b/a;-><init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Lio/fabric/sdk/android/services/d/d;)V

    .line 42
    iput-object p5, p0, Lcom/crashlytics/android/answers/DefaultSessionAnalyticsFilesSender;->apiKey:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private applyHeadersTo(Lio/fabric/sdk/android/services/d/e;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;
    .locals 3

    .prologue
    .line 61
    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/answers/Answers;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-KEY"

    invoke-virtual {v0, v1, p2}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    return-object v0
.end method

.method private applyMultipartDataTo(Lio/fabric/sdk/android/services/d/e;Ljava/util/List;)Lio/fabric/sdk/android/services/d/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/d/e;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lio/fabric/sdk/android/services/d/e;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 70
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding analytics session file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to multipart POST"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v3}, Lio/fabric/sdk/android/services/b/l;->e(Landroid/content/Context;)V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "session_analytics_file_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/vnd.crashlytics.android.events"

    invoke-virtual {p1, v3, v4, v5, v0}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lio/fabric/sdk/android/services/d/e;

    .line 73
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 74
    goto :goto_0

    .line 76
    :cond_0
    return-object p1
.end method


# virtual methods
.method public send(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/DefaultSessionAnalyticsFilesSender;->getHttpRequest()Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/crashlytics/android/answers/DefaultSessionAnalyticsFilesSender;->apiKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/answers/DefaultSessionAnalyticsFilesSender;->applyHeadersTo(Lio/fabric/sdk/android/services/d/e;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    .line 49
    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/answers/DefaultSessionAnalyticsFilesSender;->applyMultipartDataTo(Lio/fabric/sdk/android/services/d/e;Ljava/util/List;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " analytics files to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/DefaultSessionAnalyticsFilesSender;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v1}, Lio/fabric/sdk/android/services/b/l;->e(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/d/e;->b()I

    move-result v0

    .line 54
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response code for analytics file send is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v1}, Lio/fabric/sdk/android/services/b/l;->e(Landroid/content/Context;)V

    .line 57
    invoke-static {v0}, Lio/fabric/sdk/android/services/b/ah;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
