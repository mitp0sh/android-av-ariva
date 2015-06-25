.class Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final app_cert_fingerprint:Ljava/lang/String;

.field private final app_cert_issuer:Ljava/lang/String;

.field private final app_cert_serial:Ljava/lang/String;

.field private final app_cert_subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;->app_cert_fingerprint:Ljava/lang/String;

    .line 435
    iput-object p2, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;->app_cert_issuer:Ljava/lang/String;

    .line 436
    iput-object p3, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;->app_cert_subject:Ljava/lang/String;

    .line 437
    iput-object p4, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;->app_cert_serial:Ljava/lang/String;

    .line 438
    return-void
.end method

.method static synthetic access$000(Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;->app_cert_fingerprint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;->app_cert_issuer:Ljava/lang/String;

    return-object v0
.end method
