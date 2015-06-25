.class public final Lcom/avira/android/antivirus/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SETTINGS_ADWARE:Ljava/lang/String; = "av_settings_adware"

.field public static final SETTINGS_ADWARE_DEFAULT:Z = true

.field public static final SETTINGS_PUA:Ljava/lang/String; = "av_settings_pua"

.field public static final SETTINGS_PUA_DEFAULT:Z = false

.field public static final SETTINGS_SCAN_APPS:Ljava/lang/String; = "av_settings_scan_apps"

.field public static final SETTINGS_SCAN_APPS_DEFAULT:Z = true

.field public static final SETTINGS_SCAN_FILES:Ljava/lang/String; = "av_settings_scan_files"

.field public static final SETTINGS_SCAN_FILES_DEFAULT:Z = true

.field public static final SETTINGS_SHOW_THREATS_ONLY:Ljava/lang/String; = "av_settings_threats_only"

.field public static final SETTINGS_SHOW_THREATS_ONLY_DEFAULT:Z


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/antivirus/u;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v0, Lcom/avira/android/antivirus/u;

    invoke-direct {v0}, Lcom/avira/android/antivirus/u;-><init>()V

    .line 43
    const v2, 0x7f08021a

    invoke-virtual {v0, v2}, Lcom/avira/android/antivirus/u;->a(I)V

    .line 44
    const-string v2, "av_settings_adware"

    invoke-virtual {v0, v2}, Lcom/avira/android/antivirus/u;->a(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, v4}, Lcom/avira/android/antivirus/u;->c(Z)V

    .line 46
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/avira/android/antivirus/u;

    invoke-direct {v0}, Lcom/avira/android/antivirus/u;-><init>()V

    .line 49
    const v2, 0x7f08021b

    invoke-virtual {v0, v2}, Lcom/avira/android/antivirus/u;->a(I)V

    .line 50
    const-string v2, "av_settings_pua"

    invoke-virtual {v0, v2}, Lcom/avira/android/antivirus/u;->a(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v3}, Lcom/avira/android/antivirus/u;->c(Z)V

    .line 52
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Lcom/avira/android/antivirus/u;

    invoke-direct {v0}, Lcom/avira/android/antivirus/u;-><init>()V

    .line 55
    const v2, 0x7f08034e

    invoke-virtual {v0, v2}, Lcom/avira/android/antivirus/u;->a(I)V

    .line 56
    const-string v2, "av_settings_threats_only"

    invoke-virtual {v0, v2}, Lcom/avira/android/antivirus/u;->a(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, v3}, Lcom/avira/android/antivirus/u;->c(Z)V

    .line 58
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Lcom/avira/android/antivirus/u;

    invoke-direct {v0}, Lcom/avira/android/antivirus/u;-><init>()V

    .line 61
    const v2, 0x7f08034d

    invoke-virtual {v0, v2}, Lcom/avira/android/antivirus/u;->a(I)V

    .line 62
    const-string v2, "av_settings_scan_files"

    invoke-virtual {v0, v2}, Lcom/avira/android/antivirus/u;->a(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v4}, Lcom/avira/android/antivirus/u;->c(Z)V

    .line 64
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v2, Lcom/avira/android/antivirus/u;

    invoke-direct {v2}, Lcom/avira/android/antivirus/u;-><init>()V

    .line 67
    const v3, 0x7f08034c

    invoke-virtual {v2, v3}, Lcom/avira/android/antivirus/u;->a(I)V

    .line 68
    const-string v3, "av_settings_scan_apps"

    invoke-virtual {v2, v3}, Lcom/avira/android/antivirus/u;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, v4}, Lcom/avira/android/antivirus/u;->c(Z)V

    .line 70
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v2, v0}, Lcom/avira/android/antivirus/u;->a(Lcom/avira/android/antivirus/u;)V

    .line 74
    invoke-virtual {v0, v2}, Lcom/avira/android/antivirus/u;->a(Lcom/avira/android/antivirus/u;)V

    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/u;

    .line 78
    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->e()Z

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/avira/android/antivirus/u;->a(Z)V

    .line 79
    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->c()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/avira/android/antivirus/u;->b(Z)V

    goto :goto_0

    .line 82
    :cond_0
    return-object v1
.end method

.method public static a()Z
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "av_settings_adware"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/antivirus/u;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 99
    const/4 v0, 0x0

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/u;

    .line 103
    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->c()Z

    move-result v4

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->d()Z

    move-result v5

    if-eq v4, v5, :cond_2

    .line 105
    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->c()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 108
    goto :goto_0

    .line 110
    :cond_0
    if-eqz v1, :cond_1

    .line 112
    invoke-static {v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 115
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 136
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "av_settings_pua"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
