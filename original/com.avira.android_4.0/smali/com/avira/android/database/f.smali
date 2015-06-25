.class public final Lcom/avira/android/database/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEX_RADIX:I = 0x10

.field private static final KEY_LENGTH:I = 0x10

.field public static final ONE_TIME_SECURE_RANDOM:Ljava/lang/String;

.field private static a:Lcom/avira/android/database/f;


# instance fields
.field private b:Ljavax/crypto/Cipher;

.field private final c:Ljava/lang/String;

.field private d:Ljavax/crypto/spec/SecretKeySpec;

.field private e:[B

.field private final f:Ljava/util/concurrent/Semaphore;

.field private g:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/database/f;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/database/f;->ONE_TIME_SECURE_RANDOM:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/avira/android/database/f;->c:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/database/f;->e:[B

    .line 44
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/database/f;->f:Ljava/util/concurrent/Semaphore;

    .line 48
    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/database/f;->b:Ljavax/crypto/Cipher;

    .line 49
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/database/f;->g:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 63
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "EncryptionProvider.const"

    const-string v3, "NoSuchAlgorithmException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    .line 57
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "EncryptionProvider.const"

    const-string v3, "NoSuchPaddingException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    :catch_2
    move-exception v0

    .line 61
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "EncryptionProvider.const"

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/avira/android/database/f;
    .locals 2

    .prologue
    .line 167
    const-class v1, Lcom/avira/android/database/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/database/f;->a:Lcom/avira/android/database/f;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/avira/android/database/f;

    invoke-direct {v0}, Lcom/avira/android/database/f;-><init>()V

    sput-object v0, Lcom/avira/android/database/f;->a:Lcom/avira/android/database/f;

    .line 171
    :cond_0
    sget-object v0, Lcom/avira/android/database/f;->a:Lcom/avira/android/database/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 351
    if-nez p0, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 366
    :goto_0
    return-object v0

    .line 356
    :cond_0
    const/16 v1, 0x10

    new-array v2, v1, [C

    fill-array-data v2, :array_0

    .line 357
    array-length v3, p0

    .line 358
    mul-int/lit8 v1, v3, 0x2

    new-array v4, v1, [C

    move v1, v0

    .line 360
    :goto_1
    if-ge v1, v3, :cond_1

    .line 362
    add-int/lit8 v5, v0, 0x1

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v2, v6

    aput-char v6, v4, v0

    .line 363
    add-int/lit8 v0, v5, 0x1

    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v4, v5

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 366
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 356
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private a([BLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 176
    .line 178
    const/4 v0, 0x0

    .line 180
    if-nez p1, :cond_0

    .line 182
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 187
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/avira/android/database/f;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 188
    invoke-direct {p0, p2}, Lcom/avira/android/database/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/avira/android/database/f;->b:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/avira/android/database/f;->d()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 190
    iget-object v1, p0, Lcom/avira/android/database/f;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 212
    :goto_0
    invoke-static {v0}, Lcom/avira/android/database/f;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/avira/android/database/f;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 214
    return-object v0

    .line 192
    :catch_0
    move-exception v1

    .line 194
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.encrypt"

    const-string v4, "IllegalBlockSizeException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    :catch_1
    move-exception v1

    .line 198
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.encrypt"

    const-string v4, "BadPaddingException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 200
    :catch_2
    move-exception v1

    .line 202
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.encrypt"

    const-string v4, "InvalidKeyException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 204
    :catch_3
    move-exception v1

    .line 206
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.encrypt"

    const-string v4, "InterruptedException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 208
    :catch_4
    move-exception v1

    .line 210
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.encrypt"

    const-string v4, "Exception"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 6

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/database/f;->g:Ljava/security/MessageDigest;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 154
    const/16 v0, 0x10

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    iget-object v1, p0, Lcom/avira/android/database/f;->g:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :goto_0
    return-object v0

    .line 157
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 159
    :goto_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.padKey"

    const-string v4, "UnsupportedEncodingException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private b()[B
    .locals 7

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/avira/android/database/f;->e:[B

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/avira/android/database/f;->e:[B

    .line 112
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-static {}, Lcom/avira/android/database/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/avira/android/device/a;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    if-nez v2, :cond_1

    .line 85
    const-wide/16 v2, 0x32

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 89
    :catch_0
    move-exception v2

    goto :goto_1

    .line 92
    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/avira/android/database/f;->g:Ljava/security/MessageDigest;

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 95
    sget-object v2, Lcom/avira/android/database/f;->ONE_TIME_SECURE_RANDOM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    const/16 v0, 0x10

    new-array v0, v0, [B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 98
    :try_start_3
    iget-object v1, p0, Lcom/avira/android/database/f;->g:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 107
    :catch_1
    move-exception v1

    .line 109
    :goto_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.getKey"

    const-string v4, "UnsupportedEncodingException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    :cond_2
    const/16 v0, 0x10

    :try_start_4
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/avira/android/database/f;->e:[B

    .line 103
    iget-object v0, p0, Lcom/avira/android/database/f;->g:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avira/android/database/f;->e:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avira/android/database/f;->e:[B

    array-length v5, v5

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v0, p0, Lcom/avira/android/database/f;->e:[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 107
    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 371
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 373
    :cond_0
    const/4 v0, 0x0

    .line 384
    :cond_1
    return-object v0

    .line 377
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 378
    div-int/lit8 v0, v2, 0x2

    new-array v0, v0, [B

    .line 379
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 381
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 379
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private c()[B
    .locals 3

    .prologue
    .line 117
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 125
    :try_start_0
    const-string v0, "SHA1PRNG"

    const-string v2, "Crypto"

    invoke-static {v0, v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_0
    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/avira/android/database/f;->b()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 143
    :cond_0
    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 144
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 130
    :cond_1
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 273
    .line 275
    if-nez p1, :cond_0

    .line 317
    :goto_0
    return-object v0

    .line 282
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/avira/android/database/f;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 284
    invoke-direct {p0, p2}, Lcom/avira/android/database/f;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/avira/android/database/f;->b:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/avira/android/database/f;->d()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 286
    invoke-static {p1}, Lcom/avira/android/database/f;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 287
    if-eqz v1, :cond_1

    .line 289
    iget-object v2, p0, Lcom/avira/android/database/f;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/avira/android/database/f;->f:Ljava/util/concurrent/Semaphore;

    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 294
    :try_start_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.decrypt"

    const-string v4, "InvalidKeyException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    iget-object v1, p0, Lcom/avira/android/database/f;->f:Ljava/util/concurrent/Semaphore;

    goto :goto_1

    .line 296
    :catch_1
    move-exception v1

    .line 298
    :try_start_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.decrypt"

    const-string v4, "IllegalBlockSizeException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    iget-object v1, p0, Lcom/avira/android/database/f;->f:Ljava/util/concurrent/Semaphore;

    goto :goto_1

    .line 300
    :catch_2
    move-exception v1

    .line 302
    :try_start_3
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.decrypt"

    const-string v4, "BadPaddingException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    iget-object v1, p0, Lcom/avira/android/database/f;->f:Ljava/util/concurrent/Semaphore;

    goto :goto_1

    .line 304
    :catch_3
    move-exception v1

    .line 306
    :try_start_4
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.decrypt"

    const-string v4, "InvalidAlgorithmParameterException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 314
    iget-object v1, p0, Lcom/avira/android/database/f;->f:Ljava/util/concurrent/Semaphore;

    goto :goto_1

    .line 308
    :catch_4
    move-exception v1

    .line 310
    :try_start_5
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.decrypt"

    const-string v4, "InterruptedException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 314
    iget-object v1, p0, Lcom/avira/android/database/f;->f:Ljava/util/concurrent/Semaphore;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avira/android/database/f;->f:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

.method private d()Ljavax/crypto/spec/SecretKeySpec;
    .locals 4

    .prologue
    .line 244
    iget-object v0, p0, Lcom/avira/android/database/f;->d:Ljavax/crypto/spec/SecretKeySpec;

    if-nez v0, :cond_0

    .line 248
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p0}, Lcom/avira/android/database/f;->c()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/database/f;->d:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avira/android/database/f;->d:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0

    .line 250
    :catch_0
    move-exception v0

    .line 252
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "EncryptionProvider.getSecretKeySpec"

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    const-string v1, "settingRegisteredPath"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    :goto_0
    return-object p1

    .line 225
    :cond_0
    if-nez p1, :cond_1

    .line 227
    const-string p1, ""

    .line 232
    :cond_1
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/avira/android/database/f;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object p1, v0

    .line 239
    goto :goto_0

    .line 234
    :catch_0
    move-exception v1

    .line 236
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.encrypt"

    const-string v4, "UnsupportedEncodingException"

    invoke-virtual {v2, v3, v4, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 322
    .line 325
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-object v1

    .line 330
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/avira/android/database/f;->c(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 334
    if-eqz v2, :cond_2

    .line 336
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 342
    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 341
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    const-string v3, "EncryptionProvider.decrypt"

    const-string v4, "UnsupportedEncodingException"

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method
