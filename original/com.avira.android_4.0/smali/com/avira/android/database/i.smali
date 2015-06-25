.class public Lcom/avira/android/database/i;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/avira/android/database/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/database/i;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {}, Lcom/avira/android/device/a;->k()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 45
    invoke-static {}, Lcom/avira/android/database/j;->a()Lcom/avira/android/database/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/database/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/avira/android/database/i;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/database/i;->TAG:Ljava/lang/String;

    const-string v1, "RemoteWipe database does not exist, creating..."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :try_start_0
    const-string v0, "create table wipeStateTable (wipeJobType text not null, wipeJobState text not null);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lcom/avira/android/database/j;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    sget-object v2, Lcom/avira/android/database/i;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create remote wipe state database."

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 60
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    sget-object v2, Lcom/avira/android/database/i;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create remote wipe state database."

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/database/i;->TAG:Ljava/lang/String;

    const-string v1, "RemoteWipe database already exists."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    .line 95
    if-nez p0, :cond_0

    .line 114
    :goto_0
    return v1

    .line 102
    :cond_0
    :try_start_0
    const-string v2, "select ifnull((SELECT name FROM sqlite_master WHERE type=\'table\' AND name=?), \'\')"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    move v1, v0

    .line 114
    goto :goto_0

    :cond_1
    move v0, v1

    .line 105
    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 110
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v2

    sget-object v3, Lcom/avira/android/database/i;->TAG:Ljava/lang/String;

    const-string v4, "Failed to check table existance in database"

    invoke-virtual {v2, v3, v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 72
    const-string v0, "create table settings (settingName text not null, settingValue text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Lcom/avira/android/database/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    const-string v0, "create table communicationsSettingsTable (settingsName text not null, settingsValue text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lcom/avira/android/database/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
