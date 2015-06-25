.class public final Lcom/avira/android/securebrowsing/b/c;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final DATABASE_VERSION:I = 0x2


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 20
    const-string v0, "create table categoryMappingVerTable (cmvId text primary key not null);"

    iput-object v0, p0, Lcom/avira/android/securebrowsing/b/c;->a:Ljava/lang/String;

    .line 23
    const-string v0, "create table categoryTable (categoryId text primary key not null, categoryCmvVersion text not null,  FOREIGN KEY (categoryCmvVersion) REFERENCES categoryMappingVerTable (cmvId) );"

    iput-object v0, p0, Lcom/avira/android/securebrowsing/b/c;->b:Ljava/lang/String;

    .line 28
    const-string v0, "create table localizeCategoryTable (localizeCategoryId text not null, localizeLocale text not null, localizeCategoryName text not null, localizeCategoryDesc text not null,  FOREIGN KEY (localizeCategoryId) REFERENCES categoryTable (categoryId) );"

    iput-object v0, p0, Lcom/avira/android/securebrowsing/b/c;->c:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 42
    const-string v0, "create table localizeCategoryTable (localizeCategoryId text not null, localizeLocale text not null, localizeCategoryName text not null, localizeCategoryDesc text not null,  FOREIGN KEY (localizeCategoryId) REFERENCES categoryTable (categoryId) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    const-string v0, "create table categoryTable (categoryId text primary key not null, categoryCmvVersion text not null,  FOREIGN KEY (categoryCmvVersion) REFERENCES categoryMappingVerTable (cmvId) );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    const-string v0, "create table categoryMappingVerTable (cmvId text primary key not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    const-string v0, "DROP TABLE IF EXISTS %1$s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "localizeCategoryTable"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string v0, "DROP TABLE IF EXISTS %1$s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "categoryTable"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string v0, "DROP TABLE IF EXISTS %1$s"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "categoryMappingVerTable"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/avira/android/securebrowsing/b/c;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    return-void
.end method
