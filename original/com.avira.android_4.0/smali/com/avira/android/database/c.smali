.class public final Lcom/avira/android/database/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMMUNICATIONS_SETTINGS_TABLE_NAME:Ljava/lang/String; = "communicationsSettingsTable"

.field private static final SETTINGS_NAME:Ljava/lang/String; = "settingsName"

.field private static final SETTINGS_VALUE:Ljava/lang/String; = "settingsValue"

.field private static a:Lcom/avira/android/database/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/avira/android/database/d;

    invoke-direct {v0}, Lcom/avira/android/database/d;-><init>()V

    sput-object v0, Lcom/avira/android/database/c;->a:Lcom/avira/android/database/g;

    return-void
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/avira/android/database/c;->a:Lcom/avira/android/database/g;

    const-string v1, "settingC2DMRegistrationId"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    sget-object v1, Lcom/avira/android/database/c;->a:Lcom/avira/android/database/g;

    invoke-virtual {v0, p0, p1, v1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/database/g;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    sget-object v1, Lcom/avira/android/database/c;->a:Lcom/avira/android/database/g;

    invoke-virtual {v0, p0, v1, p1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Lcom/avira/android/database/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
