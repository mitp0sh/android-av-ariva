.class public final Lcom/avira/android/securebrowsing/c/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_SECUREBROWSING_STATUS_CHANGE:Ljava/lang/String; = "com.avira.android.ACTION_SECUREBROWSING_STATUS_CHANGE"

.field private static final SECUREBROWSING_STATUS_TAG:Ljava/lang/String; = "securebrowsing_status_tag"


# direct methods
.method public static a()Z
    .locals 2

    .prologue
    .line 74
    const-string v0, "settingSecureBrowsingStatus"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Z)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 36
    if-eqz p0, :cond_0

    const-string v0, "1"

    .line 38
    :goto_0
    const-string v3, "settingSecureBrowsingStatus"

    invoke-static {v3, v0}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.avira.android.ACTION_SECUREBROWSING_STATUS_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "securebrowsing_status_tag"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 42
    if-eqz p0, :cond_2

    .line 44
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    invoke-static {}, Lcom/avira/android/ApplicationService;->l()V

    :goto_2
    move v0, v1

    .line 52
    :goto_3
    return v0

    .line 36
    :cond_0
    const-string v0, "0"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 38
    goto :goto_1

    .line 48
    :cond_2
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->m()V

    goto :goto_2

    :cond_3
    move v0, v2

    .line 52
    goto :goto_3
.end method
