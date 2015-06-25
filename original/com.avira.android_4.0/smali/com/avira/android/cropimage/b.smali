.class public abstract Lcom/avira/android/cropimage/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/cropimage/q;


# static fields
.field private static final CACHE_CAPACITY:I = 0x200

.field private static final TAG:Ljava/lang/String; = "BaseImageList"

.field private static final sPathWithId:Ljava/util/regex/Pattern;


# instance fields
.field protected a:Landroid/content/ContentResolver;

.field protected b:I

.field protected c:Landroid/net/Uri;

.field protected d:Landroid/database/Cursor;

.field protected e:Ljava/lang/String;

.field protected f:Z

.field private final g:Lcom/avira/android/cropimage/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avira/android/cropimage/ad",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/avira/android/cropimage/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const-string v0, "(.*)/\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/avira/android/cropimage/b;->sPathWithId:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/avira/android/cropimage/ad;

    invoke-direct {v0}, Lcom/avira/android/cropimage/ad;-><init>()V

    iput-object v0, p0, Lcom/avira/android/cropimage/b;->g:Lcom/avira/android/cropimage/ad;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/cropimage/b;->f:Z

    .line 46
    iput p3, p0, Lcom/avira/android/cropimage/b;->b:I

    .line 47
    iput-object p2, p0, Lcom/avira/android/cropimage/b;->c:Landroid/net/Uri;

    .line 48
    iput-object p4, p0, Lcom/avira/android/cropimage/b;->e:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/avira/android/cropimage/b;->a:Landroid/content/ContentResolver;

    .line 50
    invoke-virtual {p0}, Lcom/avira/android/cropimage/b;->d()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/cropimage/b;->d:Landroid/database/Cursor;

    .line 52
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->d:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 54
    const-string v0, "BaseImageList"

    const-string v1, "createCursor returns null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->g:Lcom/avira/android/cropimage/ad;

    invoke-virtual {v0}, Lcom/avira/android/cropimage/ad;->a()V

    .line 61
    return-void
.end method

.method private f()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->d:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    monitor-exit p0

    .line 132
    :goto_0
    return-object v0

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/avira/android/cropimage/b;->f:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/cropimage/b;->f:Z

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->d:Landroid/database/Cursor;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(J)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->c:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 92
    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "BaseImageList"

    const-string v1, "id mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->c:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/avira/android/cropimage/b;->c:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract a(Landroid/database/Cursor;)Lcom/avira/android/cropimage/a;
.end method

.method public final a(I)Lcom/avira/android/cropimage/p;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->g:Lcom/avira/android/cropimage/ad;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avira/android/cropimage/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/a;

    .line 140
    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/avira/android/cropimage/b;->f()Landroid/database/Cursor;

    move-result-object v0

    .line 143
    if-nez v0, :cond_1

    move-object v0, v1

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 145
    :cond_1
    monitor-enter p0

    .line 147
    :try_start_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/avira/android/cropimage/b;->a(Landroid/database/Cursor;)Lcom/avira/android/cropimage/a;

    move-result-object v0

    .line 148
    :goto_1
    iget-object v1, p0, Lcom/avira/android/cropimage/b;->g:Lcom/avira/android/cropimage/ad;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/avira/android/cropimage/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    .line 147
    goto :goto_1
.end method

.method public final a(Landroid/net/Uri;)Lcom/avira/android/cropimage/p;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/avira/android/cropimage/am;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/avira/android/cropimage/am;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/avira/android/cropimage/am;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/avira/android/cropimage/b;->sPathWithId:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v4, v0}, Lcom/avira/android/cropimage/am;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v1

    .line 254
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    .line 221
    goto :goto_0

    .line 227
    :cond_2
    :try_start_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 235
    invoke-direct {p0}, Lcom/avira/android/cropimage/b;->f()Landroid/database/Cursor;

    move-result-object v3

    .line 236
    if-nez v3, :cond_3

    move-object v0, v1

    .line 237
    goto :goto_1

    .line 231
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fail to get id in: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    .line 232
    goto :goto_1

    .line 238
    :cond_3
    monitor-enter p0

    .line 240
    const/4 v0, -0x1

    :try_start_1
    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 241
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 243
    invoke-virtual {p0, v3}, Lcom/avira/android/cropimage/b;->b(Landroid/database/Cursor;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_5

    .line 245
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->g:Lcom/avira/android/cropimage/ad;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/cropimage/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/cropimage/a;

    .line 246
    if-nez v0, :cond_4

    .line 248
    invoke-virtual {p0, v3}, Lcom/avira/android/cropimage/b;->a(Landroid/database/Cursor;)Lcom/avira/android/cropimage/a;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/avira/android/cropimage/b;->g:Lcom/avira/android/cropimage/ad;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/avira/android/cropimage/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 241
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 254
    :cond_6
    monitor-exit p0

    move-object v0, v1

    goto :goto_1
.end method

.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/cropimage/b;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/cropimage/b;->f:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/avira/android/cropimage/b;->a:Landroid/content/ContentResolver;

    .line 76
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/avira/android/cropimage/b;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 79
    iput-object v3, p0, Lcom/avira/android/cropimage/b;->d:Landroid/database/Cursor;

    .line 81
    :cond_1
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "BaseImageList"

    const-string v2, "Caught exception while deactivating cursor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/avira/android/cropimage/b;->f()Landroid/database/Cursor;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 109
    :cond_0
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b(Landroid/database/Cursor;)J
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/avira/android/cropimage/b;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract d()Landroid/database/Cursor;
.end method

.method protected e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    iget v0, p0, Lcom/avira/android/cropimage/b;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, " ASC"

    .line 275
    :goto_0
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", _id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method
