.class public final Lcom/avira/android/securebrowsing/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/securebrowsing/c/l;


# static fields
.field public static final BUFSIZE:I = 0x2000


# instance fields
.field final synthetic a:Lcom/avira/android/securebrowsing/c/a;

.field private final b:Lcom/avira/android/securebrowsing/c/r;

.field private final c:Ljava/io/OutputStream;

.field private d:Ljava/io/PushbackInputStream;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/avira/android/securebrowsing/c/m;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/avira/android/securebrowsing/c/f;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avira/android/securebrowsing/c/a;Lcom/avira/android/securebrowsing/c/r;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;)V
    .locals 3

    .prologue
    .line 993
    iput-object p1, p0, Lcom/avira/android/securebrowsing/c/k;->a:Lcom/avira/android/securebrowsing/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    iput-object p2, p0, Lcom/avira/android/securebrowsing/c/k;->b:Lcom/avira/android/securebrowsing/c/r;

    .line 995
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p3, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->d:Ljava/io/PushbackInputStream;

    .line 996
    iput-object p4, p0, Lcom/avira/android/securebrowsing/c/k;->c:Ljava/io/OutputStream;

    .line 997
    invoke-virtual {p5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "127.0.0.1"

    .line 999
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->j:Ljava/util/Map;

    .line 1001
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->j:Ljava/util/Map;

    const-string v2, "remote-addr"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->j:Ljava/util/Map;

    const-string v2, "http-client-ip"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    return-void

    .line 997
    :cond_1
    invoke-virtual {p5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/nio/ByteBuffer;I)I
    .locals 3

    .prologue
    const/16 v2, 0xd

    const/16 v1, 0xa

    .line 1506
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1508
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-ne v0, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1510
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1513
    :cond_1
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private static a([BI)I
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    const/4 v0, 0x0

    .line 1404
    move v1, v0

    .line 1405
    :goto_0
    add-int/lit8 v2, v1, 0x3

    if-ge v2, p1, :cond_0

    .line 1407
    aget-byte v2, p0, v1

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, p0, v2

    if-ne v2, v3, :cond_1

    .line 1410
    add-int/lit8 v0, v1, 0x4

    .line 1414
    :cond_0
    return v0

    .line 1412
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1460
    const-string v0, ""

    .line 1461
    if-lez p3, :cond_0

    .line 1463
    const/4 v3, 0x0

    .line 1466
    :try_start_0
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->b:Lcom/avira/android/securebrowsing/c/r;

    invoke-interface {v1}, Lcom/avira/android/securebrowsing/c/r;->a()Lcom/avira/android/securebrowsing/c/q;

    move-result-object v1

    .line 1467
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1468
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-interface {v1}, Lcom/avira/android/securebrowsing/c/q;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1469
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 1470
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    add-int v6, p2, p3

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1471
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 1472
    invoke-interface {v1}, Lcom/avira/android/securebrowsing/c/q;->b()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1480
    :goto_0
    invoke-static {v2}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 1483
    :cond_0
    return-object v0

    .line 1474
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 1476
    :goto_1
    :try_start_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1480
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_2

    .line 1474
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1236
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1237
    if-nez v0, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1242
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1245
    new-instance v0, Lcom/avira/android/securebrowsing/c/p;

    sget-object v1, Lcom/avira/android/securebrowsing/c/o;->BAD_REQUEST:Lcom/avira/android/securebrowsing/c/o;

    const-string v2, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/c/p;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :catch_0
    move-exception v0

    .line 1292
    new-instance v1, Lcom/avira/android/securebrowsing/c/p;

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->INTERNAL_ERROR:Lcom/avira/android/securebrowsing/c/o;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/avira/android/securebrowsing/c/p;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1249
    :cond_1
    :try_start_1
    const-string v0, "method"

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1253
    new-instance v0, Lcom/avira/android/securebrowsing/c/p;

    sget-object v1, Lcom/avira/android/securebrowsing/c/o;->BAD_REQUEST:Lcom/avira/android/securebrowsing/c/o;

    const-string v2, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/c/p;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1260
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1261
    if-ltz v1, :cond_4

    .line 1263
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/avira/android/securebrowsing/c/k;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1264
    iget-object v3, p0, Lcom/avira/android/securebrowsing/c/k;->a:Lcom/avira/android/securebrowsing/c/a;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1275
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1277
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1278
    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1280
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1281
    if-ltz v2, :cond_3

    .line 1282
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1268
    :cond_4
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->a:Lcom/avira/android/securebrowsing/c/a;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 1288
    :cond_5
    const-string v0, "uri"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1305
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v3, 0x0

    const/4 v2, -0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    if-ge v1, v6, :cond_3

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    aget-byte v7, v4, v3

    if-ne v6, v7, :cond_2

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    array-length v6, v4

    if-ne v3, v6, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v2, -0x1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v3

    const/4 v3, 0x0

    const/4 v2, -0x1

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    array-length v1, v4

    if-ge v2, v1, :cond_4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 1306
    :cond_4
    const/4 v2, 0x1

    .line 1307
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1308
    :goto_3
    if-eqz v1, :cond_11

    .line 1310
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1312
    new-instance v1, Lcom/avira/android/securebrowsing/c/p;

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->BAD_REQUEST:Lcom/avira/android/securebrowsing/c/o;

    const-string v3, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    invoke-direct {v1, v2, v3}, Lcom/avira/android/securebrowsing/c/p;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    :catch_0
    move-exception v1

    .line 1394
    new-instance v2, Lcom/avira/android/securebrowsing/c/p;

    sget-object v3, Lcom/avira/android/securebrowsing/c/o;->INTERNAL_ERROR:Lcom/avira/android/securebrowsing/c/o;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/avira/android/securebrowsing/c/p;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 1316
    :cond_5
    add-int/lit8 v3, v2, 0x1

    .line 1317
    :try_start_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1318
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1319
    :goto_4
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 1321
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1322
    const/4 v6, -0x1

    if-eq v1, v6, :cond_6

    .line 1324
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    :cond_6
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1329
    :cond_7
    if-eqz v2, :cond_12

    .line 1331
    const-string v1, "content-disposition"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1332
    if-nez v1, :cond_8

    .line 1334
    new-instance v1, Lcom/avira/android/securebrowsing/c/p;

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->BAD_REQUEST:Lcom/avira/android/securebrowsing/c/o;

    const-string v3, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    invoke-direct {v1, v2, v3}, Lcom/avira/android/securebrowsing/c/p;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;)V

    throw v1

    .line 1337
    :cond_8
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, "; "

    invoke-direct {v6, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1339
    :cond_9
    :goto_5
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1341
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1342
    const/16 v8, 0x3d

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 1343
    const/4 v9, -0x1

    if-eq v8, v9, :cond_9

    .line 1345
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1349
    :cond_a
    const-string v1, "name"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1350
    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1352
    const-string v1, ""

    .line 1353
    const-string v8, "content-type"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_d

    .line 1355
    :cond_b
    :goto_6
    if-eqz v2, :cond_10

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1357
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1358
    if-eqz v2, :cond_b

    .line 1360
    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1361
    const/4 v7, -0x1

    if-ne v5, v7, :cond_c

    .line 1363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1367
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v7, 0x0

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1374
    :cond_d
    array-length v1, v4

    if-le v3, v1, :cond_e

    .line 1376
    new-instance v1, Lcom/avira/android/securebrowsing/c/p;

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->INTERNAL_ERROR:Lcom/avira/android/securebrowsing/c/o;

    const-string v3, "Error processing request"

    invoke-direct {v1, v2, v3}, Lcom/avira/android/securebrowsing/c/p;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;)V

    throw v1

    .line 1378
    :cond_e
    add-int/lit8 v1, v3, -0x2

    aget v1, v4, v1

    invoke-static {p2, v1}, Lcom/avira/android/securebrowsing/c/k;->a(Ljava/nio/ByteBuffer;I)I

    move-result v1

    .line 1379
    add-int/lit8 v2, v3, -0x1

    aget v2, v4, v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x4

    invoke-direct {p0, p2, v1, v2}, Lcom/avira/android/securebrowsing/c/k;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    .line 1380
    move-object/from16 v0, p5

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    const-string v1, "filename"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1382
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1385
    :cond_f
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1386
    if-eqz v2, :cond_10

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_10
    move-object v11, v1

    move-object v1, v2

    move-object v2, v11

    .line 1388
    move-object/from16 v0, p4

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_7
    move v2, v3

    .line 1390
    goto/16 :goto_3

    .line 1396
    :cond_11
    return-void

    :cond_12
    move-object v1, v2

    goto :goto_7
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1522
    if-nez p1, :cond_1

    .line 1524
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->l:Ljava/lang/String;

    .line 1543
    :cond_0
    return-void

    .line 1528
    :cond_1
    iput-object p1, p0, Lcom/avira/android/securebrowsing/c/k;->l:Ljava/lang/String;

    .line 1529
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1532
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1533
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1534
    if-ltz v2, :cond_2

    .line 1536
    iget-object v3, p0, Lcom/avira/android/securebrowsing/c/k;->a:Lcom/avira/android/securebrowsing/c/a;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avira/android/securebrowsing/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avira/android/securebrowsing/c/k;->a:Lcom/avira/android/securebrowsing/c/a;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avira/android/securebrowsing/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1540
    :cond_2
    iget-object v2, p0, Lcom/avira/android/securebrowsing/c/k;->a:Lcom/avira/android/securebrowsing/c/a;

    invoke-static {v1}, Lcom/avira/android/securebrowsing/c/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private g()Ljava/io/RandomAccessFile;
    .locals 4

    .prologue
    .line 1490
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->b:Lcom/avira/android/securebrowsing/c/r;

    invoke-interface {v0}, Lcom/avira/android/securebrowsing/c/r;->a()Lcom/avira/android/securebrowsing/c/q;

    move-result-object v1

    .line 1491
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-interface {v1}, Lcom/avira/android/securebrowsing/c/q;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :goto_0
    return-object v0

    .line 1493
    :catch_0
    move-exception v0

    .line 1495
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1497
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 1014
    const/16 v0, 0x2000

    :try_start_0
    new-array v1, v0, [B

    .line 1015
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/securebrowsing/c/k;->e:I

    .line 1016
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/securebrowsing/c/k;->f:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/avira/android/securebrowsing/c/p; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1018
    :try_start_1
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->d:Ljava/io/PushbackInputStream;

    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/PushbackInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/avira/android/securebrowsing/c/p; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1029
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1032
    :try_start_2
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->d:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 1033
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->c:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 1034
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "NanoHttpd Shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/avira/android/securebrowsing/c/p; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1088
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1112
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->b:Lcom/avira/android/securebrowsing/c/r;

    invoke-interface {v1}, Lcom/avira/android/securebrowsing/c/r;->b()V

    throw v0

    .line 1025
    :catch_1
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->d:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 1026
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->c:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 1027
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "NanoHttpd Shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/avira/android/securebrowsing/c/p; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1093
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1036
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 1038
    :try_start_6
    iget v2, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    .line 1039
    iget v0, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    invoke-static {v1, v0}, Lcom/avira/android/securebrowsing/c/k;->a([BI)I

    move-result v0

    iput v0, p0, Lcom/avira/android/securebrowsing/c/k;->e:I

    .line 1040
    iget v0, p0, Lcom/avira/android/securebrowsing/c/k;->e:I

    if-gtz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->d:Ljava/io/PushbackInputStream;

    iget v2, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    iget v3, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    rsub-int v3, v3, 0x2000

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 1046
    :cond_1
    iget v0, p0, Lcom/avira/android/securebrowsing/c/k;->e:I

    iget v2, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    if-ge v0, v2, :cond_2

    .line 1048
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->d:Ljava/io/PushbackInputStream;

    iget v2, p0, Lcom/avira/android/securebrowsing/c/k;->e:I

    iget v3, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    iget v4, p0, Lcom/avira/android/securebrowsing/c/k;->e:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 1051
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->i:Ljava/util/Map;

    .line 1052
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->j:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 1054
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->j:Ljava/util/Map;

    .line 1058
    :cond_3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    iget v5, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    invoke-direct {v3, v1, v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1061
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1062
    iget-object v2, p0, Lcom/avira/android/securebrowsing/c/k;->i:Ljava/util/Map;

    iget-object v3, p0, Lcom/avira/android/securebrowsing/c/k;->j:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/avira/android/securebrowsing/c/k;->a(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 1064
    const-string v0, "method"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/m;->a(Ljava/lang/String;)Lcom/avira/android/securebrowsing/c/m;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->h:Lcom/avira/android/securebrowsing/c/m;

    .line 1065
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->h:Lcom/avira/android/securebrowsing/c/m;

    if-nez v0, :cond_4

    .line 1067
    new-instance v0, Lcom/avira/android/securebrowsing/c/p;

    sget-object v1, Lcom/avira/android/securebrowsing/c/o;->BAD_REQUEST:Lcom/avira/android/securebrowsing/c/o;

    const-string v2, "BAD REQUEST: Syntax error."

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/c/p;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/avira/android/securebrowsing/c/p; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1097
    :catch_3
    move-exception v0

    .line 1099
    :try_start_7
    new-instance v1, Lcom/avira/android/securebrowsing/c/n;

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->INTERNAL_ERROR:Lcom/avira/android/securebrowsing/c/o;

    const-string v3, "text/plain"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/avira/android/securebrowsing/c/n;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->c:Ljava/io/OutputStream;

    invoke-static {v1, v0}, Lcom/avira/android/securebrowsing/c/n;->a(Lcom/avira/android/securebrowsing/c/n;Ljava/io/OutputStream;)V

    .line 1102
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->c:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1112
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->b:Lcom/avira/android/securebrowsing/c/r;

    :goto_1
    invoke-interface {v0}, Lcom/avira/android/securebrowsing/c/r;->b()V

    .line 1113
    return-void

    .line 1070
    :cond_4
    :try_start_8
    const-string v0, "uri"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->g:Ljava/lang/String;

    .line 1072
    new-instance v0, Lcom/avira/android/securebrowsing/c/f;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->a:Lcom/avira/android/securebrowsing/c/a;

    iget-object v2, p0, Lcom/avira/android/securebrowsing/c/k;->j:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/c/f;-><init>(Lcom/avira/android/securebrowsing/c/a;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->k:Lcom/avira/android/securebrowsing/c/f;

    .line 1075
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->a:Lcom/avira/android/securebrowsing/c/a;

    invoke-virtual {v0, p0}, Lcom/avira/android/securebrowsing/c/a;->a(Lcom/avira/android/securebrowsing/c/l;)Lcom/avira/android/securebrowsing/c/n;

    move-result-object v0

    .line 1076
    if-nez v0, :cond_5

    .line 1078
    new-instance v0, Lcom/avira/android/securebrowsing/c/p;

    sget-object v1, Lcom/avira/android/securebrowsing/c/o;->INTERNAL_ERROR:Lcom/avira/android/securebrowsing/c/o;

    const-string v2, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/c/p;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/avira/android/securebrowsing/c/p; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1104
    :catch_4
    move-exception v0

    .line 1106
    :try_start_9
    new-instance v1, Lcom/avira/android/securebrowsing/c/n;

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/c/p;->a()Lcom/avira/android/securebrowsing/c/o;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/c/p;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/avira/android/securebrowsing/c/n;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->c:Ljava/io/OutputStream;

    invoke-static {v1, v0}, Lcom/avira/android/securebrowsing/c/n;->a(Lcom/avira/android/securebrowsing/c/n;Ljava/io/OutputStream;)V

    .line 1108
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->c:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1112
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->b:Lcom/avira/android/securebrowsing/c/r;

    goto :goto_1

    .line 1083
    :cond_5
    :try_start_a
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->k:Lcom/avira/android/securebrowsing/c/f;

    invoke-virtual {v1, v0}, Lcom/avira/android/securebrowsing/c/f;->a(Lcom/avira/android/securebrowsing/c/n;)V

    .line 1084
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->h:Lcom/avira/android/securebrowsing/c/m;

    invoke-virtual {v0, v1}, Lcom/avira/android/securebrowsing/c/n;->a(Lcom/avira/android/securebrowsing/c/m;)V

    .line 1085
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->c:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/avira/android/securebrowsing/c/n;->a(Lcom/avira/android/securebrowsing/c/n;Ljava/io/OutputStream;)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/avira/android/securebrowsing/c/p; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1112
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->b:Lcom/avira/android/securebrowsing/c/r;

    goto :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 1119
    .line 1124
    :try_start_0
    invoke-direct {p0}, Lcom/avira/android/securebrowsing/c/k;->g()Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v7

    .line 1127
    :try_start_1
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->j:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->j:Ljava/util/Map;

    const-string v1, "content-length"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 1141
    :goto_0
    const/16 v4, 0x200

    new-array v4, v4, [B

    .line 1142
    :cond_0
    :goto_1
    iget v5, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    if-ltz v5, :cond_3

    cmp-long v5, v0, v2

    if-lez v5, :cond_3

    .line 1144
    iget-object v5, p0, Lcom/avira/android/securebrowsing/c/k;->d:Ljava/io/PushbackInputStream;

    const/4 v8, 0x0

    const-wide/16 v10, 0x200

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v9, v10

    invoke-virtual {v5, v4, v8, v9}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v5

    iput v5, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    .line 1145
    iget v5, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    int-to-long v8, v5

    sub-long/2addr v0, v8

    .line 1146
    iget v5, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    if-lez v5, :cond_0

    .line 1148
    const/4 v5, 0x0

    iget v8, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    invoke-virtual {v7, v4, v5, v8}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1222
    :catchall_0
    move-exception v0

    move-object v3, v6

    move-object v6, v7

    :goto_2
    invoke-static {v6}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 1223
    invoke-static {v3}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 1222
    throw v0

    .line 1131
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/avira/android/securebrowsing/c/k;->e:I

    iget v1, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    if-ge v0, v1, :cond_2

    .line 1133
    iget v0, p0, Lcom/avira/android/securebrowsing/c/k;->f:I

    iget v1, p0, Lcom/avira/android/securebrowsing/c/k;->e:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 1137
    goto :goto_0

    .line 1153
    :cond_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 1155
    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1158
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1159
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1163
    :try_start_3
    sget-object v0, Lcom/avira/android/securebrowsing/c/m;->POST:Lcom/avira/android/securebrowsing/c/m;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->h:Lcom/avira/android/securebrowsing/c/m;

    invoke-virtual {v0, v1}, Lcom/avira/android/securebrowsing/c/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1165
    const-string v1, ""

    .line 1166
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->j:Ljava/util/Map;

    const-string v4, "content-type"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1169
    if-eqz v0, :cond_4

    .line 1171
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v4, ",; "

    invoke-direct {v6, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1174
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1178
    :cond_4
    const-string v4, "multipart/form-data"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1181
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1183
    new-instance v0, Lcom/avira/android/securebrowsing/c/p;

    sget-object v1, Lcom/avira/android/securebrowsing/c/o;->BAD_REQUEST:Lcom/avira/android/securebrowsing/c/o;

    const-string v2, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/c/p;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;)V

    throw v0

    .line 1222
    :catchall_1
    move-exception v0

    move-object v6, v7

    goto/16 :goto_2

    .line 1187
    :cond_5
    const-string v1, "boundary="

    .line 1188
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    .line 1190
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1191
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1193
    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1196
    :cond_6
    iget-object v4, p0, Lcom/avira/android/securebrowsing/c/k;->i:Ljava/util/Map;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/avira/android/securebrowsing/c/k;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1222
    :cond_7
    :goto_3
    invoke-static {v7}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 1223
    invoke-static {v3}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    .line 1224
    return-void

    .line 1201
    :cond_8
    :try_start_4
    const-string v0, ""

    .line 1202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1203
    const/16 v1, 0x200

    new-array v4, v1, [C

    .line 1204
    invoke-virtual {v3, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    .line 1205
    :goto_4
    if-ltz v1, :cond_9

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1207
    const/4 v0, 0x0

    invoke-static {v4, v0, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 1208
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    invoke-virtual {v3, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    goto :goto_4

    .line 1211
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1212
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->i:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/avira/android/securebrowsing/c/k;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 1215
    :cond_a
    sget-object v0, Lcom/avira/android/securebrowsing/c/m;->PUT:Lcom/avira/android/securebrowsing/c/m;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/k;->h:Lcom/avira/android/securebrowsing/c/m;

    invoke-virtual {v0, v1}, Lcom/avira/android/securebrowsing/c/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1217
    const-string v0, "content"

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-direct {p0, v2, v1, v4}, Lcom/avira/android/securebrowsing/c/k;->a(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 1222
    :catchall_2
    move-exception v0

    move-object v3, v6

    goto/16 :goto_2
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->j:Ljava/util/Map;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/avira/android/securebrowsing/c/m;
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/k;->h:Lcom/avira/android/securebrowsing/c/m;

    return-object v0
.end method
