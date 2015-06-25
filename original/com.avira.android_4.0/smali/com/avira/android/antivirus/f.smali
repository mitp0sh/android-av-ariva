.class public final Lcom/avira/android/antivirus/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SCAN_RESULT_ALERT_STATUS_DEFAULT_MODE:Z = true

.field public static final SCAN_RESULT_ALERT_STATUS_TAG:Ljava/lang/String; = "scan_result_alert_status_tag"

.field private static a:Lcom/avira/android/antivirus/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/avira/android/antivirus/f;

    invoke-direct {v0}, Lcom/avira/android/antivirus/f;-><init>()V

    sput-object v0, Lcom/avira/android/antivirus/f;->a:Lcom/avira/android/antivirus/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a()Lcom/avira/android/antivirus/f;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/avira/android/antivirus/f;->a:Lcom/avira/android/antivirus/f;

    return-object v0
.end method

.method public static a(Z)Z
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 61
    const-string v1, "scan_result_alert_status_tag"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 65
    invoke-static {}, Lcom/avira/android/antivirus/f;->b()V

    .line 67
    return v0
.end method

.method public static b()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-static {}, Lcom/avira/android/firstscan/a;->c()Z

    move-result v1

    .line 40
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "scan_result_alert_status_tag"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 44
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 46
    :goto_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-string v2, "antivirus_alert_status_tag"

    invoke-static {v1, v2, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 47
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
