.class public final Lcom/avira/android/securebrowsing/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CATEGORY_CMV_VERSION:Ljava/lang/String; = "categoryCmvVersion"

.field public static final CATEGORY_ID:Ljava/lang/String; = "categoryId"

.field public static final CATEGORY_MAPPING_VER_TABLE:Ljava/lang/String; = "categoryMappingVerTable"

.field public static final CATEGORY_TABLE:Ljava/lang/String; = "categoryTable"

.field public static final CMV_VERSION:Ljava/lang/String; = "cmvId"

.field private static final DATABASE_NAME:Ljava/lang/String; = "secureBrowsingDb"

.field private static final DEFAULT_CMV_VERSION:Ljava/lang/String; = "1"

.field public static final DEFAULT_LOCALE:Ljava/lang/String; = "en-US"

.field public static final FRENCH_LOCALE:Ljava/lang/String; = "fr-FR"

.field public static final GERMAN_LOCALE:Ljava/lang/String; = "de-DE"

.field public static final ITALIAN_LOCALE:Ljava/lang/String; = "it-IT"

.field public static final LOCALIZE_CATEGORY_DESC:Ljava/lang/String; = "localizeCategoryDesc"

.field public static final LOCALIZE_CATEGORY_ID:Ljava/lang/String; = "localizeCategoryId"

.field public static final LOCALIZE_CATEGORY_NAME:Ljava/lang/String; = "localizeCategoryName"

.field public static final LOCALIZE_CATEGORY_TABLE:Ljava/lang/String; = "localizeCategoryTable"

.field public static final LOCALIZE_LOCALE:Ljava/lang/String; = "localizeLocale"

.field private static final MALWARE_CATEGORY_ID:Ljava/lang/String; = "2"

.field private static final PHISHING_CATEGORY_ID:Ljava/lang/String; = "3"

.field private static final PORTUGUESE_BR_LOCALE:Ljava/lang/String; = "pt-br"

.field private static final SAFE_CATEGORY_ID:Ljava/lang/String; = "1"

.field private static final SPAM_CATEGORY_ID:Ljava/lang/String; = "4"

.field public static final SPANISH_LOCALE:Ljava/lang/String; = "es-ES"

.field public static final TOTAL_NUM_OF_CATEGORY:I = 0x5

.field private static final UNKNOWN_CATEGORY_ID:Ljava/lang/String; = "0"

.field private static c:Lcom/avira/android/securebrowsing/b/b;


# instance fields
.field private final a:Lcom/avira/android/database/h;

.field private final b:Lcom/avira/android/securebrowsing/b/c;

.field private final d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/avira/android/database/h;)V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/avira/android/securebrowsing/b/b;->a:Lcom/avira/android/database/h;

    .line 64
    new-instance v0, Lcom/avira/android/securebrowsing/b/c;

    const-string v1, "secureBrowsingDb"

    invoke-direct {v0, p1, v1}, Lcom/avira/android/securebrowsing/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/b/b;->b:Lcom/avira/android/securebrowsing/b/c;

    .line 65
    iget-object v0, p0, Lcom/avira/android/securebrowsing/b/b;->b:Lcom/avira/android/securebrowsing/b/c;

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/b/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "categoryMappingVerTable"

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "cmvId"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v9

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    if-nez v1, :cond_0

    .line 67
    const-string v0, "1"

    new-instance v1, Lcom/avira/android/database/e;

    invoke-direct {v1}, Lcom/avira/android/database/e;-><init>()V

    const-string v2, "cmvId"

    invoke-virtual {v1, v2, v0}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    const-string v0, "categoryMappingVerTable"

    invoke-virtual {v1}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    const-string v0, "1"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/avira/android/securebrowsing/b/b;->b(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "1"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/avira/android/securebrowsing/b/b;->b(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "1"

    const-string v1, "2"

    invoke-direct {p0, v0, v1}, Lcom/avira/android/securebrowsing/b/b;->b(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "1"

    const-string v1, "3"

    invoke-direct {p0, v0, v1}, Lcom/avira/android/securebrowsing/b/b;->b(Ljava/lang/String;Ljava/lang/String;)J

    const-string v0, "1"

    const-string v1, "4"

    invoke-direct {p0, v0, v1}, Lcom/avira/android/securebrowsing/b/b;->b(Ljava/lang/String;Ljava/lang/String;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800d9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "en-US"

    const-string v2, "0"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800db

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "en-US"

    const-string v2, "1"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800dc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800dd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "en-US"

    const-string v2, "2"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800df

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "en-US"

    const-string v2, "3"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "en-US"

    const-string v2, "4"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "de-DE"

    const-string v2, "0"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "de-DE"

    const-string v2, "1"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "de-DE"

    const-string v2, "2"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800e9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "de-DE"

    const-string v2, "3"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800eb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "de-DE"

    const-string v2, "4"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "es-ES"

    const-string v2, "0"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800ef

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "es-ES"

    const-string v2, "1"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "es-ES"

    const-string v2, "2"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800f3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "es-ES"

    const-string v2, "3"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "es-ES"

    const-string v2, "4"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800f7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fr-FR"

    const-string v2, "0"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fr-FR"

    const-string v2, "1"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800fa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800fb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fr-FR"

    const-string v2, "2"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800fd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fr-FR"

    const-string v2, "3"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f0800fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f0800ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fr-FR"

    const-string v2, "4"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f080100

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f080101

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "it-IT"

    const-string v2, "0"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f080102

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f080103

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "it-IT"

    const-string v2, "1"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f080104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f080105

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "it-IT"

    const-string v2, "2"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f080106

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f080107

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "it-IT"

    const-string v2, "3"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f080108

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f080109

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "it-IT"

    const-string v2, "4"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f08010a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pt-br"

    const-string v2, "0"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f08010c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f08010d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pt-br"

    const-string v2, "1"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f08010e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f08010f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pt-br"

    const-string v2, "2"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f080110

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f080111

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pt-br"

    const-string v2, "3"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v2, 0x7f080112

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const v3, 0x7f080113

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pt-br"

    const-string v2, "4"

    invoke-direct {p0, v1, v2, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J

    .line 69
    :cond_0
    return-void

    :cond_1
    move v1, v10

    goto/16 :goto_0

    :cond_2
    move v1, v10

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/avira/android/securebrowsing/b/b;->b:Lcom/avira/android/securebrowsing/b/c;

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/b/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 368
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 369
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 370
    return-wide v2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/securebrowsing/b/a;)J
    .locals 3

    .prologue
    .line 357
    new-instance v0, Lcom/avira/android/database/e;

    invoke-direct {v0}, Lcom/avira/android/database/e;-><init>()V

    .line 358
    const-string v1, "localizeLocale"

    invoke-virtual {v0, v1, p1}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 359
    const-string v1, "localizeCategoryId"

    invoke-virtual {v0, v1, p2}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 360
    const-string v1, "localizeCategoryName"

    invoke-virtual {p3}, Lcom/avira/android/securebrowsing/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 361
    const-string v1, "localizeCategoryDesc"

    invoke-virtual {p3}, Lcom/avira/android/securebrowsing/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 362
    const-string v1, "localizeCategoryTable"

    invoke-virtual {v0}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized a()Lcom/avira/android/securebrowsing/b/b;
    .locals 4

    .prologue
    .line 76
    const-class v1, Lcom/avira/android/securebrowsing/b/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avira/android/securebrowsing/b/b;->c:Lcom/avira/android/securebrowsing/b/b;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/avira/android/securebrowsing/b/b;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/avira/android/securebrowsing/b/b;-><init>(Landroid/content/Context;Lcom/avira/android/database/h;)V

    sput-object v0, Lcom/avira/android/securebrowsing/b/b;->c:Lcom/avira/android/securebrowsing/b/b;

    .line 80
    :cond_0
    sget-object v0, Lcom/avira/android/securebrowsing/b/b;->c:Lcom/avira/android/securebrowsing/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 338
    new-instance v0, Lcom/avira/android/database/e;

    invoke-direct {v0}, Lcom/avira/android/database/e;-><init>()V

    .line 339
    const-string v1, "categoryCmvVersion"

    invoke-virtual {v0, v1, p1}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 340
    const-string v1, "categoryId"

    invoke-virtual {v0, v1, p2}, Lcom/avira/android/database/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;

    .line 341
    const-string v1, "categoryTable"

    invoke-virtual {v0}, Lcom/avira/android/database/e;->a()Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/securebrowsing/b/a;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 384
    iget-object v0, p0, Lcom/avira/android/securebrowsing/b/b;->a:Lcom/avira/android/database/h;

    const-string v1, "localizeCategoryId"

    invoke-virtual {v0, v1, p1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 385
    iget-object v0, p0, Lcom/avira/android/securebrowsing/b/b;->a:Lcom/avira/android/database/h;

    const-string v1, "localizeLocale"

    invoke-virtual {v0, v1, p2}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 386
    iget-object v0, p0, Lcom/avira/android/securebrowsing/b/b;->b:Lcom/avira/android/securebrowsing/b/c;

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/b/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 387
    const-string v1, "localizeCategoryTable"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "localizeCategoryId"

    aput-object v3, v2, v8

    const-string v3, "localizeLocale"

    aput-object v3, v2, v9

    const-string v3, "localizeCategoryName"

    aput-object v3, v2, v10

    const/4 v3, 0x3

    const-string v4, "localizeCategoryDesc"

    aput-object v4, v2, v3

    const-string v3, "localizeCategoryId=? AND localizeLocale=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object v6, v4, v8

    aput-object v7, v4, v9

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_1

    .line 392
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 395
    iget-object v1, p0, Lcom/avira/android/securebrowsing/b/b;->a:Lcom/avira/android/database/h;

    const-string v2, "localizeCategoryName"

    const-string v3, "localizeCategoryName"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    iget-object v2, p0, Lcom/avira/android/securebrowsing/b/b;->a:Lcom/avira/android/database/h;

    const-string v3, "localizeCategoryDesc"

    const-string v4, "localizeCategoryDesc"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_0
    return-object v0

    .line 401
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 403
    :cond_1
    new-instance v0, Lcom/avira/android/securebrowsing/b/a;

    invoke-direct {v0}, Lcom/avira/android/securebrowsing/b/a;-><init>()V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 413
    iget-object v0, p0, Lcom/avira/android/securebrowsing/b/b;->b:Lcom/avira/android/securebrowsing/b/c;

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/b/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 414
    const-string v1, "categoryMappingVerTable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cmvId"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 416
    const-string v0, ""

    .line 417
    if-eqz v1, :cond_1

    .line 419
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 422
    iget-object v0, p0, Lcom/avira/android/securebrowsing/b/b;->a:Lcom/avira/android/database/h;

    const-string v2, "cmvId"

    const-string v3, "cmvId"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/database/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_1
    return-object v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/avira/android/securebrowsing/b/b;->d:Landroid/content/Context;

    const-string v1, "secureBrowsingDb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/avira/android/securebrowsing/b/b;->b:Lcom/avira/android/securebrowsing/b/c;

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/b/c;->close()V

    .line 440
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/android/securebrowsing/b/b;->c:Lcom/avira/android/securebrowsing/b/b;

    .line 441
    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
