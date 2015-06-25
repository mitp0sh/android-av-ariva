.class public abstract Lio/fabric/sdk/android/services/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MAX_FILES_IN_BATCH:I = 0x1

.field public static final MAX_FILES_TO_KEEP:I = 0x64

.field public static final ROLL_OVER_FILE_NAME_SEPARATOR:Ljava/lang/String; = "_"


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final currentTimeProvider:Lio/fabric/sdk/android/services/b/r;

.field protected final eventStorage:Lio/fabric/sdk/android/services/c/l;

.field protected volatile lastRollOverTime:J

.field protected final maxFilesToKeep:I

.field protected final rollOverListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/fabric/sdk/android/services/c/m;",
            ">;"
        }
    .end annotation
.end field

.field protected final transform:Lio/fabric/sdk/android/services/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/c/c",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/c;Lio/fabric/sdk/android/services/b/r;Lio/fabric/sdk/android/services/c/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/c/c",
            "<TT;>;",
            "Lio/fabric/sdk/android/services/b/r;",
            "Lio/fabric/sdk/android/services/c/l;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/c/d;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/c;Lio/fabric/sdk/android/services/b/r;Lio/fabric/sdk/android/services/c/l;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/c;Lio/fabric/sdk/android/services/b/r;Lio/fabric/sdk/android/services/c/l;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/c/c",
            "<TT;>;",
            "Lio/fabric/sdk/android/services/b/r;",
            "Lio/fabric/sdk/android/services/c/l;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/c/d;->rollOverListeners:Ljava/util/List;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/c/d;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lio/fabric/sdk/android/services/c/d;->transform:Lio/fabric/sdk/android/services/c/c;

    .line 49
    iput-object p4, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    .line 50
    iput-object p3, p0, Lio/fabric/sdk/android/services/c/d;->currentTimeProvider:Lio/fabric/sdk/android/services/b/r;

    .line 52
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/d;->currentTimeProvider:Lio/fabric/sdk/android/services/b/r;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/b/r;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lio/fabric/sdk/android/services/c/d;->lastRollOverTime:J

    .line 54
    iput p5, p0, Lio/fabric/sdk/android/services/c/d;->maxFilesToKeep:I

    .line 55
    return-void
.end method

.method private rollFileOverIfNeeded(I)V
    .locals 5

    .prologue
    .line 113
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/c/d;->getMaxByteSizePerFile()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/fabric/sdk/android/services/c/l;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    invoke-interface {v4}, Lio/fabric/sdk/android/services/c/l;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/c/d;->getMaxByteSizePerFile()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lio/fabric/sdk/android/services/c/d;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/c/d;->rollFileOver()Z

    .line 124
    :cond_0
    return-void
.end method

.method private triggerRollOverOnListeners(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/d;->rollOverListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/c/m;

    .line 139
    :try_start_0
    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/c/m;->onRollOver(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/c/d;->context:Landroid/content/Context;

    const-string v2, "One of the roll over listeners threw an exception"

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteAllEventsFiles()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    iget-object v1, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/c/l;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/c/l;->a(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/l;->e()V

    .line 159
    return-void
.end method

.method public deleteOldestInRollOverIfOverMax()V
    .locals 8

    .prologue
    .line 162
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/l;->d()Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lio/fabric/sdk/android/services/c/d;->maxFilesToKeep:I

    if-gt v1, v2, :cond_0

    .line 194
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lio/fabric/sdk/android/services/c/d;->maxFilesToKeep:I

    sub-int/2addr v1, v2

    .line 168
    iget-object v2, p0, Lio/fabric/sdk/android/services/c/d;->context:Landroid/content/Context;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lio/fabric/sdk/android/services/c/d;->maxFilesToKeep:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Lio/fabric/sdk/android/services/b/l;->e(Landroid/content/Context;)V

    .line 173
    new-instance v2, Ljava/util/TreeSet;

    new-instance v3, Lio/fabric/sdk/android/services/c/e;

    invoke-direct {v3, p0}, Lio/fabric/sdk/android/services/c/e;-><init>(Lio/fabric/sdk/android/services/c/d;)V

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/fabric/sdk/android/services/c/d;->parseCreationTimestampFromFileName(Ljava/lang/String;)J

    move-result-wide v4

    .line 183
    new-instance v6, Lio/fabric/sdk/android/services/c/f;

    invoke-direct {v6, v0, v4, v5}, Lio/fabric/sdk/android/services/c/f;-><init>(Ljava/io/File;J)V

    invoke-virtual {v2, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/c/f;

    .line 188
    iget-object v0, v0, Lio/fabric/sdk/android/services/c/f;->a:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 191
    :cond_3
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    invoke-interface {v0, v3}, Lio/fabric/sdk/android/services/c/l;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public deleteSentFiles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/c/l;->a(Ljava/util/List;)V

    .line 153
    return-void
.end method

.method protected abstract generateUniqueRollOverFileName()Ljava/lang/String;
.end method

.method public getBatchOfFilesToSend()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/l;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastRollOverTime()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lio/fabric/sdk/android/services/c/d;->lastRollOverTime:J

    return-wide v0
.end method

.method protected getMaxByteSizePerFile()I
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0x1f40

    return v0
.end method

.method public parseCreationTimestampFromFileName(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 197
    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 199
    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 204
    :goto_0
    return-wide v0

    .line 202
    :cond_0
    const/4 v3, 0x2

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public registerRollOverListener(Lio/fabric/sdk/android/services/c/m;)V
    .locals 1

    .prologue
    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/services/c/d;->rollOverListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method

.method public rollFileOver()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 88
    iget-object v3, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    invoke-interface {v3}, Lio/fabric/sdk/android/services/c/l;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/c/d;->generateUniqueRollOverFileName()Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v3, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    invoke-interface {v3, v0}, Lio/fabric/sdk/android/services/c/l;->a(Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lio/fabric/sdk/android/services/c/d;->context:Landroid/content/Context;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "generated new file %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lio/fabric/sdk/android/services/b/l;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lio/fabric/sdk/android/services/c/d;->currentTimeProvider:Lio/fabric/sdk/android/services/b/r;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/b/r;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lio/fabric/sdk/android/services/c/d;->lastRollOverTime:J

    .line 102
    :goto_0
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/c/d;->triggerRollOverOnListeners(Ljava/lang/String;)V

    .line 103
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public writeEvent(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/d;->transform:Lio/fabric/sdk/android/services/c/c;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/c/c;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 65
    array-length v1, v0

    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/c/d;->rollFileOverIfNeeded(I)V

    .line 67
    iget-object v1, p0, Lio/fabric/sdk/android/services/c/d;->eventStorage:Lio/fabric/sdk/android/services/c/l;

    invoke-interface {v1, v0}, Lio/fabric/sdk/android/services/c/l;->a([B)V

    .line 68
    return-void
.end method
