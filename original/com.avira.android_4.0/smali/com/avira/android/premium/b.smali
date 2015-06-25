.class public final Lcom/avira/android/premium/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_PREMIUM_STATUS_CHANGE:Ljava/lang/String; = "com.avira.android.ACTION_PREMIUM_STATUS_CHANGE"

.field public static final PREMIUM_STATUS_TAG:Ljava/lang/String; = "premium_status_tag"


# direct methods
.method public static a()Z
    .locals 2

    .prologue
    .line 74
    const-string v0, "settingPremiumStatus"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/avira/android/database/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 79
    goto :goto_0
.end method

.method public static a(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 40
    const/4 v2, 0x0

    .line 42
    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v0

    if-ne v0, p0, :cond_0

    move v0, v1

    .line 64
    :goto_0
    return v0

    .line 49
    :cond_0
    if-eqz p0, :cond_1

    const-string v0, "1"

    .line 51
    :goto_1
    const-string v3, "settingPremiumStatus"

    invoke-static {v3, v0}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    if-ne v0, v1, :cond_2

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.avira.android.ACTION_PREMIUM_STATUS_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "premium_status_tag"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 60
    invoke-static {p0}, Lcom/avira/android/securebrowsing/c/aa;->a(Z)Z

    move v0, v1

    goto :goto_0

    .line 49
    :cond_1
    const-string v0, "0"

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method
