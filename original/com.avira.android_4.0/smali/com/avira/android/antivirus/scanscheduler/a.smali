.class public Lcom/avira/android/antivirus/scanscheduler/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NO_OF_WEEK_DAYS:I = 0x7

.field private static final REQUEST_ID:I = 0x344a88d

.field private static final SCAN_DAYS_BINARY:Ljava/lang/String; = "scanDays"

.field private static final SCAN_HOUR_PREF:Ljava/lang/String; = "scanHourPref"

.field private static final SCAN_MINUTE:Ljava/lang/String; = "scanMinutePref"

.field private static final SCAN_TIME_WINDOW_IN_MILIS:J = 0x1d4c0L

.field private static final TAG:Ljava/lang/String;

.field private static h:I


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/content/Context;

.field private final d:Z

.field private e:I

.field private f:I

.field private g:I

.field private i:Landroid/app/AlarmManager;

.field private final j:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/antivirus/scanscheduler/a;->TAG:Ljava/lang/String;

    .line 57
    const/16 v0, 0x40

    sput v0, Lcom/avira/android/antivirus/scanscheduler/a;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v3, p0, Lcom/avira/android/antivirus/scanscheduler/a;->a:I

    .line 47
    iput v2, p0, Lcom/avira/android/antivirus/scanscheduler/a;->b:I

    .line 64
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->c:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->d:Z

    .line 67
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->c:Landroid/content/Context;

    const-string v1, "scanHourPref"

    invoke-static {v0, v1, v3}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->e:I

    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->c:Landroid/content/Context;

    const-string v1, "scanMinutePref"

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->f:I

    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->c:Landroid/content/Context;

    const-string v1, "scanDays"

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->g:I

    .line 69
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->j:Ljava/text/SimpleDateFormat;

    .line 70
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 263
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->d()Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->i:Landroid/app/AlarmManager;

    .line 265
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/a;->c:Landroid/content/Context;

    const-class v2, Lcom/avira/android/antivirus/scanscheduler/StartScanReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/a;->c:Landroid/content/Context;

    const v2, 0x344a88d

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/avira/android/antivirus/scanscheduler/a;->i:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 271
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v3, 0x1

    const/4 v10, 0x7

    const/4 v1, 0x0

    .line 84
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antivirus/scanscheduler/a;->TAG:Ljava/lang/String;

    const-string v2, "refreshScanScheduler"

    invoke-static {v0, v2}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->g:I

    if-eqz v0, :cond_5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v2, 0xb

    iget v5, p0, Lcom/avira/android/antivirus/scanscheduler/a;->e:I

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    iget v5, p0, Lcom/avira/android/antivirus/scanscheduler/a;->f:I

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p0, v2}, Lcom/avira/android/antivirus/scanscheduler/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v10, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_0

    move-object v7, v0

    .line 86
    :goto_0
    if-eqz v7, :cond_7

    .line 88
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->d()Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->i:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/avira/android/antivirus/scanscheduler/a;->f()V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/avira/android/antivirus/scanscheduler/a;->c:Landroid/content/Context;

    const-class v3, Lcom/avira/android/antivirus/scanscheduler/StartScanReceiver;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/avira/android/antivirus/scanscheduler/a;->c:Landroid/content/Context;

    const v3, 0x344a88d

    invoke-static {v2, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->i:Landroid/app/AlarmManager;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    :goto_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antivirus/scanscheduler/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new alarm set for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/avira/android/antivirus/scanscheduler/a;->j:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_2
    return-void

    .line 85
    :cond_0
    iget v2, p0, Lcom/avira/android/antivirus/scanscheduler/a;->g:I

    rsub-int/lit8 v5, v4, 0x7

    shl-int v5, v3, v5

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v2, v5

    if-nez v2, :cond_1

    invoke-virtual {v0, v11, v3}, Ljava/util/Calendar;->add(II)V

    move-object v7, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v4, 0x1

    :goto_3
    if-gt v2, v10, :cond_3

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/avira/android/antivirus/scanscheduler/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v10, v2}, Ljava/util/Calendar;->set(II)V

    move-object v7, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_4
    add-int/lit8 v5, v4, -0x1

    if-gt v2, v5, :cond_5

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/avira/android/antivirus/scanscheduler/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v10, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v11, v3}, Ljava/util/Calendar;->add(II)V

    move-object v7, v0

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    move-object v7, v0

    goto/16 :goto_0

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->i:Landroid/app/AlarmManager;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 92
    :cond_7
    invoke-direct {p0}, Lcom/avira/android/antivirus/scanscheduler/a;->f()V

    goto :goto_2
.end method

.method protected final a(II)V
    .locals 3

    .prologue
    .line 191
    iput p1, p0, Lcom/avira/android/antivirus/scanscheduler/a;->e:I

    .line 192
    iput p2, p0, Lcom/avira/android/antivirus/scanscheduler/a;->f:I

    .line 193
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->c:Landroid/content/Context;

    const-string v1, "scanHourPref"

    iget v2, p0, Lcom/avira/android/antivirus/scanscheduler/a;->e:I

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 194
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->c:Landroid/content/Context;

    const-string v1, "scanMinutePref"

    iget v2, p0, Lcom/avira/android/antivirus/scanscheduler/a;->f:I

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 196
    invoke-virtual {p0}, Lcom/avira/android/antivirus/scanscheduler/a;->a()V

    .line 197
    return-void
.end method

.method protected final a(IZ)V
    .locals 3

    .prologue
    .line 223
    if-eqz p2, :cond_0

    .line 225
    iget v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->g:I

    sget v1, Lcom/avira/android/antivirus/scanscheduler/a;->h:I

    shr-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->g:I

    .line 232
    :goto_0
    invoke-virtual {p0}, Lcom/avira/android/antivirus/scanscheduler/a;->a()V

    .line 234
    iget-object v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->c:Landroid/content/Context;

    const-string v1, "scanDays"

    iget v2, p0, Lcom/avira/android/antivirus/scanscheduler/a;->g:I

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 236
    return-void

    .line 229
    :cond_0
    iget v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->g:I

    sget v1, Lcom/avira/android/antivirus/scanscheduler/a;->h:I

    xor-int/lit8 v1, v1, -0x1

    shr-int/2addr v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->g:I

    goto :goto_0
.end method

.method protected final a(I)Z
    .locals 2

    .prologue
    .line 164
    sget v0, Lcom/avira/android/antivirus/scanscheduler/a;->h:I

    shr-int/2addr v0, p1

    iget v1, p0, Lcom/avira/android/antivirus/scanscheduler/a;->g:I

    and-int/2addr v0, v1

    sget v1, Lcom/avira/android/antivirus/scanscheduler/a;->h:I

    shr-int/2addr v1, p1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->d:Z

    return v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->e:I

    return v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->f:I

    return v0
.end method

.method public final e()Z
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v8, 0xc

    .line 279
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 281
    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 284
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v5, Lcom/avira/android/antivirus/scanscheduler/a;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "A scan is programmed for today: "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->g:I

    sget v7, Lcom/avira/android/antivirus/scanscheduler/a;->h:I

    shr-int/2addr v7, v4

    and-int/2addr v0, v7

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antivirus/scanscheduler/a;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current hour "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " programmed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/avira/android/antivirus/scanscheduler/a;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    sget-object v0, Lcom/avira/android/antivirus/scanscheduler/a;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current minute "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " programmed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/avira/android/antivirus/scanscheduler/a;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->g:I

    sget v5, Lcom/avira/android/antivirus/scanscheduler/a;->h:I

    shr-int v4, v5, v4

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/avira/android/antivirus/scanscheduler/a;->e:I

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v0, v4, :cond_1

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v4, p0, Lcom/avira/android/antivirus/scanscheduler/a;->f:I

    sub-int/2addr v0, v4

    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v3, p0, Lcom/avira/android/antivirus/scanscheduler/a;->f:I

    sub-int/2addr v0, v3

    if-ltz v0, :cond_1

    .line 301
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 284
    goto :goto_0

    :cond_1
    move v1, v2

    .line 301
    goto :goto_1
.end method
