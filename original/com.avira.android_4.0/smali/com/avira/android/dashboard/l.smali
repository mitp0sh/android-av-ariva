.class public final Lcom/avira/android/dashboard/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANTITHEFT_ALERT_STATUS_DEFAULT_MODE:Z = true

.field public static final ANTITHEFT_ALERT_STATUS_TAG:Ljava/lang/String; = "antitheft_alert_status_tag"

.field private static final ANTIVIRUS_ALERT_STATUS_DEFAULT_MODE:Z = true

.field public static final ANTIVIRUS_ALERT_STATUS_TAG:Ljava/lang/String; = "antivirus_alert_status_tag"


# direct methods
.method public static a()Z
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "antivirus_alert_status_tag"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
