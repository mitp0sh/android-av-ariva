.class public final Lcom/avira/android/firstscan/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FIRST_SCAN_COMPLETED_PREF:Ljava/lang/String; = "first_scan_completed"


# direct methods
.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/avira/android/firstscan/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/avira/android/firstscan/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avira/android/firstscan/a;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 32
    :goto_0
    monitor-exit v1

    return v0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 4

    .prologue
    .line 43
    const-class v1, Lcom/avira/android/firstscan/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v2, "first_scan_completed"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v1

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c()Z
    .locals 4

    .prologue
    .line 58
    const-class v1, Lcom/avira/android/firstscan/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v2, "first_scan_completed"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d()Z
    .locals 2

    .prologue
    .line 68
    const-class v0, Lcom/avira/android/firstscan/a;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/avira/android/antivirus/af;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e()Z
    .locals 3

    .prologue
    .line 78
    const-class v1, Lcom/avira/android/firstscan/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/avira/android/antivirus/af;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/avira/android/antivirus/af;->c()Lcom/avira/android/antivirus/ae;

    move-result-object v0

    .line 82
    sget-object v2, Lcom/avira/android/antivirus/ae;->MAVAPI_UPDATE_ACTION_IN_PROGRESS:Lcom/avira/android/antivirus/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 88
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized f()V
    .locals 3

    .prologue
    .line 104
    const-class v1, Lcom/avira/android/firstscan/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "1"

    .line 107
    const-string v2, "settingFirstScanGUIFlowInterrupted"

    invoke-static {v2, v0}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v1

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized g()Z
    .locals 3

    .prologue
    .line 123
    const-class v1, Lcom/avira/android/firstscan/a;

    monitor-enter v1

    :try_start_0
    const-string v0, "settingFirstScanGUIFlowInterrupted"

    const-string v2, "0"

    invoke-static {v0, v2}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
