.class public final Lcom/avira/android/utilities/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AMAZON_STORE:Ljava/lang/String; = "com.amazon.venezia"

.field public static final AMAZON_STORE_LINK:Ljava/lang/String; = "amzn://apps/android?p="

.field public static final GOOGLE_STORE:Ljava/lang/String; = "com.android.vending"

.field public static final GOOGLE_STORE_LINK:Ljava/lang/String; = "market://details?id="

.field public static final GOOGLE_STORE_WEB_LINK:Ljava/lang/String; = "http://play.google.com/store/apps/details?id="


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 58
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
