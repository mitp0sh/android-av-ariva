.class public abstract Lio/fabric/sdk/android/services/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACCEPT_JSON_VALUE:Ljava/lang/String; = "application/json"

.field public static final ANDROID_CLIENT_TYPE:Ljava/lang/String; = "android"

.field public static final CLS_ANDROID_SDK_DEVELOPER_TOKEN:Ljava/lang/String; = "bca6990fc3c15a8105800c0673517a4b579634a1"

.field public static final CRASHLYTICS_USER_AGENT:Ljava/lang/String; = "Crashlytics Android SDK/"

.field public static final DEFAULT_TIMEOUT:I = 0x2710

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_API_KEY:Ljava/lang/String; = "X-CRASHLYTICS-API-KEY"

.field public static final HEADER_CLIENT_TYPE:Ljava/lang/String; = "X-CRASHLYTICS-API-CLIENT-TYPE"

.field public static final HEADER_CLIENT_VERSION:Ljava/lang/String; = "X-CRASHLYTICS-API-CLIENT-VERSION"

.field public static final HEADER_D:Ljava/lang/String; = "X-CRASHLYTICS-D"

.field public static final HEADER_DEVELOPER_TOKEN:Ljava/lang/String; = "X-CRASHLYTICS-DEVELOPER-TOKEN"

.field public static final HEADER_DEVICE_STATE:Ljava/lang/String; = "X-CRASHLYTICS-DEVICE-STATE"

.field public static final HEADER_REQUEST_ID:Ljava/lang/String; = "X-REQUEST-ID"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final PROTOCOL_AND_HOST_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected final kit:Lio/fabric/sdk/android/k;

.field private final method:Lio/fabric/sdk/android/services/d/d;

.field private final protocolAndHostOverride:Ljava/lang/String;

.field private final requestFactory:Lio/fabric/sdk/android/services/d/m;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "http(s?)://[^\\/]+"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/b/a;->PROTOCOL_AND_HOST_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Lio/fabric/sdk/android/services/d/d;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p3, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    if-nez p4, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "requestFactory must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/a;->kit:Lio/fabric/sdk/android/k;

    .line 78
    iput-object p2, p0, Lio/fabric/sdk/android/services/b/a;->protocolAndHostOverride:Ljava/lang/String;

    .line 79
    invoke-direct {p0, p3}, Lio/fabric/sdk/android/services/b/a;->overrideProtocolAndHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/b/a;->url:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lio/fabric/sdk/android/services/b/a;->requestFactory:Lio/fabric/sdk/android/services/d/m;

    .line 81
    iput-object p5, p0, Lio/fabric/sdk/android/services/b/a;->method:Lio/fabric/sdk/android/services/d/d;

    .line 82
    return-void
.end method

.method private overrideProtocolAndHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    .line 142
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/a;->protocolAndHostOverride:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lio/fabric/sdk/android/services/b/a;->PROTOCOL_AND_HOST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v1, p0, Lio/fabric/sdk/android/services/b/a;->protocolAndHostOverride:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected getHttpRequest()Lio/fabric/sdk/android/services/d/e;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/b/a;->getHttpRequest(Ljava/util/Map;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    return-object v0
.end method

.method protected getHttpRequest(Ljava/util/Map;)Lio/fabric/sdk/android/services/d/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/fabric/sdk/android/services/d/e;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/a;->requestFactory:Lio/fabric/sdk/android/services/d/m;

    iget-object v1, p0, Lio/fabric/sdk/android/services/b/a;->method:Lio/fabric/sdk/android/services/d/d;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/b/a;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/services/d/m;->a(Lio/fabric/sdk/android/services/d/d;Ljava/lang/String;Ljava/util/Map;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/d/e;->f()Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/d/e;->e()Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crashlytics Android SDK/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/fabric/sdk/android/services/b/a;->kit:Lio/fabric/sdk/android/k;

    invoke-virtual {v3}, Lio/fabric/sdk/android/k;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v2, "bca6990fc3c15a8105800c0673517a4b579634a1"

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/d/e;->a(Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/d/e;

    move-result-object v0

    return-object v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/a;->url:Ljava/lang/String;

    return-object v0
.end method
