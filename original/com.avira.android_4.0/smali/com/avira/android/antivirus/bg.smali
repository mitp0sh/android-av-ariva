.class public final Lcom/avira/android/antivirus/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NOTIFICATION_ICON_RES_ID:I

.field private static final SCAN_PROGRESS_NOTIFICATION_ID:I = 0x127b2

.field private static final THREATS_FOUND_NOTIFICATION_ID:I = 0x132cd


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v4/app/NotificationCompat$Builder;

.field private c:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const v0, 0x7f0200be

    :goto_0
    sput v0, Lcom/avira/android/antivirus/bg;->NOTIFICATION_ICON_RES_ID:I

    return-void

    :cond_0
    const v0, 0x7f0200c0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/avira/android/antivirus/bg;->a:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private a(Ljava/lang/Class;)Landroid/app/PendingIntent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private d()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avira/android/antivirus/bg;->c:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->e()Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/bg;->c:Landroid/app/NotificationManager;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/bg;->c:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/avira/android/antivirus/bg;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/bg;->a:Landroid/content/Context;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/bg;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080347

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/avira/android/antivirus/ScanNotificationActionReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v2, v5, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 62
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/avira/android/antivirus/bg;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/avira/android/antivirus/bg;->NOTIFICATION_ICON_RES_ID:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/avira/android/antivirus/bg;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200be

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080346

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x1080038

    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080288

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-class v1, Lcom/avira/android/antivirus/AntivirusOEActivity;

    invoke-direct {p0, v1}, Lcom/avira/android/antivirus/bg;->a(Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/bg;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 73
    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->d()Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x127b2

    iget-object v2, p0, Lcom/avira/android/antivirus/bg;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 74
    return-void
.end method

.method protected final a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 78
    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080349

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/avira/android/antivirus/bg;->NOTIFICATION_ICON_RES_ID:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/antivirus/bg;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200be

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080291

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-class v1, Lcom/avira/android/antivirus/OEScanResultActivity;

    invoke-direct {p0, v1}, Lcom/avira/android/antivirus/bg;->a(Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 89
    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->d()Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0x132cd

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 90
    return-void
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/avira/android/antivirus/bg;->NOTIFICATION_ICON_RES_ID:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antivirus/bg;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200be

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080291

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08034a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-class v1, Lcom/avira/android/antivirus/AntivirusOEActivity;

    invoke-direct {p0, v1}, Lcom/avira/android/antivirus/bg;->a(Ljava/lang/Class;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 103
    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->d()Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0x132cd

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 104
    return-void
.end method

.method protected final b(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 108
    iget-object v0, p0, Lcom/avira/android/antivirus/bg;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->e()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080347

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/avira/android/antivirus/bg;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 113
    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->d()Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x127b2

    iget-object v2, p0, Lcom/avira/android/antivirus/bg;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 116
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/avira/android/antivirus/bg;->d()Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x127b2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/antivirus/bg;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 122
    return-void
.end method
