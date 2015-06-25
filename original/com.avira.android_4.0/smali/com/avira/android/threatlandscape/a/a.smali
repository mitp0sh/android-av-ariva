.class public final Lcom/avira/android/threatlandscape/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "THRTLNDSCPEUTIL"


# direct methods
.method public static a(Ljava/lang/String;Lcom/avira/android/threatlandscape/a/c;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 132
    const-string v0, ""

    .line 136
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 138
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 139
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 145
    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 147
    if-lez v4, :cond_1

    .line 149
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 151
    :cond_1
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 153
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 155
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 157
    array-length v2, v1

    if-lez v2, :cond_2

    .line 160
    sget-object v2, Lcom/avira/android/threatlandscape/a/b;->$SwitchMap$com$avira$android$threatlandscape$utilities$ThreatLandscapeUtility$EncodingType:[I

    invoke-virtual {p1}, Lcom/avira/android/threatlandscape/a/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 192
    :cond_2
    :goto_0
    return-object v0

    .line 164
    :pswitch_0
    invoke-static {v1}, Lcom/avira/android/threatlandscape/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :pswitch_1
    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "THRTLNDSCPEUTIL"

    const-string v3, "Invalid Algorithm"

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :catch_1
    move-exception v1

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "THRTLNDSCPEUTIL"

    const-string v3, "Invalid File path"

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :catch_2
    move-exception v1

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "THRTLNDSCPEUTIL"

    const-string v3, "Error in reading file content"

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 205
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 207
    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 209
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_0
    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 212
    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BLcom/avira/android/threatlandscape/a/c;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    const-string v0, ""

    .line 47
    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 49
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 52
    sget-object v2, Lcom/avira/android/threatlandscape/a/b;->$SwitchMap$com$avira$android$threatlandscape$utilities$ThreatLandscapeUtility$EncodingType:[I

    invoke-virtual {p1}, Lcom/avira/android/threatlandscape/a/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 75
    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    invoke-static {v1}, Lcom/avira/android/threatlandscape/a/a;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_1
    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "THRTLNDSCPEUTIL"

    const-string v3, "Unexpected error in extracting Calculating Sha1"

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
