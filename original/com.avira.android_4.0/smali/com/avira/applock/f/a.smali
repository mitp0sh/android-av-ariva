.class public final Lcom/avira/applock/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BACKEND_URL_KEY:Ljava/lang/String; = "backend_url_key"

.field private static final DEVICE_UID_KEY:Ljava/lang/String; = "device_uid_key"

.field public static final PACKAGE_LIST_CHANGED_TIME_KEY:Ljava/lang/String; = "package_list_changed_time_key"

.field private static final SERVER_DEVICE_ID_KEY:Ljava/lang/String; = "server_device_id_key"

.field private static final USER_REGISTERED_EMAIL_KEY:Ljava/lang/String; = "user_registered_email_key"


# direct methods
.method public static a(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 31
    const-string v0, "package_list_changed_time_key"

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    const-string v0, "backend_url_key"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    const-string v0, "device_uid_key"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    const-string v0, "server_device_id_key"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
