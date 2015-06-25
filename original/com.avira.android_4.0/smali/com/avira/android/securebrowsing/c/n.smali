.class public final Lcom/avira/android/securebrowsing/c/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/avira/android/securebrowsing/c/o;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/InputStream;

.field private d:Ljava/util/Map;
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

.field private e:Lcom/avira/android/securebrowsing/c/m;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/n;->d:Ljava/util/Map;

    .line 702
    iput-object p1, p0, Lcom/avira/android/securebrowsing/c/n;->a:Lcom/avira/android/securebrowsing/c/o;

    .line 703
    iput-object p2, p0, Lcom/avira/android/securebrowsing/c/n;->b:Ljava/lang/String;

    .line 706
    if-eqz p3, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "UTF-8"

    invoke-virtual {p3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/n;->c:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_1
    return-void

    .line 706
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 684
    sget-object v0, Lcom/avira/android/securebrowsing/c/o;->OK:Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "text/html"

    invoke-direct {p0, v0, v1, p1}, Lcom/avira/android/securebrowsing/c/n;-><init>(Lcom/avira/android/securebrowsing/c/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method static synthetic a(Lcom/avira/android/securebrowsing/c/n;Ljava/io/OutputStream;)V
    .locals 6

    .prologue
    .line 652
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/n;->b:Ljava/lang/String;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_0
    iget-object v3, p0, Lcom/avira/android/securebrowsing/c/n;->a:Lcom/avira/android/securebrowsing/c/o;

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/Error;

    const-string v2, "sendResponse(): Status can\'t be null."

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HTTP/1.1 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/avira/android/securebrowsing/c/n;->a:Lcom/avira/android/securebrowsing/c/o;

    invoke-virtual {v5}, Lcom/avira/android/securebrowsing/c/o;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content-Type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/n;->d:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/n;->d:Ljava/util/Map;

    const-string v4, "Date"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Date: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/n;->d:Ljava/util/Map;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/n;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/n;->d:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "Connection: keep-alive\r\n"

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/n;->e:Lcom/avira/android/securebrowsing/c/m;

    sget-object v2, Lcom/avira/android/securebrowsing/c/m;->HEAD:Lcom/avira/android/securebrowsing/c/m;

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/avira/android/securebrowsing/c/n;->f:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, v3}, Lcom/avira/android/securebrowsing/c/n;->a(Ljava/io/OutputStream;Ljava/io/PrintWriter;)V

    :goto_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/n;->c:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, p1, v3}, Lcom/avira/android/securebrowsing/c/n;->b(Ljava/io/OutputStream;Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private a(Ljava/io/OutputStream;Ljava/io/PrintWriter;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 780
    const-string v0, "Transfer-Encoding: chunked\r\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 781
    const-string v0, "\r\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 783
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 785
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 787
    :goto_0
    iget-object v2, p0, Lcom/avira/android/securebrowsing/c/n;->c:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 789
    const-string v3, "%x\r\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 790
    invoke-virtual {p1, v1, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 791
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 793
    :cond_0
    const-string v0, "0\r\n\r\n"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 794
    return-void
.end method

.method private b(Ljava/io/OutputStream;Ljava/io/PrintWriter;)V
    .locals 6

    .prologue
    const/16 v2, 0x4000

    const/4 v1, 0x0

    .line 798
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/n;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/n;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 799
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Content-Length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 801
    const-string v3, "\r\n"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 804
    iget-object v3, p0, Lcom/avira/android/securebrowsing/c/n;->e:Lcom/avira/android/securebrowsing/c/m;

    sget-object v4, Lcom/avira/android/securebrowsing/c/m;->HEAD:Lcom/avira/android/securebrowsing/c/m;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/avira/android/securebrowsing/c/n;->c:Ljava/io/InputStream;

    if-eqz v3, :cond_2

    .line 806
    new-array v4, v2, [B

    move v3, v0

    .line 808
    :goto_1
    if-lez v3, :cond_2

    .line 810
    iget-object v5, p0, Lcom/avira/android/securebrowsing/c/n;->c:Ljava/io/InputStream;

    if-le v3, v2, :cond_1

    move v0, v2

    :goto_2
    invoke-virtual {v5, v4, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 811
    if-lez v0, :cond_2

    .line 813
    invoke-virtual {p1, v4, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 817
    sub-int/2addr v3, v0

    .line 818
    goto :goto_1

    :cond_0
    move v0, v1

    .line 798
    goto :goto_0

    :cond_1
    move v0, v3

    .line 810
    goto :goto_2

    .line 820
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/securebrowsing/c/m;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lcom/avira/android/securebrowsing/c/n;->e:Lcom/avira/android/securebrowsing/c/m;

    .line 860
    return-void
.end method

.method public final a(Lcom/avira/android/securebrowsing/c/o;)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/avira/android/securebrowsing/c/n;->a:Lcom/avira/android/securebrowsing/c/o;

    .line 830
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/n;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    return-void
.end method
