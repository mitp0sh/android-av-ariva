.class public Lcom/avira/android/blacklist/receivers/BLOnSmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final SMS_EXTRA_NAME:Ljava/lang/String; = "pdus"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 28
    const-string v3, ""

    .line 29
    const-string v2, ""

    .line 31
    const/4 v1, 0x0

    move v5, v1

    move-object v1, v3

    move-object v3, v2

    move v2, v5

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 33
    aget-object v1, v0, v2

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 31
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v4

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/a;->a(Ljava/lang/String;)Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLContact;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/avira/android/blacklist/receivers/BLOnSmsBroadcastReceiver;->abortBroadcast()V

    sget-object v2, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v1, v2, v3}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Ljava/lang/String;)V

    .line 41
    :cond_1
    return-void
.end method
