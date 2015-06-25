.class public Lcom/avira/android/InstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final EXTRA_REFERRER:Ljava/lang/String; = "referrer"

.field public static final PREFS_TOKEN_KEY:Ljava/lang/String; = "prefs_token"

.field private static final SCREEN_NAME:Ljava/lang/String; = "InstalledFromCampaign"

.field private static final TAG:Ljava/lang/String; = "InstallReceiver"


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
    .locals 5

    .prologue
    .line 26
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    const-string v1, "InstallReceiver"

    const-string v2, "INSTALL_REFERRER broadcast came with no extras"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v1, "InstallReceiver"

    const-string v2, "received broadcast[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "utm_source"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    new-instance v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;-><init>()V

    .line 39
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 42
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->a()Lcom/google/android/gms/analytics/k;

    move-result-object v0

    .line 43
    const-string v1, "InstalledFromCampaign"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/k;->a(Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/google/android/gms/analytics/f;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/f;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/f;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/k;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 48
    :cond_1
    const-string v1, "prefs_token"

    invoke-static {p1, v1, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
