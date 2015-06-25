.class public Lcom/avira/android/database/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CREATE_TABLE:Ljava/lang/String; = "create table settings (settingName text not null, settingValue text not null);"

.field public static final SETTINGS_BLOCKCALLS:Ljava/lang/String; = "settingBlockcalls"

.field public static final SETTINGS_CALL_OWNER_NUMBER:Ljava/lang/String; = "settingCallOwnerNumber"

.field public static final SETTINGS_CURRENTLY_VIEWED_SCREEN:Ljava/lang/String; = "settingCurrentlyViewedScreen"

.field public static final SETTINGS_DEVICE_ADMIN_VERSION:Ljava/lang/String; = "settingDeviceAdminVersion"

.field public static final SETTINGS_FIRST_ANTIVIRUS_SCAN_COMPLETED:Ljava/lang/String; = "settingFirstScanCompleted"

.field public static final SETTINGS_FIRST_ID_SAFEGUARD_SCAN_LAUNCHED:Ljava/lang/String; = "settingFirstIDSafeguardScanLaunched"

.field public static final SETTINGS_FIRST_NAME:Ljava/lang/String; = "settingFirstName"

.field public static final SETTINGS_FIRST_SCAN_GUI_FLOW_INTERRUPTED:Ljava/lang/String; = "settingFirstScanGUIFlowInterrupted"

.field public static final SETTINGS_LAST_NAME:Ljava/lang/String; = "settingLastName"

.field public static final SETTINGS_LOCKSCREEN_MESSAGE:Ljava/lang/String; = "settingLockMessage"

.field public static final SETTINGS_LOCKSENDER:Ljava/lang/String; = "settingLockSender"

.field public static final SETTINGS_MAVAPI_VERSION:Ljava/lang/String; = "settingMavapiVersion"

.field private static final SETTINGS_NAME:Ljava/lang/String; = "settingName"

.field public static final SETTINGS_PREMIUM_STATUS:Ljava/lang/String; = "settingPremiumStatus"

.field public static final SETTINGS_PROMPT_LGE_BLACKLIST:Ljava/lang/String; = "settingPromptLgeBlacklist"

.field public static final SETTINGS_REGISTERED_PATH:Ljava/lang/String; = "settingRegisteredPath"

.field public static final SETTINGS_REGISTERED_SERVER_DEVICE_ID:Ljava/lang/String; = "settingRegisteredServerDeviceId"

.field public static final SETTINGS_REGISTERED_SERVER_OE_DEVICE_ID:Ljava/lang/String; = "settingRegisteredServerOEDeviceId"

.field public static final SETTINGS_REMOTECAMERA:Ljava/lang/String; = "settingRemoteCamera"

.field public static final SETTINGS_REMOTELOCATE:Ljava/lang/String; = "settingRemoteLocate"

.field public static final SETTINGS_REMOTELOCK:Ljava/lang/String; = "settingRemoteLock"

.field public static final SETTINGS_REMOTESCREAM:Ljava/lang/String; = "settingRemoteScream"

.field public static final SETTINGS_REMOTEWIPE_EXTERNAL:Ljava/lang/String; = "settingRemoteWipeExternal"

.field public static final SETTINGS_SECUREBROWSING_STATUS:Ljava/lang/String; = "settingSecureBrowsingStatus"

.field public static final SETTINGS_SHOW_EULA_SCREEN:Ljava/lang/String; = "settingShowEulaScreen"

.field public static final SETTINGS_SHOW_REGISTRATION_SCREEN:Ljava/lang/String; = "settingShowRegistrationScreen"

.field public static final SETTINGS_UNLOCK_ATTEMPT:Ljava/lang/String; = "settingUnlockAttempt"

.field public static final SETTINGS_UNLOCK_PASSWORD:Ljava/lang/String; = "settingUnlockPassword"

.field public static final SETTINGS_UUID:Ljava/lang/String; = "settingUuid"

.field private static final SETTINGS_VALUE:Ljava/lang/String; = "settingValue"

.field private static final TABLE_NAME:Ljava/lang/String; = "settings"

.field private static a:Lcom/avira/android/database/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/avira/android/database/b;

    invoke-direct {v0}, Lcom/avira/android/database/b;-><init>()V

    sput-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    sget-object v1, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    invoke-virtual {v0, p0, p1, v1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/database/g;)I

    move-result v0

    return v0
.end method

.method public static a()Lcom/avira/android/database/g;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    return-object v0
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 170
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-class v0, Lcom/avira/android/database/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initializeSystemTable - enter"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingRegisteredPath"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingBlockcalls"

    const-string v2, "0"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingRemoteLock"

    const-string v2, "0"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingRemoteScream"

    const-string v2, "0"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingRemoteCamera"

    const-string v2, "0"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingRemoteLocate"

    const-string v2, "0"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingLockSender"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingLockMessage"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingCurrentlyViewedScreen"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingShowEulaScreen"

    const-string v2, "1"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingShowRegistrationScreen"

    const-string v2, "1"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingRegisteredServerDeviceId"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingRegisteredServerOEDeviceId"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingUnlockPassword"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingCallOwnerNumber"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingUnlockAttempt"

    const-string v2, "0"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingPromptLgeBlacklist"

    const-string v2, "1"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingDeviceAdminVersion"

    const-string v2, "1"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingPremiumStatus"

    const-string v2, "0"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingSecureBrowsingStatus"

    const-string v2, "0"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingFirstName"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingLastName"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingMavapiVersion"

    const-string v2, "0"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingFirstScanGUIFlowInterrupted"

    const-string v2, "0"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingFirstIDSafeguardScanLaunched"

    const-string v2, "0"

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    const-string v1, "settingUuid"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    sget-object v1, Lcom/avira/android/database/a;->a:Lcom/avira/android/database/g;

    invoke-virtual {v0, p0, v1, p1}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Lcom/avira/android/database/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Z
    .locals 4

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 139
    :try_start_0
    const-string v1, "1"

    const-string v2, "settingRemoteLock"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
