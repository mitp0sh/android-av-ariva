.class public final Lcom/avira/android/userprofile/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "create table userProfileInfoSettingsTable (userId text primary key not null, firstName text not null, lastName text not null, profilePicture blob null, foreign key(userId) references userProfileSettingsTable(email) on delete cascade on update cascade);"

.field private static final FIRST_NAME:Ljava/lang/String; = "firstName"

.field private static final ID:Ljava/lang/String; = "userId"

.field private static final LAST_NAME:Ljava/lang/String; = "lastName"

.field public static final PROFILE_IMAGE_SAVED_ACTION:Ljava/lang/String; = "profileImageSavedAction"

.field public static final PROFILE_NAME_SAVED_ACTION:Ljava/lang/String; = "profileNameSavedAction"

.field private static final PROFILE_PICTURE:Ljava/lang/String; = "profilePicture"

.field private static final USER_PROFILE_INFO_TABLE_NAME:Ljava/lang/String; = "userProfileInfoSettingsTable"


# instance fields
.field private a:Lcom/avira/android/database/h;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/userprofile/x;->a:Lcom/avira/android/database/h;

    .line 45
    iget-object v0, p0, Lcom/avira/android/userprofile/x;->a:Lcom/avira/android/database/h;

    invoke-virtual {v0}, Lcom/avira/android/database/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/userprofile/x;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    const-string v1, "userProfileInfoSettingsTable"

    invoke-virtual {v0, v1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/avira/android/userprofile/x;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table userProfileInfoSettingsTable (userId text primary key not null, firstName text not null, lastName text not null, profilePicture blob null, foreign key(userId) references userProfileSettingsTable(email) on delete cascade on update cascade);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "profileNameSavedAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method private static b()V
    .locals 2

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "profileImageSavedAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 61
    .line 65
    :try_start_0
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v5

    .line 67
    iget-object v0, p0, Lcom/avira/android/userprofile/x;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "userProfileInfoSettingsTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "firstName"

    aput-object v4, v2, v3

    const-string v3, "userId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "userId"

    invoke-virtual {v5, p1, v7}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_2

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/avira/android/userprofile/x;->a:Lcom/avira/android/database/h;

    const-string v2, "firstName"

    const-string v3, "firstName"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 81
    :goto_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v8

    .line 92
    :cond_0
    :goto_2
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v8

    goto :goto_0

    :cond_2
    move-object v0, v8

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 290
    invoke-static {p1}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p2}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v0

    .line 298
    :cond_1
    new-instance v2, Lcom/avira/android/userprofile/s;

    invoke-direct {v2}, Lcom/avira/android/userprofile/s;-><init>()V

    .line 300
    invoke-virtual {v2}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v2

    .line 302
    if-eqz v2, :cond_0

    .line 304
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    if-nez p2, :cond_3

    const-string p2, ""

    :cond_3
    new-instance v3, Lcom/avira/android/database/e;

    invoke-direct {v3}, Lcom/avira/android/database/e;-><init>()V

    const-string v4, "userId"

    invoke-virtual {v3, v4, v2}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    const-string v4, "firstName"

    invoke-virtual {v3, v4, p1}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    const-string v4, "lastName"

    invoke-virtual {v3, v4, p2}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v4

    iget-object v5, p0, Lcom/avira/android/userprofile/x;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "userProfileInfoSettingsTable"

    invoke-virtual {v3}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "userId=?"

    new-array v9, v1, [Ljava/lang/String;

    const-string v10, "userId"

    invoke-virtual {v4, v2, v10}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    move v0, v1

    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avira/android/userprofile/x;->a()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/avira/android/userprofile/x;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "userProfileInfoSettingsTable"

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 233
    if-nez p2, :cond_0

    .line 237
    const-string p2, ""

    .line 240
    :cond_0
    if-nez p3, :cond_1

    .line 242
    const-string p3, ""

    .line 245
    :cond_1
    new-instance v2, Lcom/avira/android/database/e;

    invoke-direct {v2}, Lcom/avira/android/database/e;-><init>()V

    .line 246
    const-string v3, "userId"

    invoke-virtual {v2, v3, p1}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 247
    const-string v3, "firstName"

    invoke-virtual {v2, v3, p2}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 248
    const-string v3, "lastName"

    invoke-virtual {v2, v3, p3}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 250
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v3

    .line 252
    invoke-virtual {v2}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v2

    .line 253
    const-string v4, "profilePicture"

    invoke-virtual {v2, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 255
    iget-object v4, p0, Lcom/avira/android/userprofile/x;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "userProfileInfoSettingsTable"

    const-string v6, "userId=?"

    new-array v7, v0, [Ljava/lang/String;

    const-string v8, "userId"

    invoke-virtual {v3, p1, v8}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 258
    if-lez v3, :cond_4

    .line 267
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 269
    invoke-static {}, Lcom/avira/android/userprofile/x;->b()V

    .line 270
    invoke-static {}, Lcom/avira/android/userprofile/x;->a()V

    .line 273
    :cond_3
    return v0

    .line 264
    :cond_4
    iget-object v3, p0, Lcom/avira/android/userprofile/x;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "userProfileInfoSettingsTable"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[B)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 184
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v2

    .line 188
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 189
    const-string v4, "profilePicture"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 191
    iget-object v4, p0, Lcom/avira/android/userprofile/x;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "userProfileInfoSettingsTable"

    const-string v6, "userId=?"

    new-array v7, v0, [Ljava/lang/String;

    const-string v8, "userId"

    invoke-virtual {v2, p1, v8}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 194
    if-lez v2, :cond_2

    .line 210
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 212
    invoke-static {}, Lcom/avira/android/userprofile/x;->b()V

    .line 215
    :cond_1
    return v0

    .line 200
    :cond_2
    new-instance v2, Lcom/avira/android/database/e;

    invoke-direct {v2}, Lcom/avira/android/database/e;-><init>()V

    .line 201
    const-string v3, "userId"

    invoke-virtual {v2, v3, p1}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 202
    const-string v3, "firstName"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 203
    const-string v3, "lastName"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 204
    invoke-virtual {v2}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v2

    .line 205
    const-string v3, "profilePicture"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 207
    iget-object v3, p0, Lcom/avira/android/userprofile/x;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "userProfileInfoSettingsTable"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 104
    .line 107
    :try_start_0
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v5

    .line 109
    iget-object v0, p0, Lcom/avira/android/userprofile/x;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "userProfileInfoSettingsTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lastName"

    aput-object v4, v2, v3

    const-string v3, "userId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "userId"

    invoke-virtual {v5, p1, v7}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/avira/android/userprofile/x;->a:Lcom/avira/android/database/h;

    const-string v2, "lastName"

    const-string v3, "lastName"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 123
    :goto_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v8

    .line 134
    :cond_0
    :goto_2
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v8

    goto :goto_0

    :cond_2
    move-object v0, v8

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 146
    .line 150
    :try_start_0
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v5

    .line 152
    iget-object v0, p0, Lcom/avira/android/userprofile/x;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "userProfileInfoSettingsTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "profilePicture"

    aput-object v4, v2, v3

    const-string v3, "userId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "userId"

    invoke-virtual {v5, p1, v7}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_1

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "profilePicture"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :goto_1
    return-object v0

    .line 166
    :catch_0
    move-exception v0

    move-object v0, v8

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v8

    goto :goto_0

    :cond_1
    move-object v0, v8

    goto :goto_1
.end method
