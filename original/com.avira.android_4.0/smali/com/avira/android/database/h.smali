.class public Lcom/avira/android/database/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "MobileSecurityDb"

.field private static final TAG:Ljava/lang/String;

.field private static d:Lcom/avira/android/database/h;

.field private static e:Ljava/lang/String;


# instance fields
.field private final a:Lcom/avira/android/database/i;

.field private final b:Landroid/content/Context;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private final f:Lcom/avira/android/database/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/avira/android/database/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/database/h;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/android/database/h;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/database/h;->b:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/avira/android/database/i;

    iget-object v1, p0, Lcom/avira/android/database/h;->b:Landroid/content/Context;

    const-string v2, "MobileSecurityDb"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/database/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/database/h;->a:Lcom/avira/android/database/i;

    .line 40
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/database/h;->f:Lcom/avira/android/database/f;

    .line 41
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/avira/android/database/h;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avira/android/database/h;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    sget-object v0, Lcom/avira/android/database/f;->ONE_TIME_SECURE_RANDOM:Ljava/lang/String;

    .line 72
    :goto_0
    return-object v0

    .line 69
    :cond_1
    sget-object v0, Lcom/avira/android/database/h;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 106
    const-string v0, "settingRegisteredPath"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 116
    invoke-interface {p1}, Lcom/avira/android/database/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {p1}, Lcom/avira/android/database/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-interface {p1}, Lcom/avira/android/database/g;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 120
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/avira/android/database/h;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized e()Lcom/avira/android/database/h;
    .locals 5

    .prologue
    .line 287
    const-class v1, Lcom/avira/android/database/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/database/h;->d:Lcom/avira/android/database/h;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lcom/avira/android/database/h;

    invoke-direct {v0}, Lcom/avira/android/database/h;-><init>()V

    .line 290
    sput-object v0, Lcom/avira/android/database/h;->d:Lcom/avira/android/database/h;

    const-string v2, "settingRegisteredPath"

    invoke-static {}, Lcom/avira/android/database/a;->a()Lcom/avira/android/database/g;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v2, v3, v4}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Lcom/avira/android/database/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/database/h;->e:Ljava/lang/String;

    .line 293
    :cond_0
    sget-object v0, Lcom/avira/android/database/h;->d:Lcom/avira/android/database/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized f()V
    .locals 2

    .prologue
    .line 301
    const-class v1, Lcom/avira/android/database/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/database/h;->d:Lcom/avira/android/database/h;

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/avira/android/database/h;->TAG:Ljava/lang/String;

    .line 304
    sget-object v0, Lcom/avira/android/database/h;->d:Lcom/avira/android/database/h;

    iget-object v0, v0, Lcom/avira/android/database/h;->a:Lcom/avira/android/database/i;

    invoke-virtual {v0}, Lcom/avira/android/database/i;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_0
    monitor-exit v1

    return-void

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/database/g;)I
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 191
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 195
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 196
    invoke-interface {p3}, Lcom/avira/android/database/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-interface {p3}, Lcom/avira/android/database/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v4

    invoke-virtual {v4, p2, p1}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/avira/android/database/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-interface {p3}, Lcom/avira/android/database/g;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/avira/android/database/g;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 205
    if-nez v1, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/avira/android/database/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-interface {p3}, Lcom/avira/android/database/g;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 208
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 219
    :goto_0
    return v0

    .line 214
    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    .line 216
    sget-object v2, Lcom/avira/android/database/h;->TAG:Ljava/lang/String;

    const-string v3, "failed to write setting"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/avira/android/database/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 131
    .line 134
    if-nez p2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-object p3

    .line 141
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/avira/android/database/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-interface {p2}, Lcom/avira/android/database/g;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/avira/android/database/g;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p2}, Lcom/avira/android/database/g;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/avira/android/database/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 144
    if-eqz v2, :cond_4

    .line 146
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    invoke-interface {p2}, Lcom/avira/android/database/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 150
    :try_start_2
    const-string v1, "settingRegisteredPath"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 152
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/avira/android/database/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    if-nez v0, :cond_2

    .line 156
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    sget-object v3, Lcom/avira/android/h;->RESTART:Lcom/avira/android/h;

    invoke-virtual {v1, v3}, Lcom/avira/android/ApplicationService;->a(Lcom/avira/android/h;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 168
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 170
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_3
    if-eqz v0, :cond_0

    move-object p3, v0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    move-object v1, v8

    move-object v2, p3

    .line 165
    :goto_2
    sget-object v3, Lcom/avira/android/database/h;->TAG:Ljava/lang/String;

    const-string v4, "Failed to read settings"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    move-object v2, v1

    goto :goto_1

    .line 162
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, p3

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v9, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_2

    :cond_4
    move-object v0, p3

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avira/android/database/h;->f:Lcom/avira/android/database/f;

    invoke-virtual {v0, p2, p1}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/avira/android/database/h;->a:Lcom/avira/android/database/i;

    invoke-virtual {p0}, Lcom/avira/android/database/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avira/android/database/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    return v0
.end method

.method public final b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/avira/android/database/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/database/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/avira/android/database/h;->a:Lcom/avira/android/database/i;

    invoke-virtual {v0}, Lcom/avira/android/database/i;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/database/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/avira/android/database/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avira/android/database/h;->f:Lcom/avira/android/database/f;

    invoke-virtual {v0, p2, p1}, Lcom/avira/android/database/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    sget-object v2, Lcom/avira/android/h;->RESTART:Lcom/avira/android/h;

    invoke-virtual {v1, v2}, Lcom/avira/android/ApplicationService;->a(Lcom/avira/android/h;)V

    .line 57
    :cond_0
    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/avira/android/database/h;->a:Lcom/avira/android/database/i;

    invoke-virtual {p0}, Lcom/avira/android/database/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/database/i;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 228
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/avira/android/database/h;->b:Landroid/content/Context;

    const-string v1, "MobileSecurityDb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/avira/android/database/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 274
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/android/database/h;->d:Lcom/avira/android/database/h;

    .line 275
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/avira/android/database/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/avira/android/database/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 82
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    return-void
.end method
