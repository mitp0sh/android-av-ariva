.class public final Lcom/avira/android/utilities/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;)J
    .locals 9

    .prologue
    .line 39
    const-wide/16 v2, 0x0

    .line 40
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    invoke-static {v3}, Lcom/avira/android/utilities/h;->a(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 40
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1

    .line 47
    :cond_1
    return-wide v0
.end method
