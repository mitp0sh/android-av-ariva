.class public Lcom/avira/applock/receivers/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/avira/applock/service/AppLockerService;->a(Landroid/content/Context;Z)V

    .line 26
    return-void
.end method
