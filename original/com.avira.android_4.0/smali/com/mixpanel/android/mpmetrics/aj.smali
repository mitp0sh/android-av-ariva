.class final Lcom/mixpanel/android/mpmetrics/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Lcom/mixpanel/android/mpmetrics/ak;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/mixpanel/android/mpmetrics/ak;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 120
    sget-object v11, Lcom/mixpanel/android/mpmetrics/al;->FAILED_UNRECOVERABLE:Lcom/mixpanel/android/mpmetrics/al;

    move v3, v2

    move-object v8, v6

    .line 129
    :goto_0
    const/4 v0, 0x3

    if-ge v3, v0, :cond_c

    if-nez v2, :cond_c

    .line 137
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 141
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v7, p1, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 142
    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 144
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v5

    .line 145
    :try_start_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 146
    :try_start_3
    invoke-virtual {v7, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 147
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 149
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_11
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 152
    :cond_0
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_10
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v7

    .line 153
    :try_start_6
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_13
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 154
    :try_start_7
    invoke-static {v7}, Lcom/mixpanel/android/a/b;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_14
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-result-object v4

    .line 155
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_15
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 157
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 164
    if-eqz v0, :cond_d

    .line 173
    :try_start_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_3

    move v2, v1

    move-object v8, v4

    goto :goto_0

    .line 160
    :catch_0
    move-exception v5

    move-object v5, v0

    move-object v8, v6

    move-object v9, v6

    move-object v10, v7

    move-object v7, v6

    .line 162
    :goto_1
    add-int/lit8 v0, v3, 0x1

    .line 164
    if-eqz v7, :cond_1

    .line 165
    :try_start_b
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_3

    .line 166
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    .line 167
    :try_start_c
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_3

    .line 168
    :cond_2
    :goto_3
    if-eqz v9, :cond_3

    .line 169
    :try_start_d
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_3

    .line 170
    :cond_3
    :goto_4
    if-eqz v10, :cond_4

    .line 171
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_3

    .line 172
    :cond_4
    :goto_5
    if-eqz v5, :cond_b

    .line 173
    :try_start_f
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_3

    move v3, v0

    move-object v8, v4

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v1

    move-object v5, v6

    move-object v8, v4

    move-object v4, v6

    move-object v12, v1

    move-object v1, v6

    move-object v6, v0

    move-object v0, v12

    :goto_6
    if-eqz v4, :cond_5

    .line 165
    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_c

    .line 166
    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    .line 167
    :try_start_11
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_c

    .line 168
    :cond_6
    :goto_8
    if-eqz v1, :cond_7

    .line 169
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_c

    .line 170
    :cond_7
    :goto_9
    if-eqz v7, :cond_8

    .line 171
    :try_start_13
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_c

    .line 172
    :cond_8
    :goto_a
    if-eqz v6, :cond_9

    .line 173
    :try_start_14
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    throw v0
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_c

    .line 176
    :catch_1
    move-exception v0

    move-object v4, v8

    .line 177
    :goto_b
    const-string v1, "MixpanelAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot iterpret "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as a URL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    sget-object v0, Lcom/mixpanel/android/mpmetrics/al;->FAILED_UNRECOVERABLE:Lcom/mixpanel/android/mpmetrics/al;

    .line 187
    :goto_c
    if-eqz v4, :cond_a

    .line 188
    sget-object v0, Lcom/mixpanel/android/mpmetrics/al;->SUCCEEDED:Lcom/mixpanel/android/mpmetrics/al;

    .line 192
    :cond_a
    new-instance v1, Lcom/mixpanel/android/mpmetrics/ak;

    invoke-direct {v1, v0, v4}, Lcom/mixpanel/android/mpmetrics/ak;-><init>(Lcom/mixpanel/android/mpmetrics/al;Ljava/lang/String;)V

    return-object v1

    :cond_b
    move-object v3, v4

    move v12, v0

    move v0, v2

    move v2, v12

    :goto_d
    move-object v8, v3

    move v3, v2

    move v2, v0

    .line 175
    goto/16 :goto_0

    :cond_c
    move-object v4, v8

    move-object v0, v11

    .line 185
    goto :goto_c

    .line 181
    :catch_2
    move-exception v0

    :goto_e
    sget-object v0, Lcom/mixpanel/android/mpmetrics/al;->FAILED_RECOVERABLE:Lcom/mixpanel/android/mpmetrics/al;

    goto :goto_c

    .line 182
    :catch_3
    move-exception v0

    .line 183
    :goto_f
    const-string v1, "MixpanelAPI"

    const-string v2, "Cannot post message to Mixpanel Servers, will not retry."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    sget-object v0, Lcom/mixpanel/android/mpmetrics/al;->FAILED_UNRECOVERABLE:Lcom/mixpanel/android/mpmetrics/al;

    goto :goto_c

    :catch_4
    move-exception v3

    goto :goto_2

    :catch_5
    move-exception v3

    goto :goto_3

    :catch_6
    move-exception v3

    goto :goto_4

    :catch_7
    move-exception v3

    goto :goto_5

    :catch_8
    move-exception v2

    goto :goto_7

    :catch_9
    move-exception v2

    goto :goto_8

    :catch_a
    move-exception v1

    goto :goto_9

    :catch_b
    move-exception v1

    goto :goto_a

    .line 182
    :catch_c
    move-exception v0

    move-object v4, v8

    goto :goto_f

    .line 181
    :catch_d
    move-exception v0

    move-object v4, v8

    goto :goto_e

    .line 176
    :catch_e
    move-exception v0

    goto :goto_b

    .line 164
    :catchall_1
    move-exception v0

    move-object v4, v6

    move-object v5, v6

    move-object v1, v6

    move-object v7, v6

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v4, v6

    move-object v5, v6

    move-object v7, v6

    move-object v12, v0

    move-object v0, v1

    move-object v1, v6

    move-object v6, v12

    goto/16 :goto_6

    :catchall_3
    move-exception v1

    move-object v4, v6

    move-object v7, v6

    move-object v12, v1

    move-object v1, v6

    move-object v6, v0

    move-object v0, v12

    goto/16 :goto_6

    :catchall_4
    move-exception v1

    move-object v7, v6

    move-object v12, v0

    move-object v0, v1

    move-object v1, v6

    move-object v6, v12

    goto/16 :goto_6

    :catchall_5
    move-exception v1

    move-object v4, v6

    move-object v5, v6

    move-object v12, v1

    move-object v1, v6

    move-object v6, v0

    move-object v0, v12

    goto/16 :goto_6

    :catchall_6
    move-exception v1

    move-object v4, v6

    move-object v12, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v12

    goto/16 :goto_6

    :catchall_7
    move-exception v1

    move-object v8, v4

    move-object v4, v6

    move-object v12, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v12

    goto/16 :goto_6

    .line 160
    :catch_f
    move-exception v0

    move-object v5, v6

    move-object v7, v6

    move-object v9, v6

    move-object v10, v6

    move-object v4, v8

    move-object v8, v6

    goto/16 :goto_1

    :catch_10
    move-exception v4

    move-object v5, v0

    move-object v7, v6

    move-object v9, v6

    move-object v10, v6

    move-object v4, v8

    move-object v8, v6

    goto/16 :goto_1

    :catch_11
    move-exception v4

    move-object v7, v6

    move-object v9, v6

    move-object v10, v6

    move-object v4, v8

    move-object v8, v5

    move-object v5, v0

    goto/16 :goto_1

    :catch_12
    move-exception v7

    move-object v7, v4

    move-object v9, v6

    move-object v10, v6

    move-object v4, v8

    move-object v8, v5

    move-object v5, v0

    goto/16 :goto_1

    :catch_13
    move-exception v4

    move-object v5, v0

    move-object v9, v6

    move-object v10, v7

    move-object v4, v8

    move-object v8, v6

    move-object v7, v6

    goto/16 :goto_1

    :catch_14
    move-exception v4

    move-object v9, v5

    move-object v10, v7

    move-object v4, v8

    move-object v5, v0

    move-object v7, v6

    move-object v8, v6

    goto/16 :goto_1

    :catch_15
    move-exception v8

    move-object v8, v6

    move-object v9, v5

    move-object v10, v7

    move-object v7, v6

    move-object v5, v0

    goto/16 :goto_1

    :cond_d
    move v0, v1

    move v2, v3

    move-object v3, v4

    goto/16 :goto_d
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/ak;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-static {p1, v3}, Lcom/mixpanel/android/mpmetrics/aj;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mixpanel/android/mpmetrics/ak;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ak;->a()Lcom/mixpanel/android/mpmetrics/al;

    move-result-object v1

    sget-object v2, Lcom/mixpanel/android/mpmetrics/al;->FAILED_RECOVERABLE:Lcom/mixpanel/android/mpmetrics/al;

    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p0, p2, v3}, Lcom/mixpanel/android/mpmetrics/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/ak;

    move-result-object v0

    .line 110
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/ak;
    .locals 5

    .prologue
    .line 60
    sget-object v0, Lcom/mixpanel/android/mpmetrics/al;->FAILED_UNRECOVERABLE:Lcom/mixpanel/android/mpmetrics/al;

    .line 61
    invoke-static {p1}, Lcom/mixpanel/android/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "data"

    invoke-direct {v3, v4, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {p2, v2}, Lcom/mixpanel/android/mpmetrics/aj;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mixpanel/android/mpmetrics/ak;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/ak;->a()Lcom/mixpanel/android/mpmetrics/al;

    move-result-object v2

    .line 71
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/ak;->b()Ljava/lang/String;

    move-result-object v1

    .line 72
    sget-object v3, Lcom/mixpanel/android/mpmetrics/al;->SUCCEEDED:Lcom/mixpanel/android/mpmetrics/al;

    if-ne v2, v3, :cond_0

    .line 85
    const-string v3, "1\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    sget-object v0, Lcom/mixpanel/android/mpmetrics/al;->SUCCEEDED:Lcom/mixpanel/android/mpmetrics/al;

    .line 90
    :cond_0
    sget-object v3, Lcom/mixpanel/android/mpmetrics/al;->FAILED_RECOVERABLE:Lcom/mixpanel/android/mpmetrics/al;

    if-ne v2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p3, v1}, Lcom/mixpanel/android/mpmetrics/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/ak;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/ak;->a()Lcom/mixpanel/android/mpmetrics/al;

    move-result-object v2

    .line 94
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/ak;->b()Ljava/lang/String;

    move-result-object v1

    .line 95
    sget-object v3, Lcom/mixpanel/android/mpmetrics/al;->SUCCEEDED:Lcom/mixpanel/android/mpmetrics/al;

    if-eq v2, v3, :cond_2

    .line 96
    const-string v2, "MixpanelAPI"

    const-string v3, "Could not post data to Mixpanel"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    :goto_0
    new-instance v2, Lcom/mixpanel/android/mpmetrics/ak;

    invoke-direct {v2, v0, v1}, Lcom/mixpanel/android/mpmetrics/ak;-><init>(Lcom/mixpanel/android/mpmetrics/al;Ljava/lang/String;)V

    return-object v2

    .line 98
    :cond_2
    sget-object v0, Lcom/mixpanel/android/mpmetrics/al;->SUCCEEDED:Lcom/mixpanel/android/mpmetrics/al;

    goto :goto_0
.end method
