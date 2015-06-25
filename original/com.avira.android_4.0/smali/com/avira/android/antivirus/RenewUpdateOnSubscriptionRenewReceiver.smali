.class public Lcom/avira/android/antivirus/RenewUpdateOnSubscriptionRenewReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SUBSCRIPTION_RENEW"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 20
    invoke-static {p1}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 24
    const-string v0, "Perform component update after premium purchased..."

    .line 25
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v1, "SUBSCRIPTION_RENEW"

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/antivirus/i;->b(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->d()V

    .line 29
    return-void
.end method
