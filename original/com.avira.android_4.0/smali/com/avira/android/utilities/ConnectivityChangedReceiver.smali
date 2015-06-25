.class public Lcom/avira/android/utilities/ConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/avira/android/utilities/x;->a()Z

    move-result v0

    .line 29
    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/ae;->a(Z)V

    .line 30
    invoke-static {v0}, Lcom/avira/android/userprofile/w;->a(Z)V

    .line 31
    invoke-static {v0}, Lcom/avira/android/antivirus/bf;->a(Z)V

    .line 32
    new-instance v1, Lcom/avira/android/antivirus/be;

    invoke-direct {v1}, Lcom/avira/android/antivirus/be;-><init>()V

    invoke-virtual {v1, v0}, Lcom/avira/android/antivirus/be;->a(Z)V

    .line 33
    invoke-static {v0}, Lcom/avira/android/utilities/l;->a(Z)V

    .line 35
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/registration/j;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/common/gcm/b;->b()V

    .line 40
    :cond_0
    invoke-static {v0, p1}, Lcom/avira/android/iab/a/k;->a(ZLandroid/content/Context;)V

    .line 41
    return-void
.end method
