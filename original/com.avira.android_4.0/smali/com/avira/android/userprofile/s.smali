.class public final Lcom/avira/android/userprofile/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "create table userProfileSettingsTable (email text primary key not null, login integer);"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field private static final LOGIN:Ljava/lang/String; = "login"

.field private static final LOGIN_ACTIVE:I = 0x1

.field private static final LOGIN_DEACTIVATED:I = 0x0

.field public static final USER_PROFILE_SETTINGS_TABLE_NAME:Ljava/lang/String; = "userProfileSettingsTable"


# instance fields
.field private a:Lcom/avira/android/database/h;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/userprofile/s;->a:Lcom/avira/android/database/h;

    .line 34
    iget-object v0, p0, Lcom/avira/android/userprofile/s;->a:Lcom/avira/android/database/h;

    invoke-virtual {v0}, Lcom/avira/android/database/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/userprofile/s;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    iget-object v0, p0, Lcom/avira/android/userprofile/s;->a:Lcom/avira/android/database/h;

    const-string v1, "userProfileSettingsTable"

    invoke-virtual {v0, v1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/avira/android/userprofile/s;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table userProfileSettingsTable (email text primary key not null, login integer);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 85
    .line 87
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v6

    .line 89
    iget-object v0, p0, Lcom/avira/android/userprofile/s;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "userProfileSettingsTable"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "email"

    aput-object v3, v2, v9

    const-string v3, "login=?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "login"

    invoke-virtual {v6, v7, v8}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/avira/android/userprofile/s;->a:Lcom/avira/android/database/h;

    const-string v2, "email"

    const-string v3, "email"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_1
    return-object v5
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 50
    new-instance v0, Lcom/avira/android/database/e;

    invoke-direct {v0}, Lcom/avira/android/database/e;-><init>()V

    .line 53
    const-string v3, "email"

    invoke-virtual {v0, v3, p1}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 54
    const-string v3, "login"

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/avira/android/database/e;->a(Ljava/lang/String;J)Lcom/avira/android/database/e;

    .line 56
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v3

    .line 58
    iget-object v4, p0, Lcom/avira/android/userprofile/s;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "userProfileSettingsTable"

    invoke-virtual {v0}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "email=?"

    new-array v8, v1, [Ljava/lang/String;

    const-string v9, "email"

    invoke-virtual {v3, p1, v9}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 61
    if-lez v3, :cond_1

    move v0, v1

    .line 70
    :goto_0
    if-eqz v0, :cond_0

    .line 72
    new-instance v3, Lcom/avira/android/database/e;

    invoke-direct {v3}, Lcom/avira/android/database/e;-><init>()V

    const-string v4, "login"

    invoke-virtual {v3, v4, v10, v11}, Lcom/avira/android/database/e;->a(Ljava/lang/String;J)Lcom/avira/android/database/e;

    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v4

    iget-object v5, p0, Lcom/avira/android/userprofile/s;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "userProfileSettingsTable"

    invoke-virtual {v3}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v3

    const-string v7, "email!=?"

    new-array v1, v1, [Ljava/lang/String;

    const-string v8, "email"

    invoke-virtual {v4, p1, v8}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v5, v6, v3, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    :cond_0
    return v0

    .line 67
    :cond_1
    iget-object v3, p0, Lcom/avira/android/userprofile/s;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "userProfileSettingsTable"

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
