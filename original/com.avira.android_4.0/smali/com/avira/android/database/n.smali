.class public Lcom/avira/android/database/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CREATE_TABLE:Ljava/lang/String; = "create table if not exists activityLog (service text not null, results text not null);"

.field private static final SCAN_RESULT_RESULTS:Ljava/lang/String; = "results"

.field private static final SCAN_RESULT_SERVICE:Ljava/lang/String; = "service"

.field private static final SCAN_RESULT_SERVICE_COMPONENT:Ljava/lang/String; = "antivirus"

.field private static final SCAN_RESULT_TABLE_NAME:Ljava/lang/String; = "activityLog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/avira/android/database/gson/ScanResultsDatabaseItem;
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/avira/android/database/n;->b()Lcom/avira/android/database/gson/ScanResultsDatabaseItem;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->results:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    iget-object v0, v1, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->results:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/ScannerCallbackData;

    .line 185
    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannerCallbackData;->getFileInfo()Lcom/avira/android/antivirus/data/ScannedFileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannedFileInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/utilities/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 193
    :cond_1
    return-object v1
.end method

.method public static a(Z)V
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/avira/android/database/n;->b()Lcom/avira/android/database/gson/ScanResultsDatabaseItem;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 208
    iput-boolean p0, v0, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->hideIfEmpty:Z

    .line 209
    invoke-static {v0}, Lcom/avira/android/database/n;->a(Lcom/avira/android/database/gson/ScanResultsDatabaseItem;)Z

    .line 211
    :cond_0
    return-void
.end method

.method public static a(JIILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/Collection",
            "<",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v1, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;

    invoke-direct {v1}, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;-><init>()V

    .line 61
    iput-wide p0, v1, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->scanEndTime:J

    .line 62
    iput p2, v1, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->applicationsScanned:I

    .line 63
    iput p3, v1, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->filesScanned:I

    .line 64
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "noIssues"

    :goto_0
    iput-object v0, v1, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->status:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->hideIfEmpty:Z

    .line 67
    iput-object p4, v1, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->results:Ljava/util/Collection;

    .line 69
    invoke-static {v1}, Lcom/avira/android/database/n;->a(Lcom/avira/android/database/gson/ScanResultsDatabaseItem;)Z

    move-result v0

    return v0

    .line 64
    :cond_0
    const-string v0, "issuesFound"

    goto :goto_0
.end method

.method private static a(Lcom/avira/android/database/gson/ScanResultsDatabaseItem;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v2

    .line 84
    new-instance v3, Lcom/google/b/j;

    invoke-direct {v3}, Lcom/google/b/j;-><init>()V

    invoke-virtual {v3, p0}, Lcom/google/b/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 87
    const-string v5, "service"

    const-string v6, "antivirus"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v5, "results"

    const-string v6, "results"

    invoke-virtual {v2, v3, v6}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avira/android/database/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 94
    :try_start_0
    const-string v2, "create table if not exists activityLog (service text not null, results text not null);"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const-string v2, "activityLog"

    const-string v5, "service=?"

    new-array v6, v0, [Ljava/lang/String;

    const-string v7, "antivirus"

    aput-object v7, v6, v1

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    .line 105
    :goto_0
    if-nez v2, :cond_2

    .line 108
    const-string v2, "activityLog"

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 111
    :goto_1
    return v0

    .line 99
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_0
    move v2, v1

    .line 103
    goto :goto_0

    :cond_1
    move v0, v1

    .line 108
    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private static b()Lcom/avira/android/database/gson/ScanResultsDatabaseItem;
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 121
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/database/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v10

    .line 127
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v1

    const-string v2, "activityLog"

    invoke-virtual {v1, v2}, Lcom/avira/android/database/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    :goto_0
    return-object v9

    .line 135
    :cond_0
    :try_start_0
    const-string v1, "activityLog"

    const/4 v2, 0x0

    const-string v3, "service=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "antivirus"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 137
    if-eqz v1, :cond_5

    .line 140
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    const-string v0, "results"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v2, "results"

    invoke-virtual {v10, v0, v2}, Lcom/avira/android/database/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v2, Lcom/google/b/j;

    invoke-direct {v2}, Lcom/google/b/j;-><init>()V

    const-class v3, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;

    invoke-virtual {v2, v0, v3}, Lcom/google/b/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    :goto_1
    if-eqz v1, :cond_1

    .line 163
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    move-object v9, v0

    .line 167
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v9

    .line 161
    :goto_3
    if-eqz v0, :cond_2

    .line 163
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 165
    goto :goto_2

    .line 154
    :catch_1
    move-exception v0

    move-object v1, v9

    .line 156
    :goto_4
    :try_start_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/avira/android/database/n;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".readLastScanResults"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Exception"

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    if-eqz v1, :cond_3

    .line 163
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v9

    .line 165
    goto :goto_2

    .line 161
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_5
    if-eqz v1, :cond_4

    .line 163
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 154
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v0, v9

    goto :goto_1
.end method
