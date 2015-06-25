.class public Lcom/avira/android/vdfupdate/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PHONE_HAS_VDF_PREF:Ljava/lang/String; = "phone_has_vdf"

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_CORRECTION_DISABLE_PERIOD:J = 0x1388L

.field private static final TIME_CORRECTION_THRESHOLD:J = 0x1388L

.field private static final UPTIME_START_KEY:Ljava/lang/String; = "UPTIME_START"

.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-class v0, Lcom/avira/android/vdfupdate/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/vdfupdate/i;->TAG:Ljava/lang/String;

    .line 22
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/avira/android/vdfupdate/i;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 75
    sget-object v2, Lcom/avira/android/vdfupdate/i;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveTimeDiffOnStart: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    const-string v2, "UPTIME_START"

    invoke-static {p0, v2, v0, v1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 79
    return-void
.end method

.method public static a()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 31
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    .line 32
    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 38
    invoke-virtual {v2}, Lcom/avira/android/ApplicationService;->x()J

    move-result-wide v6

    .line 39
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-gez v2, :cond_2

    move v0, v1

    .line 41
    goto :goto_0

    .line 44
    :cond_2
    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v2

    .line 45
    if-eqz v2, :cond_3

    const-wide/32 v2, 0x36ee80

    .line 47
    :goto_1
    sub-long/2addr v4, v6

    .line 49
    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 45
    :cond_3
    const-wide/32 v2, 0x5265c00

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->v()Ljava/lang/String;

    move-result-object v1

    .line 58
    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 62
    :cond_0
    return v0
.end method

.method public static b()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 88
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 91
    const-string v1, "UPTIME_START"

    invoke-static {v0, v1, v2, v3}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 92
    sub-long v4, v2, v4

    .line 94
    sget-object v1, Lcom/avira/android/vdfupdate/i;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "calcTimeDiffOnTimeChange: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1388

    cmp-long v1, v6, v8

    if-ltz v1, :cond_2

    .line 101
    sget-object v1, Lcom/avira/android/vdfupdate/i;->TAG:Ljava/lang/String;

    .line 104
    const-string v1, "UPTIME_START"

    invoke-static {v0, v1, v2, v3}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 107
    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->x()J

    move-result-wide v2

    .line 108
    cmp-long v1, v2, v10

    if-ltz v1, :cond_0

    .line 110
    const-string v1, "vdf_update_time_key"

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 115
    :cond_0
    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a()J

    move-result-wide v2

    .line 116
    cmp-long v1, v2, v10

    if-ltz v1, :cond_1

    .line 118
    const-string v1, "nextVdfCheck"

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 122
    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->c()V

    .line 125
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/avira/android/vdfupdate/i;->a:J

    .line 127
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 6

    .prologue
    .line 149
    sget-wide v0, Lcom/avira/android/vdfupdate/i;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/avira/android/vdfupdate/i;->a:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()V
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 169
    sget-object v2, Lcom/avira/android/vdfupdate/i;->TAG:Ljava/lang/String;

    .line 171
    const-string v2, "Perform component update after registration..."

    .line 172
    sget-object v3, Lcom/avira/android/vdfupdate/i;->TAG:Ljava/lang/String;

    .line 173
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/avira/android/antivirus/i;->b(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->d()V

    .line 178
    return-void
.end method
