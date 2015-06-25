.class public Lcom/avira/android/common/receivers/LowBatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const-class v0, Lcom/avira/android/common/receivers/LowBatteryReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/common/receivers/LowBatteryReceiver;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avira/android/common/receivers/LowBatteryReceiver;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/avira/android/remotecomponents/LocateCommandIntegrator;

    const-string v1, "locate"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/avira/android/remotecomponents/LocateCommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/avira/android/remotecomponents/LocateCommandIntegrator;->e()V

    .line 26
    return-void
.end method
