.class final Lcom/facebook/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bm;


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Lcom/facebook/b/bv;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/b/bv;)V
    .locals 1

    .prologue
    .line 2176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/bp;->c:Z

    .line 2177
    iput-object p1, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    .line 2178
    iput-object p2, p0, Lcom/facebook/bp;->b:Lcom/facebook/b/bv;

    .line 2179
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 2304
    const-string v0, "--%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/bp;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2305
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2263
    if-nez p3, :cond_0

    .line 2264
    const-string p3, "content/unknown"

    .line 2266
    :cond_0
    invoke-direct {p0, p1, p1, p3}, Lcom/facebook/bp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    iget-object v0, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/bd;

    if-eqz v0, :cond_2

    .line 2272
    iget-object v0, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/bd;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/bd;->a(J)V

    move v0, v1

    .line 2296
    :goto_0
    const-string v2, ""

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/facebook/bp;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2297
    invoke-direct {p0}, Lcom/facebook/bp;->a()V

    .line 2298
    iget-object v2, p0, Lcom/facebook/bp;->b:Lcom/facebook/b/bv;

    if-eqz v2, :cond_1

    .line 2299
    iget-object v2, p0, Lcom/facebook/bp;->b:Lcom/facebook/b/bv;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<Data: %d>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/facebook/b/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2301
    :cond_1
    return-void

    .line 2278
    :cond_2
    :try_start_0
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2279
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2281
    const/16 v0, 0x2000

    :try_start_2
    new-array v3, v0, [B

    move v0, v1

    .line 2283
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 2284
    iget-object v6, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2285
    add-int/2addr v0, v5

    goto :goto_1

    .line 2288
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 2291
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    goto :goto_0

    .line 2288
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_4

    .line 2289
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 2291
    :cond_4
    if-eqz v3, :cond_5

    .line 2292
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    :cond_5
    throw v0

    .line 2288
    :catchall_1
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2308
    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/facebook/bp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2309
    if-eqz p2, :cond_0

    .line 2310
    const-string v0, "; filename=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/facebook/bp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2312
    :cond_0
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/bp;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2313
    if-eqz p3, :cond_1

    .line 2314
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Content-Type"

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/facebook/bp;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2316
    :cond_1
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/bp;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2317
    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2320
    iget-boolean v0, p0, Lcom/facebook/bp;->c:Z

    if-eqz v0, :cond_0

    .line 2322
    iget-object v0, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2323
    iget-object v0, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2324
    iget-object v0, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/bp;->c:Z

    .line 2327
    :cond_0
    iget-object v0, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2328
    return-void
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2331
    invoke-direct {p0, p1, p2}, Lcom/facebook/bp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2332
    const-string v0, "\r\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/bp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2333
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2182
    iget-object v0, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/bu;

    if-eqz v0, :cond_0

    .line 2183
    iget-object v0, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/bu;

    invoke-interface {v0, p3}, Lcom/facebook/bu;->a(Lcom/facebook/Request;)V

    .line 2186
    :cond_0
    invoke-static {p2}, Lcom/facebook/Request;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2187
    invoke-static {p2}, Lcom/facebook/Request;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/bp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    :cond_1
    :goto_0
    return-void

    .line 2188
    :cond_2
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 2189
    check-cast p2, Landroid/graphics/Bitmap;

    const-string v0, "image/png"

    invoke-direct {p0, p1, p1, v0}, Lcom/facebook/bp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v0, ""

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/bp;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/facebook/bp;->a()V

    iget-object v0, p0, Lcom/facebook/bp;->b:Lcom/facebook/b/bv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/bp;->b:Lcom/facebook/b/bv;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/b/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2190
    :cond_3
    instance-of v0, p2, [B

    if-eqz v0, :cond_4

    .line 2191
    check-cast p2, [B

    const-string v0, "content/unknown"

    invoke-direct {p0, p1, p1, v0}, Lcom/facebook/bp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    const-string v0, ""

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/bp;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/facebook/bp;->a()V

    iget-object v0, p0, Lcom/facebook/bp;->b:Lcom/facebook/b/bv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/bp;->b:Lcom/facebook/b/bv;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Data: %d>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/b/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2192
    :cond_4
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_5

    .line 2193
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/bp;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2194
    :cond_5
    instance-of v0, p2, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    if-eqz v0, :cond_6

    .line 2195
    check-cast p2, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    invoke-virtual {p2}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/bp;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2197
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a supported type: String, Bitmap, byte[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2229
    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/bp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/bp;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2231
    invoke-direct {p0}, Lcom/facebook/bp;->a()V

    .line 2232
    iget-object v0, p0, Lcom/facebook/bp;->b:Lcom/facebook/b/bv;

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lcom/facebook/bp;->b:Lcom/facebook/b/bv;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/b/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2235
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2203
    iget-object v0, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/bu;

    if-nez v0, :cond_1

    .line 2204
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/bp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    :cond_0
    :goto_0
    return-void

    .line 2208
    :cond_1
    iget-object v0, p0, Lcom/facebook/bp;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/bu;

    .line 2209
    invoke-direct {p0, p1, v1, v1}, Lcom/facebook/bp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    const-string v1, "["

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/facebook/bp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2212
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Request;

    .line 2213
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2214
    invoke-interface {v0, v1}, Lcom/facebook/bu;->a(Lcom/facebook/Request;)V

    .line 2215
    if-lez v2, :cond_2

    .line 2216
    const-string v1, ",%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-direct {p0, v1, v6}, Lcom/facebook/bp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2220
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 2221
    goto :goto_1

    .line 2218
    :cond_2
    const-string v1, "%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-direct {p0, v1, v6}, Lcom/facebook/bp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2222
    :cond_3
    const-string v0, "]"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/bp;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2223
    iget-object v0, p0, Lcom/facebook/bp;->b:Lcom/facebook/b/bv;

    if-eqz v0, :cond_0

    .line 2224
    iget-object v0, p0, Lcom/facebook/bp;->b:Lcom/facebook/b/bv;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/b/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
