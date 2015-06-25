.class public final Lcom/avira/android/utilities/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ARCHIVED_FILENAME:Ljava/lang/String; = "archived.zip"

.field private static final LOGFILE_HOUSE_KEEPING_SIZE:J = 0x2800L

.field private static final LOGFILE_THRESHOLD:J = 0x200000L

.field private static final LOGGING_FORMAT:Ljava/lang/String; = "%s - %s"

.field private static final TAG:Ljava/lang/String; = "Avira Mobile Security"

.field private static a:Lcom/avira/android/utilities/t;

.field private static b:Ljava/io/File;

.field private static c:Ljava/io/File;

.field private static h:Ljava/io/FilenameFilter;


# instance fields
.field private d:Ljava/io/FileWriter;

.field private e:Ljava/io/StringWriter;

.field private f:Ljava/io/PrintWriter;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/android/utilities/t;->a:Lcom/avira/android/utilities/t;

    .line 52
    new-instance v0, Lcom/avira/android/utilities/u;

    invoke-direct {v0}, Lcom/avira/android/utilities/u;-><init>()V

    sput-object v0, Lcom/avira/android/utilities/t;->h:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/utilities/t;->g:Z

    .line 232
    return-void
.end method

.method public static declared-synchronized a()Ljava/io/File;
    .locals 4

    .prologue
    .line 121
    const-class v1, Lcom/avira/android/utilities/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/utilities/t;->c:Ljava/io/File;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avira/android/ApplicationService;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/archived/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    sput-object v0, Lcom/avira/android/utilities/t;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/avira/android/utilities/t;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 129
    :cond_0
    sget-object v0, Lcom/avira/android/utilities/t;->c:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 175
    iget-boolean v0, p0, Lcom/avira/android/utilities/t;->g:Z

    if-eqz v0, :cond_3

    .line 179
    :try_start_0
    invoke-direct {p0}, Lcom/avira/android/utilities/t;->d()Ljava/io/FileWriter;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 181
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 182
    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    invoke-static {}, Lcom/avira/android/utilities/t;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move-wide v4, v2

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v4, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-wide/32 v6, 0x200000

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/avira/android/utilities/t;->e()Ljava/io/File;

    move-result-object v0

    sget-object v5, Lcom/avira/android/utilities/t;->h:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Lcom/avira/android/utilities/w;

    invoke-direct {v0}, Lcom/avira/android/utilities/w;-><init>()V

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v6, v5

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    const-wide/16 v8, 0x2800

    cmp-long v8, v2, v8

    if-gez v8, :cond_1

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/avira/android/utilities/t;->a()Ljava/io/File;

    move-result-object v0

    new-instance v2, Lcom/avira/android/utilities/v;

    invoke-direct {v2}, Lcom/avira/android/utilities/v;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_3

    aget-object v1, v2, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 190
    :cond_3
    return-void

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 392
    invoke-static {p0, p1}, Lcom/avira/android/utilities/t;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    sget-boolean v0, Lcom/avira/android/debug/f;->ENABLED:Z

    .line 395
    return-void
.end method

.method public static declared-synchronized b()Lcom/avira/android/utilities/t;
    .locals 2

    .prologue
    .line 222
    const-class v1, Lcom/avira/android/utilities/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/utilities/t;->a:Lcom/avira/android/utilities/t;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/avira/android/utilities/t;

    invoke-direct {v0}, Lcom/avira/android/utilities/t;-><init>()V

    sput-object v0, Lcom/avira/android/utilities/t;->a:Lcom/avira/android/utilities/t;

    .line 226
    :cond_0
    sget-object v0, Lcom/avira/android/utilities/t;->a:Lcom/avira/android/utilities/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 408
    invoke-static {p0, p1}, Lcom/avira/android/utilities/t;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    sget-boolean v0, Lcom/avira/android/debug/f;->ENABLED:Z

    .line 411
    return-void
.end method

.method public static c()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avira/android/utilities/t;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/archived.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {}, Lcom/avira/android/utilities/t;->e()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/avira/android/utilities/t;->h:Ljava/io/FilenameFilter;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 347
    array-length v3, v2

    if-lez v3, :cond_0

    .line 352
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 353
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 355
    const/16 v3, 0x800

    new-array v3, v3, [B

    .line 357
    array-length v4, v2

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v2, v0

    .line 359
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 360
    new-instance v7, Ljava/io/BufferedInputStream;

    const/16 v8, 0x800

    invoke-direct {v7, v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 361
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 365
    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-virtual {v7, v3, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 367
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 374
    :catch_0
    move-exception v0

    .line 376
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "Logger.getArchivedErrorLog"

    const-string v3, "IOException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    :cond_0
    :goto_2
    return-void

    .line 369
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 372
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 378
    :catch_1
    move-exception v0

    .line 380
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "Logger.getArchivedErrorLog"

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private d()Ljava/io/FileWriter;
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/avira/android/utilities/t;->d:Ljava/io/FileWriter;

    if-nez v0, :cond_0

    .line 75
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMMyyyy-HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 76
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const v2, 0x7f0800ac

    invoke-virtual {v1, v2}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/avira/android/utilities/t;->e()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/avira/android/utilities/t;->d:Ljava/io/FileWriter;

    .line 82
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/avira/android/utilities/t;->e:Ljava/io/StringWriter;

    .line 83
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/avira/android/utilities/t;->e:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/avira/android/utilities/t;->f:Ljava/io/PrintWriter;

    .line 85
    iget-object v0, p0, Lcom/avira/android/utilities/t;->d:Ljava/io/FileWriter;

    invoke-static {}, Lcom/avira/android/debug/f;->a()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 86
    iget-object v0, p0, Lcom/avira/android/utilities/t;->d:Ljava/io/FileWriter;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avira/android/utilities/t;->d:Ljava/io/FileWriter;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 456
    invoke-static {p0, p1}, Lcom/avira/android/utilities/t;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    return-void
.end method

.method private static declared-synchronized e()Ljava/io/File;
    .locals 4

    .prologue
    .line 103
    const-class v1, Lcom/avira/android/utilities/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/utilities/t;->b:Ljava/io/File;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avira/android/ApplicationService;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/dump/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    sput-object v0, Lcom/avira/android/utilities/t;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lcom/avira/android/utilities/t;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 111
    :cond_0
    sget-object v0, Lcom/avira/android/utilities/t;->b:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 483
    invoke-static {p0, p1}, Lcom/avira/android/utilities/t;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 509
    sget-boolean v0, Lcom/avira/android/debug/f;->ENABLED:Z

    if-nez v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 514
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/aviraDebug"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 516
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 520
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 521
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 522
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    .line 161
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 163
    const-string v0, "%s - %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 165
    :cond_0
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 436
    if-eqz p3, :cond_1

    .line 439
    invoke-static {p1, p2}, Lcom/avira/android/utilities/t;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    sget-boolean v1, Lcom/avira/android/debug/f;->ENABLED:Z

    if-eqz v1, :cond_0

    .line 442
    const-string v1, "Avira Mobile Security"

    invoke-static {v1, v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    :cond_0
    invoke-direct {p0, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;)V

    .line 445
    iget-boolean v0, p0, Lcom/avira/android/utilities/t;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/utilities/t;->f:Ljava/io/PrintWriter;

    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/avira/android/utilities/t;->e:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;)V

    .line 447
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 422
    invoke-static {p1, p2}, Lcom/avira/android/utilities/t;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    const-string v1, "Avira Mobile Security"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method protected final finalize()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/avira/android/utilities/t;->d:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/utilities/t;->d:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 205
    iget-object v0, p0, Lcom/avira/android/utilities/t;->d:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 213
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
