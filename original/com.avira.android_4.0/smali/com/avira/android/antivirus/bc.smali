.class public final Lcom/avira/android/antivirus/bc;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static final APPLICATION_NAME_TAG:Ljava/lang/String; = "application_name"

.field public static final APPLICATION_PATH_TAG:Ljava/lang/String; = "application_path"

.field public static final BEGIN_SCAN_MESSAGE_INDICATOR:I = 0x3e8

.field private static a:I


# instance fields
.field private final b:Landroid/support/v4/app/NotificationCompat$Builder;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/avira/android/antivirus/bc;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/avira/android/antivirus/bc;->c:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/avira/android/antivirus/bc;->d:Ljava/lang/String;

    .line 36
    const-string v0, "\'%s\'"

    iput-object v0, p0, Lcom/avira/android/antivirus/bc;->f:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/bc;->e:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/avira/android/antivirus/bc;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/bc;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 44
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "application_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/bc;->c:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "application_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/bc;->d:Ljava/lang/String;

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/avira/android/antivirus/bc;->a:I

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    const-string v1, "engine_scan_completed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 60
    if-eqz v1, :cond_0

    .line 62
    const-string v1, "callback_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/antivirus/data/ScannerCallbackData;

    .line 65
    invoke-static {}, Lcom/avira/android/a/c;->a()Lcom/avira/android/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/antivirus/bc;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avira/android/a/c;->a(Ljava/lang/String;)Lcom/avira/android/a/b;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 69
    array-length v2, v0

    if-eqz v2, :cond_2

    .line 71
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/avira/android/antivirus/bc;->e:Landroid/content/Context;

    const-class v4, Lcom/avira/android/antivirus/OEScanResultDialogActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string v3, "dialog_message_tag"

    sget-boolean v4, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->b:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    const-string v3, "scan_result_tag"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    const-string v0, "package_name_tag"

    invoke-virtual {v1}, Lcom/avira/android/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object v0, p0, Lcom/avira/android/antivirus/bc;->e:Landroid/content/Context;

    sget v1, Lcom/avira/android/antivirus/bc;->a:I

    const/high16 v3, 0x10000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lcom/avira/android/antivirus/bc;->e:Landroid/content/Context;

    const v2, 0x7f080286

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    iget-object v0, p0, Lcom/avira/android/antivirus/bc;->e:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 86
    sget v3, Lcom/avira/android/antivirus/bc;->a:I

    iget-object v4, p0, Lcom/avira/android/antivirus/bc;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v5, "\'%s\'"

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/avira/android/antivirus/bc;->c:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 96
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.avira.android.ACTION_TRACK_CLEAN_APP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v2, "packageName"

    invoke-virtual {v1}, Lcom/avira/android/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
