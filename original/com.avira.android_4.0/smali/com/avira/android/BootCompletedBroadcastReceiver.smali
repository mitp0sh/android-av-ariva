.class public Lcom/avira/android/BootCompletedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final BOOT_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final PHONE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field private static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field private static final USER_PRESENT_ACTION:Ljava/lang/String; = "android.intent.action.USER_PRESENT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x3e8

    .line 44
    invoke-static {}, Lcom/avira/android/utilities/x;->a()Z

    move-result v0

    .line 45
    invoke-static {}, Lcom/avira/android/database/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    const/4 v1, 0x1

    invoke-static {v3, v1}, Lcom/avira/android/antitheft/lock/f;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;Z)V

    .line 50
    :cond_0
    invoke-static {}, Lcom/avira/android/antitheft/wipe/i;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v1, "BootCompletedBroadcastReceiver.onReceive"

    const-string v2, "RemoteWipe job in progress, RemoteWipe will be restarted."

    invoke-static {v1, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/avira/android/l;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 59
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_2

    .line 61
    new-instance v1, Lcom/avira/android/blacklist/receivers/BLOnSmsBroadcastReceiver;

    invoke-direct {v1}, Lcom/avira/android/blacklist/receivers/BLOnSmsBroadcastReceiver;-><init>()V

    .line 62
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 64
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/avira/android/ApplicationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    :cond_2
    new-instance v1, Lcom/avira/android/blacklist/receivers/BLOnCallBroadcastReceiver;

    invoke-direct {v1}, Lcom/avira/android/blacklist/receivers/BLOnCallBroadcastReceiver;-><init>()V

    .line 68
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 70
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/avira/android/ApplicationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    new-instance v1, Lcom/avira/android/antitheft/yell/ATOnOutgoingCallReceiver;

    invoke-direct {v1}, Lcom/avira/android/antitheft/yell/ATOnOutgoingCallReceiver;-><init>()V

    .line 74
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 76
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/avira/android/ApplicationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->d()V

    .line 81
    invoke-static {}, Lcom/avira/android/device/DeviceInfoUpdateService;->a()V

    .line 83
    new-instance v1, Lcom/avira/android/antivirus/scanscheduler/a;

    invoke-direct {v1}, Lcom/avira/android/antivirus/scanscheduler/a;-><init>()V

    invoke-virtual {v1}, Lcom/avira/android/antivirus/scanscheduler/a;->a()V

    .line 86
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->l()V

    .line 91
    invoke-static {v0, p1}, Lcom/avira/android/iab/a/k;->a(ZLandroid/content/Context;)V

    .line 94
    :cond_4
    invoke-static {p1}, Lcom/avira/android/vdfupdate/i;->a(Landroid/content/Context;)V

    .line 95
    return-void
.end method
