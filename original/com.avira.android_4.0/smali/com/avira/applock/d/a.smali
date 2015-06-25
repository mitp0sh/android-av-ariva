.class public final Lcom/avira/applock/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APPLOCK_FEATURE_SWITCH_STATE_DEFAULT_VALUE:Z = true

.field private static final APPLOCK_FEATURE_SWITCH_STATE_KEY:Ljava/lang/String; = "applock_feature_switch_state_key"

.field private static final APPLOCK_PACKAGE_NAME:Ljava/lang/String; = "com.avira.applock"

.field public static final APPLOCK_SELECTION_MAP_KEY:Ljava/lang/String; = "applock_selection_map_key"

.field private static final CURRENTLY_BLOCKED_APP_PACKAGE_NAME_KEY:Ljava/lang/String; = "currently_blocked_app_package_name_key"

.field private static final MAIN_PROJECT_DATA_RECEIVED_FLAG_DEFAULT_VALUE:Z = false

.field private static final MAIN_PROJECT_DATA_RECEIVED_FLAG_KEY:Ljava/lang/String; = "main_project_data_received_flag_key"

.field public static a:[Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/avira/applock/activities/CreatePasswordActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Lcom/avira/applock/activities/CreatePinActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/avira/applock/activities/LockScreenActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/avira/applock/activities/RecoverPinViaEmailActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/avira/applock/activities/RecoverPinViaPassActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/applock/d/a;->a:[Ljava/lang/String;

    .line 56
    sput-boolean v3, Lcom/avira/applock/d/a;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    const-string v0, "currently_blocked_app_package_name_key"

    invoke-static {p0, v0, p1}, Lcom/avira/applock/g/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 190
    const-string v0, "user_registered_email_key"

    invoke-static {p0, v0, p1}, Lcom/avira/applock/g/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "backend_url_key"

    invoke-static {p0, v0, p2}, Lcom/avira/applock/g/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_uid_key"

    invoke-static {p0, v0, p3}, Lcom/avira/applock/g/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "server_device_id_key"

    invoke-static {p0, v0, p4}, Lcom/avira/applock/g/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {p0}, Lcom/avira/applock/d/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avira/applock/b/d;

    invoke-direct {v0}, Lcom/avira/applock/b/d;-><init>()V

    :cond_0
    array-length v5, p5

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, p5, v2

    invoke-virtual {v0, v6}, Lcom/avira/applock/b/d;->d(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "com.avira.applock"

    invoke-virtual {v0, v2}, Lcom/avira/applock/b/d;->e(Ljava/lang/String;)V

    sget-object v2, Lcom/avira/applock/d/a;->a:[Ljava/lang/String;

    array-length v5, v2

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v2, v1

    invoke-virtual {v0, v6}, Lcom/avira/applock/b/d;->b(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 196
    const-string v0, "main_project_data_received_flag_key"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 197
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/applock/b/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    const-class v1, Lcom/avira/applock/d/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "applock_selection_map_key"

    invoke-static {p0, v0, p1}, Lcom/avira/applock/g/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit v1

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 67
    const-string v0, "applock_feature_switch_state_key"

    invoke-static {p0, v0, p1}, Lcom/avira/applock/g/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 159
    sput-boolean p0, Lcom/avira/applock/d/a;->b:Z

    .line 160
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 169
    sget-boolean v0, Lcom/avira/applock/d/a;->b:Z

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 78
    const-string v0, "applock_feature_switch_state_key"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/applock/b/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    const-string v0, "applock_selection_map_key"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Lcom/avira/applock/g/e;->a(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/applock/g/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 136
    invoke-static {p0}, Lcom/avira/applock/d/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    .line 137
    const-string v0, "currently_blocked_app_package_name_key"

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/b/d;

    .line 139
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/avira/applock/b/d;->b()V

    .line 144
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {p0, v1}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 147
    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 207
    const-string v0, "main_project_data_received_flag_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/avira/applock/g/f;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
