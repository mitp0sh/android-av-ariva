.class public Lcom/avira/android/common/gcm/GcmIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GcmIntentService"

.field private static final RECEIVE_COMMAND:Ljava/lang/String; = "command"

.field private static final RECEIVE_COMMAND_ID:Ljava/lang/String; = "commandId"

.field private static final RECEIVE_CONFIRM_ACKNOWLEDGE:Ljava/lang/String; = "confirm"

.field private static final RECEIVE_PARAMS:Ljava/lang/String; = "params"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "GcmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 42
    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v1, "commandId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "params"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v3, "confirm"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "command: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "commandId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "params: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "confirm: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 59
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v4

    new-instance v5, Lcom/avira/android/common/gcm/a;

    invoke-direct {v5, p0, v0, v1, v2}, Lcom/avira/android/common/gcm/a;-><init>(Lcom/avira/android/common/gcm/GcmIntentService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/avira/android/ApplicationService;->a(Ljava/lang/Runnable;)Z

    .line 69
    if-eqz v3, :cond_1

    const-string v0, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-direct {v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>(Ljava/lang/String;)V

    .line 72
    const-string v1, "confirmCommand"

    invoke-virtual {v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {v0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 77
    :cond_1
    invoke-static {p1}, Lcom/avira/android/common/gcm/GcmBroadcastReceiver;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method
