.class public Lcom/avira/android/antitheft/yell/ATOnOutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "OnOutgoingCallReceiver"

    const-string v1, "onReceive - Stop/Pause Yell"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/avira/android/antitheft/yell/a;->a()Lcom/avira/android/antitheft/yell/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antitheft/yell/a;->c()V

    .line 24
    invoke-static {}, Lcom/avira/android/antitheft/yell/b;->a()Lcom/avira/android/antitheft/yell/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antitheft/yell/b;->b()V

    .line 25
    return-void
.end method
