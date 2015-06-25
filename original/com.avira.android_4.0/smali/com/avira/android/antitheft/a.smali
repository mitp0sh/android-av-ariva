.class public final Lcom/avira/android/antitheft/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEVICE_ADMIN_ALERT_STATUS_DEFAULT_MODE:Z = true

.field private static final DEVICE_ADMIN_ALERT_STATUS_TAG:Ljava/lang/String; = "device_admin_alert_status_tag"


# direct methods
.method public static a(Z)V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "device_admin_alert_status_tag"

    invoke-static {v0, v1, p0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 38
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "device_admin_alert_status_tag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-string v2, "antitheft_alert_status_tag"

    invoke-static {v1, v2, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 39
    return-void
.end method
