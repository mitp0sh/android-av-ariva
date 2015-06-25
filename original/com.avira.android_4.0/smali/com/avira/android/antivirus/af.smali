.class public final Lcom/avira/android/antivirus/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_VDF_DOWNLOAD_COMPLETED:Ljava/lang/String; = "com.avira.android.ACTION_VDF_DOWNLOAD_COMPLETED"

.field public static final CURRENT_MAVAPI_VERSION:Ljava/lang/String; = "3"

.field public static final DEFAULT_MAVAPI_VERSON:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "MVPVERCTRL"

.field private static a:Z

.field private static b:Lcom/avira/android/antivirus/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/antivirus/af;->a:Z

    .line 28
    sget-object v0, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IDLE:Lcom/avira/android/antivirus/ae;

    sput-object v0, Lcom/avira/android/antivirus/af;->b:Lcom/avira/android/antivirus/ae;

    return-void
.end method

.method public static declared-synchronized a(Lcom/avira/android/antivirus/ae;)V
    .locals 2

    .prologue
    .line 103
    const-class v0, Lcom/avira/android/antivirus/af;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/avira/android/antivirus/af;->b:Lcom/avira/android/antivirus/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit v0

    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    const-class v1, Lcom/avira/android/antivirus/af;

    monitor-enter v1

    :try_start_0
    const-string v0, "settingMavapiVersion"

    invoke-static {v0, p0}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 65
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 67
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->w()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.avira.android.ACTION_VDF_DOWNLOAD_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit v1

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/avira/android/antivirus/af;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/avira/android/antivirus/af;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v0

    return-void

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 50
    const-class v0, Lcom/avira/android/antivirus/af;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/avira/android/antivirus/af;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()I
    .locals 2

    .prologue
    .line 88
    const-class v1, Lcom/avira/android/antivirus/af;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/avira/android/antivirus/af;->g()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 92
    monitor-exit v1

    return v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()Lcom/avira/android/antivirus/ae;
    .locals 2

    .prologue
    .line 112
    const-class v0, Lcom/avira/android/antivirus/af;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/avira/android/antivirus/af;->b:Lcom/avira/android/antivirus/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()V
    .locals 2

    .prologue
    .line 120
    const-class v1, Lcom/avira/android/antivirus/af;

    monitor-enter v1

    :try_start_0
    const-string v0, "3"

    invoke-static {v0}, Lcom/avira/android/antivirus/af;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit v1

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized e()Z
    .locals 4

    .prologue
    .line 131
    const-class v1, Lcom/avira/android/antivirus/af;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "MVPVERCTRL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Installed Mavapi Component Version = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/antivirus/af;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "3"

    invoke-static {}, Lcom/avira/android/antivirus/af;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 144
    const-class v1, Lcom/avira/android/antivirus/af;

    monitor-enter v1

    .line 147
    :try_start_0
    invoke-static {}, Lcom/avira/android/antivirus/af;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    const/4 v0, 0x1

    .line 151
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/avira/android/antivirus/af;->a(Z)V

    .line 153
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v2, "MVPVERCTRL"

    const-string v3, "Updating Mavapi Component Change to Version = 3"

    invoke-static {v2, v3}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/avira/android/antivirus/af;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_0
    monitor-exit v1

    return v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    const-class v1, Lcom/avira/android/antivirus/af;

    monitor-enter v1

    :try_start_0
    const-string v0, "settingMavapiVersion"

    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized h()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 170
    const-class v3, Lcom/avira/android/antivirus/af;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v1, "MVPVERCTRL"

    const-string v2, "performBackupAndExtractNewMavapiComponents - enter"

    invoke-static {v1, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/avira/android/antivirus/Antivirus;->getAntivirusComponentInstallPath()Ljava/lang/String;

    move-result-object v2

    .line 174
    const/4 v1, 0x0

    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/avira/android/antivirus/Antivirus;->getOnDemandVdfVersion()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/avira/android/antivirus/Antivirus;->isDemandScanRunning()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_0
    move v1, v0

    .line 177
    :cond_0
    :goto_1
    if-eqz v1, :cond_5

    .line 179
    invoke-static {}, Lcom/avira/android/antivirus/Antivirus;->getAntivirusComponentInstallPathSidegrade()Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_2
    invoke-static {v1}, Lcom/avira/android/antivirus/af;->a(Z)V

    .line 185
    invoke-static {v0}, Lcom/avira/android/utilities/i;->c(Ljava/lang/String;)Z

    move-result v0

    .line 186
    if-nez v0, :cond_1

    .line 188
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    const-string v2, "MVPVERCTRL"

    const-string v4, "Failed to empty install folder"

    invoke-virtual {v0, v2, v4}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_1
    if-eqz v1, :cond_4

    .line 193
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "MVPVERCTRL"

    const-string v1, "Extracting Update Components for Sidegrade..."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/avira/android/antivirus/Antivirus;->extractMavapiComponentsForSidegrade()V

    .line 197
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "MVPVERCTRL"

    const-string v1, "Setting Scan Engine configuration for Sidegrade..."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "antivirus2"

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_3
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "MVPVERCTRL"

    const-string v1, "Extraction Successful."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit v3

    return-void

    :cond_2
    move v1, v0

    .line 174
    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/avira/android/antivirus/Antivirus;->getAntivirusComponentInstallPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avira/android/utilities/i;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v1, v0

    goto :goto_1

    .line 205
    :cond_4
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "MVPVERCTRL"

    const-string v1, "Extracting Update Components..."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/avira/android/antivirus/Antivirus;->extractMavapiComponents()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method
