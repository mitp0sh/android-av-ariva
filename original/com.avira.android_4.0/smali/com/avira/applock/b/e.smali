.class public final Lcom/avira/applock/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NO_CUSTOM_DESCRIPTION:Ljava/lang/Integer;

.field private static final PACKAGE_NAME_AMAZON_APPS:Ljava/lang/String; = "com.amazon.venezia"

.field private static final PACKAGE_NAME_GOOGLE_PLAY_STORE:Ljava/lang/String; = "com.android.vending"

.field public static final PACKAGE_NAME_NATIVE_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final PACKAGE_NAME_PACKAGE_INSTALLER:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final PACKAGE_NAME_SAMSUNG_APPS:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/avira/applock/b/f;

    invoke-direct {v0}, Lcom/avira/applock/b/f;-><init>()V

    sput-object v0, Lcom/avira/applock/b/e;->a:Ljava/util/Map;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/applock/b/e;->NO_CUSTOM_DESCRIPTION:Ljava/lang/Integer;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    const-string v1, ""

    .line 66
    sget-object v0, Lcom/avira/applock/b/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 67
    sget-object v2, Lcom/avira/applock/b/e;->NO_CUSTOM_DESCRIPTION:Ljava/lang/Integer;

    if-eq v0, v2, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/avira/applock/b/e;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
