.class public Lcom/avira/applock/receivers/PackageChangesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1, p1}, Lcom/avira/applock/g/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 45
    invoke-static {p1}, Lcom/avira/applock/d/a;->b(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    .line 46
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1, v2}, Lcom/avira/applock/d/a;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 52
    :cond_0
    if-nez v0, :cond_1

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "package_list_changed_time_key"

    invoke-static {p1, v2, v0, v1}, Lcom/avira/applock/g/f;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 56
    :cond_1
    return-void
.end method
