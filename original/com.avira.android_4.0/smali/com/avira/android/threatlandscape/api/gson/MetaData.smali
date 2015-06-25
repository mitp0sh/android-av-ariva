.class public Lcom/avira/android/threatlandscape/api/gson/MetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LAST_PHONE_TYPE_IDX:I = 0x8

.field private static final MIN_IMEI_LENGTH:I = 0xe

.field private static TAG:Ljava/lang/String;


# instance fields
.field private app_flag_installed:Z

.field private app_flag_system:Z

.field private app_install_time:Ljava/lang/String;

.field private app_package_name:Ljava/lang/String;

.field private app_update_time:Ljava/lang/String;

.field private app_version_code:I

.field private app_version_name:Ljava/lang/String;

.field private cert_info:[Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;

.field private final phone_manufacturer:Ljava/lang/String;

.field private final phone_model:Ljava/lang/String;

.field private phone_type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "MTDT"

    sput-object v0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/ArrayList;Ljava/util/ArrayList;[Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_package_name:Ljava/lang/String;

    .line 95
    iput p2, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_version_code:I

    .line 96
    iput-object p3, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_version_name:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_install_time:Ljava/lang/String;

    .line 98
    iput-object p5, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_update_time:Ljava/lang/String;

    .line 99
    iput-object p7, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->phone_type:Ljava/lang/String;

    .line 100
    iput-object p8, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->phone_manufacturer:Ljava/lang/String;

    .line 101
    iput-object p9, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->phone_model:Ljava/lang/String;

    .line 102
    iput-boolean p10, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_flag_system:Z

    .line 103
    iput-boolean p11, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_flag_installed:Z

    .line 104
    iput-object p14, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->cert_info:[Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/telephony/TelephonyManager;)V
    .locals 3

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-direct {p0, p1}, Lcom/avira/android/threatlandscape/api/gson/MetaData;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-direct {p0, v0}, Lcom/avira/android/threatlandscape/api/gson/MetaData;->populatePackageMetaData(Ljava/lang/String;)V

    .line 123
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->phone_manufacturer:Ljava/lang/String;

    .line 124
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->phone_model:Ljava/lang/String;

    .line 125
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->phone_type:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->phone_type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avira/android/threatlandscape/api/gson/MetaData;->isValidImeiOrMeid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->phone_type:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->phone_type:Ljava/lang/String;

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->phone_type:Ljava/lang/String;

    goto :goto_0
.end method

.method private extractCertInfo(Landroid/content/pm/Signature;)Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 349
    .line 353
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 356
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 358
    :try_start_0
    const-string v0, "X509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 372
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 375
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 376
    invoke-interface {v2}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    .line 380
    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    .line 384
    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 395
    :try_start_2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    sget-object v5, Lcom/avira/android/threatlandscape/a/c;->ENCODING_HEX:Lcom/avira/android/threatlandscape/a/c;

    invoke-static {v0, v5}, Lcom/avira/android/threatlandscape/a/a;->a([BLcom/avira/android/threatlandscape/a/c;)Ljava/lang/String;

    move-result-object v5

    .line 398
    new-instance v0, Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    move-object v1, v0

    .line 405
    :goto_1
    return-object v1

    .line 363
    :catch_0
    move-exception v0

    .line 365
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v2, Lcom/avira/android/threatlandscape/api/gson/MetaData;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected error in extracting certificate fingerprint [1]"

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 388
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v2, Lcom/avira/android/threatlandscape/api/gson/MetaData;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected error in extracting certificate fingerprint [2]"

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 402
    :catch_2
    move-exception v0

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v2, Lcom/avira/android/threatlandscape/api/gson/MetaData;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected error in extracting certificate fingerprint [3]"

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private getCertFingerprintList([Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 259
    aget-object v2, p1, v0

    # getter for: Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;->app_cert_fingerprint:Ljava/lang/String;
    invoke-static {v2}, Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;->access$000(Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-object v1
.end method

.method private getCertInfoList(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;
    .locals 4

    .prologue
    .line 218
    const/16 v0, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 230
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 232
    array-length v0, v2

    new-array v1, v0, [Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;

    .line 234
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 236
    aget-object v3, v2, v0

    .line 237
    invoke-direct {p0, v3}, Lcom/avira/android/threatlandscape/api/gson/MetaData;->extractCertInfo(Landroid/content/pm/Signature;)Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;

    move-result-object v3

    .line 238
    if-eqz v3, :cond_0

    .line 240
    aput-object v3, v1, v0

    .line 234
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 244
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private getCertIssuerList([Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 277
    aget-object v2, p1, v0

    # getter for: Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;->app_cert_issuer:Ljava/lang/String;
    invoke-static {v2}, Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;->access$100(Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-object v1
.end method

.method private getFormattedStringTimestamp(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 336
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageInfoLongFieldValue(Landroid/content/pm/PackageInfo;Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 292
    const-wide/16 v0, 0x0

    .line 297
    :try_start_0
    const-class v2, Landroid/content/pm/PackageInfo;

    invoke-virtual {v2, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 298
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v0

    .line 313
    :goto_0
    return-wide v0

    .line 302
    :catch_0
    move-exception v2

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    sget-object v3, Lcom/avira/android/threatlandscape/api/gson/MetaData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error [1] in retrieving data for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :catch_1
    move-exception v2

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    sget-object v3, Lcom/avira/android/threatlandscape/api/gson/MetaData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error [2] in retrieving data for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :catch_2
    move-exception v2

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    sget-object v3, Lcom/avira/android/threatlandscape/api/gson/MetaData;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error [3] in retrieving data for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/avira/android/a/c;->a()Lcom/avira/android/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avira/android/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isValidImeiOrMeid(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populatePackageMetaData(Ljava/lang/String;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avira/android/ApplicationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 153
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v6, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 161
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 167
    iget-wide v4, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 168
    iget-wide v2, v7, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 177
    :goto_0
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 179
    :goto_1
    invoke-direct {p0, v6, p1}, Lcom/avira/android/threatlandscape/api/gson/MetaData;->getCertInfoList(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;

    move-result-object v1

    .line 187
    invoke-direct {p0, v1}, Lcom/avira/android/threatlandscape/api/gson/MetaData;->getCertFingerprintList([Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;)Ljava/util/ArrayList;

    .line 190
    invoke-direct {p0, v1}, Lcom/avira/android/threatlandscape/api/gson/MetaData;->getCertIssuerList([Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;)Ljava/util/ArrayList;

    .line 193
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_package_name:Ljava/lang/String;

    .line 194
    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v6, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_version_code:I

    .line 195
    iget-object v6, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v6, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_version_name:Ljava/lang/String;

    .line 196
    invoke-direct {p0, v4, v5}, Lcom/avira/android/threatlandscape/api/gson/MetaData;->getFormattedStringTimestamp(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_install_time:Ljava/lang/String;

    .line 197
    invoke-direct {p0, v2, v3}, Lcom/avira/android/threatlandscape/api/gson/MetaData;->getFormattedStringTimestamp(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_update_time:Ljava/lang/String;

    .line 198
    iput-boolean v0, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_flag_system:Z

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->app_flag_installed:Z

    .line 201
    iput-object v1, p0, Lcom/avira/android/threatlandscape/api/gson/MetaData;->cert_info:[Lcom/avira/android/threatlandscape/api/gson/MetaData$CertInfo;

    .line 207
    :goto_2
    return-void

    .line 172
    :cond_0
    const-string v2, "firstInstallTime"

    invoke-direct {p0, v7, v2}, Lcom/avira/android/threatlandscape/api/gson/MetaData;->getPackageInfoLongFieldValue(Landroid/content/pm/PackageInfo;Ljava/lang/String;)J

    move-result-wide v4

    .line 173
    const-string v2, "lastUpdateTime"

    invoke-direct {p0, v7, v2}, Lcom/avira/android/threatlandscape/api/gson/MetaData;->getPackageInfoLongFieldValue(Landroid/content/pm/PackageInfo;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 177
    goto :goto_1

    .line 205
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    sget-object v1, Lcom/avira/android/threatlandscape/api/gson/MetaData;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected Error in retrieving Package info."

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
