.class final Lcom/avira/android/common/gcm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/avira/android/common/gcm/GcmIntentService;


# direct methods
.method constructor <init>(Lcom/avira/android/common/gcm/GcmIntentService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/avira/android/common/gcm/a;->d:Lcom/avira/android/common/gcm/GcmIntentService;

    iput-object p2, p0, Lcom/avira/android/common/gcm/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/avira/android/common/gcm/a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/avira/android/common/gcm/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avira/android/common/gcm/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/avira/android/common/gcm/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/avira/android/common/gcm/a;->c:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    const-string v2, "unlock"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/avira/android/database/a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const-string v0, "lock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "settingRemoteLock"

    const-string v5, "1"

    invoke-static {v0, v5}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "settingLockSender"

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "settingUnlockPassword"

    if-nez v1, :cond_5

    const-string v0, ""

    :goto_0
    invoke-static {v5, v0}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "unlock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "settingRemoteLock"

    const-string v5, "0"

    invoke-static {v0, v5}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "settingLockSender"

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "lock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/avira/android/remotecomponents/LockCommandIntegrator;

    invoke-direct {v0, v4, v3}, Lcom/avira/android/remotecomponents/LockCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->e()V

    .line 66
    :cond_4
    return-void

    :cond_5
    move-object v0, v1

    .line 65
    goto :goto_0

    :cond_6
    const-string v0, "wipe"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/avira/android/remotecomponents/WipeCommandIntegrator;

    invoke-direct {v0, v4, v3}, Lcom/avira/android/remotecomponents/WipeCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wipe_params"

    invoke-virtual {v0, v2, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v0, "locate"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/avira/android/remotecomponents/LocateCommandIntegrator;

    invoke-direct {v0, v4, v3}, Lcom/avira/android/remotecomponents/LocateCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v0, "deviceadmin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/avira/android/remotecomponents/DeviceAdminCommandIntegrator;

    invoke-direct {v0, v4, v3}, Lcom/avira/android/remotecomponents/DeviceAdminCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    sget-object v2, Lcom/avira/android/deviceadmin/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v0, "info"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/avira/android/remotecomponents/InfoCommandIntegrator;

    invoke-direct {v0, v4, v3}, Lcom/avira/android/remotecomponents/InfoCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const-string v0, "scream"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/avira/android/remotecomponents/ScreamCommandIntegrator;

    invoke-direct {v0, v4, v3}, Lcom/avira/android/remotecomponents/ScreamCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string v0, "unlock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/avira/android/remotecomponents/UnlockCommandIntegrator;

    invoke-direct {v0, v4, v3}, Lcom/avira/android/remotecomponents/UnlockCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    const-string v0, "refund"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/avira/android/remotecomponents/RefundCommandIntegrator;

    invoke-direct {v0, v4, v3}, Lcom/avira/android/remotecomponents/RefundCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    const-string v0, "expire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/avira/android/remotecomponents/ExpireCommandIntegrator;

    invoke-direct {v0, v4, v3}, Lcom/avira/android/remotecomponents/ExpireCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    move-object v0, v2

    goto/16 :goto_1
.end method
