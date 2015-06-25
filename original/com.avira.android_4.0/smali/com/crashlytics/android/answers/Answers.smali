.class public Lcom/crashlytics/android/answers/Answers;
.super Lio/fabric/sdk/android/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/k",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final CRASHLYTICS_API_ENDPOINT:Ljava/lang/String; = "com.crashlytics.ApiEndpoint"

.field static final FIRST_LAUNCH_INTERVAL_IN_MS:J = 0x36ee80L

.field static final PREFKEY_ANALYTICS_LAUNCHED:Ljava/lang/String; = "analytics_launched"

.field static final SESSION_ANALYTICS_FILE_EXTENSION:Ljava/lang/String; = ".tap"

.field static final SESSION_ANALYTICS_FILE_NAME:Ljava/lang/String; = "session_analytics.tap"

.field private static final SESSION_ANALYTICS_TO_SEND_DIR:Ljava/lang/String; = "session_analytics_to_send"

.field public static final TAG:Ljava/lang/String; = "Answers"


# instance fields
.field private installedAt:J

.field private preferenceStore:Lio/fabric/sdk/android/services/e/b;

.field private sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lio/fabric/sdk/android/k;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/crashlytics/android/answers/Answers;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/crashlytics/android/answers/Answers;

    invoke-static {v0}, Lio/fabric/sdk/android/b;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/k;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/Answers;

    return-object v0
.end method

.method private initializeSessionAnalytics(Landroid/content/Context;)V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 130
    :try_start_0
    new-instance v0, Lcom/crashlytics/android/answers/SessionEventTransform;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/SessionEventTransform;-><init>()V

    .line 131
    new-instance v1, Lio/fabric/sdk/android/services/b/ai;

    invoke-direct {v1}, Lio/fabric/sdk/android/services/b/ai;-><init>()V

    .line 132
    new-instance v2, Lio/fabric/sdk/android/services/c/q;

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getSdkDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "session_analytics.tap"

    const-string v6, "session_analytics_to_send"

    invoke-direct {v2, v3, v4, v5, v6}, Lio/fabric/sdk/android/services/c/q;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v12, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;

    invoke-direct {v12, p1, v0, v1, v2}, Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;-><init>(Landroid/content/Context;Lcom/crashlytics/android/answers/SessionEventTransform;Lio/fabric/sdk/android/services/b/r;Lio/fabric/sdk/android/services/c/l;)V

    .line 138
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getIdManager()Lio/fabric/sdk/android/services/b/y;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/y;->g()Ljava/util/Map;

    move-result-object v2

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/y;->b()Ljava/lang/String;

    move-result-object v3

    .line 145
    sget-object v0, Lio/fabric/sdk/android/services/b/z;->ANDROID_ID:Lio/fabric/sdk/android/services/b/z;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 147
    sget-object v0, Lio/fabric/sdk/android/services/b/z;->ANDROID_ADVERTISING_ID:Lio/fabric/sdk/android/services/b/z;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 149
    sget-object v0, Lio/fabric/sdk/android/services/b/z;->FONT_TOKEN:Lio/fabric/sdk/android/services/b/z;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 151
    invoke-static {p1}, Lio/fabric/sdk/android/services/b/l;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-static {}, Lio/fabric/sdk/android/services/b/y;->d()Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-static {}, Lio/fabric/sdk/android/services/b/y;->e()Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    new-instance v0, Lcom/crashlytics/android/answers/SessionEventMetadata;

    iget-object v10, p0, Lcom/crashlytics/android/answers/Answers;->versionCode:Ljava/lang/String;

    iget-object v11, p0, Lcom/crashlytics/android/answers/Answers;->versionName:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lcom/crashlytics/android/answers/SessionEventMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 164
    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 166
    new-instance v2, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;

    new-instance v3, Lio/fabric/sdk/android/services/d/b;

    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/fabric/sdk/android/services/d/b;-><init>(Lio/fabric/sdk/android/q;)V

    invoke-direct {v2, v1, v0, v12, v3}, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;-><init>(Landroid/app/Application;Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Lio/fabric/sdk/android/services/d/m;)V

    iput-object v2, p0, Lcom/crashlytics/android/answers/Answers;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    .line 174
    :goto_0
    iget-wide v0, p0, Lcom/crashlytics/android/answers/Answers;->installedAt:J

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/answers/Answers;->isFirstLaunch(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 176
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->onApplicationInstall()V

    .line 182
    :cond_0
    :goto_1
    return-void

    .line 170
    :cond_1
    new-instance v1, Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    new-instance v2, Lio/fabric/sdk/android/services/d/b;

    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/fabric/sdk/android/services/d/b;-><init>(Lio/fabric/sdk/android/q;)V

    invoke-direct {v1, p1, v0, v12, v2}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;-><init>(Landroid/content/Context;Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Lio/fabric/sdk/android/services/d/m;)V

    iput-object v1, p0, Lcom/crashlytics/android/answers/Answers;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    const-string v0, "Crashlytics failed to initialize session analytics."

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/Answers;->initializeSessionAnalytics(Landroid/content/Context;)V

    .line 95
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/f/q;->a()Lio/fabric/sdk/android/services/f/q;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/f/q;->b()Lio/fabric/sdk/android/services/f/v;

    move-result-object v1

    .line 96
    if-nez v1, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 100
    :cond_0
    iget-object v2, v1, Lio/fabric/sdk/android/services/f/v;->d:Lio/fabric/sdk/android/services/f/m;

    iget-boolean v2, v2, Lio/fabric/sdk/android/services/f/m;->d:Z

    if-eqz v2, :cond_1

    .line 101
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    iget-object v1, v1, Lio/fabric/sdk/android/services/f/v;->e:Lio/fabric/sdk/android/services/f/b;

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->setAnalyticsSettingsData(Lio/fabric/sdk/android/services/f/b;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->e(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->disable()V

    .line 109
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method getAnalyticsLaunched()Z
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->preferenceStore:Lio/fabric/sdk/android/services/e/b;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/e/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "analytics_launched"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method getOverridenSpiEndpoint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSdkDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lio/fabric/sdk/android/services/e/a;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/e/a;-><init>(Lio/fabric/sdk/android/k;)V

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/e/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "1.1.0.25"

    return-object v0
.end method

.method installedRecently(J)Z
    .locals 5

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 236
    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFirstLaunch(J)Z
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getAnalyticsLaunched()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/crashlytics/android/answers/Answers;->installedRecently(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onApplicationInstall()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onInstall()V

    .line 206
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->preferenceStore:Lio/fabric/sdk/android/services/e/b;

    iget-object v1, p0, Lcom/crashlytics/android/answers/Answers;->preferenceStore:Lio/fabric/sdk/android/services/e/b;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/e/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "analytics_launched"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/e/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 209
    :cond_0
    return-void
.end method

.method public onException(Lio/fabric/sdk/android/services/b/p;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/b/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onCrash(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public onException(Lio/fabric/sdk/android/services/b/q;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/crashlytics/android/answers/Answers;->sessionAnalyticsManager:Lcom/crashlytics/android/answers/SessionAnalyticsManager;

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/b/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->onError(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method protected onPreExecute()Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 62
    :try_start_0
    new-instance v1, Lio/fabric/sdk/android/services/e/c;

    const-class v2, Lcom/crashlytics/android/answers/Answers;

    invoke-static {v2}, Lio/fabric/sdk/android/b;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/k;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/services/e/c;-><init>(Lio/fabric/sdk/android/k;)V

    iput-object v1, p0, Lcom/crashlytics/android/answers/Answers;->preferenceStore:Lio/fabric/sdk/android/services/e/b;

    .line 64
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 68
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 70
    iget v1, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/answers/Answers;->versionCode:Ljava/lang/String;

    .line 71
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0.0"

    :goto_0
    iput-object v1, p0, Lcom/crashlytics/android/answers/Answers;->versionName:Ljava/lang/String;

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v1, v4, :cond_1

    .line 75
    iget-wide v2, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v2, p0, Lcom/crashlytics/android/answers/Answers;->installedAt:J

    .line 81
    :goto_1
    const/4 v0, 0x1

    .line 85
    :goto_2
    return v0

    .line 71
    :cond_0
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/crashlytics/android/answers/Answers;->installedAt:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    :catch_0
    move-exception v1

    .line 83
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Error setting up app properties"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
