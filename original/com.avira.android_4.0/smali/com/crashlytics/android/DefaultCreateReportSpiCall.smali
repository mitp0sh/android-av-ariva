.class Lcom/crashlytics/android/DefaultCreateReportSpiCall;
.super Lio/fabric/sdk/android/services/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/CreateReportSpiCall;


# static fields
.field static final FILE_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field static final FILE_PARAM:Ljava/lang/String; = "report[file]"

.field static final IDENTIFIER_PARAM:Ljava/lang/String; = "report[identifier]"


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;)V
    .locals 6

    .prologue
    .line 37
    sget-object v5, Lio/fabric/sdk/android/services/d/d;->POST:Lio/fabric/sdk/android/services/d/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/b/a;-><init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Lio/fabric/sdk/android/services/d/d;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Lio/fabric/sdk/android/services/d/d;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lio/fabric/sdk/android/services/b/a;-><init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Lio/fabric/sdk/android/services/d/d;)V

    .line 54
    return-void
.end method

.method private applyHeadersTo(Lio/fabric/sdk/android/services/d/e;Lcom/crashlytics/android/CreateReportRequest;)Lio/fabric/sdk/android/services/d/e;
    .locals 3

    .prologue
    .line 74
    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Lcom/crashlytics/android/CreateReportRequest;->apiKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crashlytics/android/Crashlytics;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    .line 79
    iget-object v1, p2, Lcom/crashlytics/android/CreateReportRequest;->report:Lcom/crashlytics/android/Report;

    invoke-interface {v1}, Lcom/crashlytics/android/Report;->getCustomHeaders()Ljava/util/Map;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/util/Map$Entry;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    move-object v1, v0

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    return-object v1
.end method

.method private applyMultipartDataTo(Lio/fabric/sdk/android/services/d/e;Lcom/crashlytics/android/CreateReportRequest;)Lio/fabric/sdk/android/services/d/e;
    .locals 5

    .prologue
    .line 88
    iget-object v0, p2, Lcom/crashlytics/android/CreateReportRequest;->report:Lcom/crashlytics/android/Report;

    .line 90
    const-string v1, "report[file]"

    invoke-interface {v0}, Lcom/crashlytics/android/Report;->getFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/octet-stream"

    invoke-interface {v0}, Lcom/crashlytics/android/Report;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v1

    const-string v2, "report[identifier]"

    invoke-interface {v0}, Lcom/crashlytics/android/Report;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/fabric/sdk/android/services/d/e;->b(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invoke(Lcom/crashlytics/android/CreateReportRequest;)Z
    .locals 5

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/crashlytics/android/DefaultCreateReportSpiCall;->getHttpRequest()Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/DefaultCreateReportSpiCall;->applyHeadersTo(Lio/fabric/sdk/android/services/d/e;Lcom/crashlytics/android/CreateReportRequest;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    .line 60
    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/DefaultCreateReportSpiCall;->applyMultipartDataTo(Lio/fabric/sdk/android/services/d/e;Lcom/crashlytics/android/CreateReportRequest;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    .line 62
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending report to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crashlytics/android/DefaultCreateReportSpiCall;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v1}, Lio/fabric/sdk/android/q;->b()V

    .line 64
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/d/e;->b()I

    move-result v1

    .line 66
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Create report request ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "X-REQUEST-ID"

    invoke-virtual {v0, v4}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v2}, Lio/fabric/sdk/android/q;->b()V

    .line 68
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Result was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 70
    invoke-static {v1}, Lio/fabric/sdk/android/services/b/ah;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
