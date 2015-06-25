.class public Lcom/avira/android/antivirus/OnAccessScanService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "OnAccessScanService"

.field public static final PACKAGE_NAME_TAG:Ljava/lang/String; = "packageName"

.field private static e:Lcom/avira/android/antivirus/OnAccessScanService;


# instance fields
.field private a:Landroid/app/Application;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/support/v4/app/NotificationCompat$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "OnAccessScanService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/avira/android/antivirus/OnAccessScanService;->e:Lcom/avira/android/antivirus/OnAccessScanService;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/avira/android/antivirus/OnAccessScanService;->e:Lcom/avira/android/antivirus/OnAccessScanService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avira/android/antivirus/OnAccessScanService;->stopForeground(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 46
    sget-object v0, Lcom/avira/android/antivirus/OnAccessScanService;->e:Lcom/avira/android/antivirus/OnAccessScanService;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/avira/android/antivirus/OnAccessScanService;->e:Lcom/avira/android/antivirus/OnAccessScanService;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/avira/android/antivirus/OnAccessScanService;->a:Landroid/app/Application;

    const-class v3, Lcom/avira/android/ApplicationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, v0, Lcom/avira/android/antivirus/OnAccessScanService;->a:Landroid/app/Application;

    const/high16 v3, 0x10000000

    invoke-static {v2, v6, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, v0, Lcom/avira/android/antivirus/OnAccessScanService;->d:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, v0, Lcom/avira/android/antivirus/OnAccessScanService;->c:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/avira/android/antivirus/OnAccessScanService;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/avira/android/antivirus/OnAccessScanService;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/avira/android/antivirus/OnAccessScanService;->startForeground(ILandroid/app/Notification;)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 29
    sput-object p0, Lcom/avira/android/antivirus/OnAccessScanService;->e:Lcom/avira/android/antivirus/OnAccessScanService;

    .line 30
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/OnAccessScanService;->a:Landroid/app/Application;

    .line 31
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/avira/android/antivirus/OnAccessScanService;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/OnAccessScanService;->d:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 33
    iget-object v0, p0, Lcom/avira/android/antivirus/OnAccessScanService;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/avira/android/antivirus/OnAccessScanService;->a:Landroid/app/Application;

    const v1, 0x7f080282

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/OnAccessScanService;->b:Ljava/lang/String;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/OnAccessScanService;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/avira/android/antivirus/OnAccessScanService;->a:Landroid/app/Application;

    const v1, 0x7f080285

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/OnAccessScanService;->c:Ljava/lang/String;

    .line 41
    :cond_1
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 42
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 77
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    .line 81
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avira/android/ApplicationService;->t()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/avira/android/antivirus/e;->ON_ACCESS:Lcom/avira/android/antivirus/e;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/antivirus/Antivirus;->scanFile(Landroid/os/Handler;Lcom/avira/android/antivirus/e;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method
