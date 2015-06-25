.class public Lcom/avira/android/idsafeguard/database/ISContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.avira.android.idsafeguard"

.field private static final BREACHED_EMAIL:I = 0x2

.field public static final BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

.field private static final BREACHED_EMAIL_COUNT:I = 0x4

.field public static final BREACHED_EMAIL_COUNT_CONTENT_URI:Landroid/net/Uri;

.field private static final BREACHED_EMAIL_COUNT_PATH:Ljava/lang/String; = "breachedemail/count"

.field private static final BREACHED_EMAIL_INFO:I = 0x3

.field public static final BREACHED_EMAIL_INFO_CONTENT_URI:Landroid/net/Uri;

.field private static final BREACHED_EMAIL_INFO_PATH:Ljava/lang/String; = "breachedemail/info"

.field private static final BREACHED_EMAIL_PATH:Ljava/lang/String; = "breachedemail"

.field private static final BREACH_INFO:I = 0x1

.field public static final BREACH_INFO_CONTENT_URI:Landroid/net/Uri;

.field private static final BREACH_INFO_PATH:Ljava/lang/String; = "breachinfo"

.field private static final DB_NAME:Ljava/lang/String; = "idsafeguard"

.field private static final DB_VERSION:I = 0x3

.field private static final RECENT_BREACHES:I = 0x5

.field public static final RECENT_BREACHES_CONTENT_URI:Landroid/net/Uri;

.field private static final RECENT_BREACHES_PATH:Ljava/lang/String; = "recentbreaches"

.field private static final TAG:Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private a:Lcom/avira/android/idsafeguard/database/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const-class v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->TAG:Ljava/lang/String;

    .line 36
    const-string v0, "content://com.avira.android.idsafeguard/breachinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACH_INFO_CONTENT_URI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://com.avira.android.idsafeguard/breachedemail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.avira.android.idsafeguard/breachedemail/count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_COUNT_CONTENT_URI:Landroid/net/Uri;

    .line 41
    const-string v0, "content://com.avira.android.idsafeguard/breachedemail/info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_INFO_CONTENT_URI:Landroid/net/Uri;

    .line 43
    const-string v0, "content://com.avira.android.idsafeguard/recentbreaches"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->RECENT_BREACHES_CONTENT_URI:Landroid/net/Uri;

    .line 56
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 60
    sput-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.avira.android.idsafeguard"

    const-string v2, "breachinfo"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    sget-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.avira.android.idsafeguard"

    const-string v2, "breachedemail"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.avira.android.idsafeguard"

    const-string v2, "breachedemail/count"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.avira.android.idsafeguard"

    const-string v2, "breachedemail/info"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.avira.android.idsafeguard"

    const-string v2, "recentbreaches"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/database/ISContentProvider;->onCreate()Z

    .line 71
    return-void
.end method

.method private static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 78
    :pswitch_1
    const-string v0, "breachInfoTable"

    goto :goto_0

    .line 80
    :pswitch_2
    const-string v0, "breachedEmailTable"

    goto :goto_0

    .line 82
    :pswitch_3
    const-string v0, "recentBreachesTable"

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8

    .prologue
    .line 120
    .line 122
    invoke-static {p1}, Lcom/avira/android/idsafeguard/database/ISContentProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 123
    if-nez v1, :cond_0

    .line 125
    const/4 v0, -0x1

    .line 150
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->a:Lcom/avira/android/idsafeguard/database/b;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/database/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 132
    :try_start_0
    array-length v3, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, p2, v0

    .line 134
    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v2, v1, v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    .line 135
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 137
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to insert row into "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 132
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 142
    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/database/ISContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 144
    array-length v0, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 91
    invoke-static {p1}, Lcom/avira/android/idsafeguard/database/ISContentProvider;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-nez v0, :cond_1

    .line 94
    const/4 v0, -0x1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->a:Lcom/avira/android/idsafeguard/database/b;

    invoke-virtual {v1}, Lcom/avira/android/idsafeguard/database/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 100
    if-lez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/database/ISContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->a:Lcom/avira/android/idsafeguard/database/b;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/database/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 159
    sget-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v2

    .line 184
    :goto_0
    return-object v0

    .line 162
    :pswitch_1
    const-string v1, "breachInfoTable"

    .line 163
    sget-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACH_INFO_CONTENT_URI:Landroid/net/Uri;

    .line 177
    :goto_1
    invoke-virtual {v3, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 178
    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    move-object v0, v2

    .line 181
    goto :goto_0

    .line 166
    :pswitch_2
    const-string v1, "breachedEmailTable"

    .line 167
    sget-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 171
    :pswitch_3
    const-string v1, "recentBreachesTable"

    .line 172
    sget-object v0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->RECENT_BREACHES_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/database/ISContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 184
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 190
    new-instance v0, Lcom/avira/android/idsafeguard/database/b;

    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/database/ISContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "idsafeguard"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/idsafeguard/database/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->a:Lcom/avira/android/idsafeguard/database/b;

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .prologue
    .line 198
    iget-object v0, p0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->a:Lcom/avira/android/idsafeguard/database/b;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/database/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 201
    const/4 v5, 0x0

    .line 202
    const/4 v8, 0x0

    .line 204
    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 243
    const/4 v0, 0x0

    .line 256
    :goto_0
    return-object v0

    .line 207
    :pswitch_0
    const-string v2, "breachInfoTable"

    .line 208
    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACH_INFO_CONTENT_URI:Landroid/net/Uri;

    move-object v3, p3

    move-object v9, v1

    move-object v1, v2

    .line 247
    :goto_1
    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p4

    move-object/from16 v7, p5

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 248
    :try_start_1
    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/database/ISContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 253
    :goto_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    sget-object v3, Lcom/avira/android/idsafeguard/database/ISContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :pswitch_1
    const-string v2, "breachedEmailTable"

    .line 212
    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, p3

    move-object v9, v1

    move-object v1, v2

    .line 213
    goto :goto_1

    .line 215
    :pswitch_2
    const-string v2, "breachedEmailTable"

    .line 216
    const-string v5, "email"

    .line 217
    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

    move-object v3, p3

    move-object v9, v1

    move-object v1, v2

    .line 218
    goto :goto_1

    .line 220
    :pswitch_3
    const-string v1, "id=breachId"

    .line 221
    const-string v3, "breachedEmailTable,breachInfoTable"

    .line 224
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 236
    :cond_0
    :goto_3
    sget-object v2, Lcom/avira/android/idsafeguard/database/ISContentProvider;->BREACHED_EMAIL_CONTENT_URI:Landroid/net/Uri;

    move-object v9, v2

    move-object v10, v1

    move-object v1, v3

    move-object v3, v10

    .line 237
    goto :goto_1

    .line 230
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 239
    :pswitch_4
    const-string v2, "recentBreachesTable"

    .line 240
    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->RECENT_BREACHES_CONTENT_URI:Landroid/net/Uri;

    move-object v3, p3

    move-object v9, v1

    move-object v1, v2

    .line 241
    goto :goto_1

    .line 250
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/avira/android/idsafeguard/database/ISContentProvider;->a:Lcom/avira/android/idsafeguard/database/b;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/database/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 265
    sget-object v1, Lcom/avira/android/idsafeguard/database/ISContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 271
    const/4 v0, 0x0

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 268
    :pswitch_0
    const-string v1, "breachedEmailTable"

    .line 274
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 276
    if-lez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/database/ISContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
