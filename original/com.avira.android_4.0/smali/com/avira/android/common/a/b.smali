.class public final Lcom/avira/android/common/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APP_RATED_PREF:Ljava/lang/String; = "app_rated"

.field private static final DAYS_BETWEEN_RATE_REQUESTS:I = 0xa

.field public static final DEVICE_LOCATED_OR_YELL_TRIGGERED_PREF:Ljava/lang/String; = "located_or_yell_triggered"

.field public static final DEVICE_UNLOCKED_PREF:Ljava/lang/String; = "device_unlocked"

.field public static final EMAIL_SENT_TO_BREACHED_CONTACT_PREF:Ljava/lang/String; = "sent_email_to_breached_contact"

.field protected static final LAST_DIALOG_DISPLAY_TIME_PREF:Ljava/lang/String; = "last_dialog_display_time_pref"

.field private static final MIN_USER_INTERACTIONS_BEFORE_RATE_DIALOG_IS_SHOWN:I = 0x3

.field public static final SCAN_SCHEDULER_ACTIVATED_PREF:Ljava/lang/String; = "scanSchedulerActivated"

.field public static final USER_INTERACTIONS_PREF:Ljava/lang/String; = "userInteractions"


# direct methods
.method public static a(Z)V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "scanSchedulerActivated"

    invoke-static {v0, v1, p0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 100
    invoke-static {}, Lcom/avira/android/common/a/b;->b()V

    .line 101
    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 40
    const-class v1, Lcom/avira/android/common/a/b;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    const-string v3, "app_rated"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 47
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/avira/android/debug/f;->ENABLED:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/avira/android/common/a/b;->c()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 52
    :cond_2
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    const-string v3, "last_dialog_display_time_pref"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 59
    sget-boolean v2, Lcom/avira/android/debug/f;->ENABLED:Z

    if-eqz v2, :cond_4

    .line 61
    const-wide/16 v2, 0x1388

    .line 69
    :goto_1
    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    sub-long v4, v6, v4

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    .line 72
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :cond_4
    const-wide/32 v2, 0x337f9800

    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Lcom/avira/android/common/a/b;->c()I

    move-result v0

    .line 81
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-string v2, "userInteractions"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public static b(Z)V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "sent_email_to_breached_contact"

    invoke-static {v0, v1, p0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 107
    invoke-static {}, Lcom/avira/android/common/a/b;->b()V

    .line 108
    return-void
.end method

.method private static c()I
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "userInteractions"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c(Z)V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "located_or_yell_triggered"

    invoke-static {v0, v1, p0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 114
    invoke-static {}, Lcom/avira/android/common/a/b;->b()V

    .line 115
    return-void
.end method

.method public static d(Z)V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "device_unlocked"

    invoke-static {v0, v1, p0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 122
    invoke-static {}, Lcom/avira/android/common/a/b;->b()V

    .line 123
    return-void
.end method
