.class final Lcom/facebook/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "buffer"

.field private static final filterExcludeBufferFiles:Ljava/io/FilenameFilter;

.field private static final filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 320
    new-instance v0, Lcom/facebook/b/t;

    invoke-direct {v0}, Lcom/facebook/b/t;-><init>()V

    sput-object v0, Lcom/facebook/b/s;->filterExcludeBufferFiles:Ljava/io/FilenameFilter;

    .line 326
    new-instance v0, Lcom/facebook/b/u;

    invoke-direct {v0}, Lcom/facebook/b/u;-><init>()V

    sput-object v0, Lcom/facebook/b/s;->filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;

    return-void
.end method

.method static a()Ljava/io/FilenameFilter;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/facebook/b/s;->filterExcludeBufferFiles:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method static a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 334
    sget-object v0, Lcom/facebook/b/s;->filterExcludeNonBufferFiles:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_0

    .line 336
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 337
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method static b(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/b/o;->b()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
