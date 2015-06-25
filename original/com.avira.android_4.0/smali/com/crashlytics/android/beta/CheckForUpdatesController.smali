.class Lcom/crashlytics/android/beta/CheckForUpdatesController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final LAST_UPDATE_CHECK_DEFAULT:J = 0x0L

.field static final LAST_UPDATE_CHECK_KEY:Ljava/lang/String; = "last_update_check"


# instance fields
.field private final beta:Lcom/crashlytics/android/beta/Beta;

.field private final betaSettings:Lio/fabric/sdk/android/services/f/f;

.field private final buildProps:Lcom/crashlytics/android/beta/BuildProperties;

.field private final context:Landroid/content/Context;

.field private final currentTimeProvider:Lio/fabric/sdk/android/services/b/r;

.field private final httpRequestFactory:Lio/fabric/sdk/android/services/d/m;

.field private final idManager:Lio/fabric/sdk/android/services/b/y;

.field private final preferenceStore:Lio/fabric/sdk/android/services/e/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/beta/Beta;Lio/fabric/sdk/android/services/b/y;Lio/fabric/sdk/android/services/f/f;Lcom/crashlytics/android/beta/BuildProperties;Lio/fabric/sdk/android/services/e/b;Lio/fabric/sdk/android/services/b/r;Lio/fabric/sdk/android/services/d/m;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->beta:Lcom/crashlytics/android/beta/Beta;

    .line 39
    iput-object p3, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->idManager:Lio/fabric/sdk/android/services/b/y;

    .line 40
    iput-object p4, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->betaSettings:Lio/fabric/sdk/android/services/f/f;

    .line 41
    iput-object p5, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->buildProps:Lcom/crashlytics/android/beta/BuildProperties;

    .line 42
    iput-object p6, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->preferenceStore:Lio/fabric/sdk/android/services/e/b;

    .line 43
    iput-object p7, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->currentTimeProvider:Lio/fabric/sdk/android/services/b/r;

    .line 44
    iput-object p8, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->httpRequestFactory:Lio/fabric/sdk/android/services/d/m;

    .line 45
    return-void
.end method


# virtual methods
.method public checkForUpdates()V
    .locals 10

    .prologue
    .line 51
    iget-object v0, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->currentTimeProvider:Lio/fabric/sdk/android/services/b/r;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/b/r;->a()J

    move-result-wide v6

    .line 52
    iget-object v0, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->betaSettings:Lio/fabric/sdk/android/services/f/f;

    iget v0, v0, Lio/fabric/sdk/android/services/f/f;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 54
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Check for updates delay: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v2}, Lio/fabric/sdk/android/q;->b()V

    .line 56
    iget-object v2, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->preferenceStore:Lio/fabric/sdk/android/services/e/b;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/e/b;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last_update_check"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 59
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Check for updates last check time: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v4}, Lio/fabric/sdk/android/q;->b()V

    .line 61
    add-long/2addr v0, v2

    .line 63
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Check for updates current time: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", next check time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v2}, Lio/fabric/sdk/android/q;->b()V

    .line 66
    cmp-long v0, v6, v0

    if-ltz v0, :cond_0

    .line 68
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    .line 70
    iget-object v0, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/j;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    .line 71
    iget-object v0, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->idManager:Lio/fabric/sdk/android/services/b/y;

    iget-object v1, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->buildProps:Lcom/crashlytics/android/beta/BuildProperties;

    iget-object v1, v1, Lcom/crashlytics/android/beta/BuildProperties;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Lio/fabric/sdk/android/services/b/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    new-instance v0, Lcom/crashlytics/android/beta/CheckForUpdatesRequest;

    iget-object v1, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->beta:Lcom/crashlytics/android/beta/Beta;

    iget-object v2, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->beta:Lcom/crashlytics/android/beta/Beta;

    invoke-virtual {v2}, Lcom/crashlytics/android/beta/Beta;->getOverridenSpiEndpoint()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->betaSettings:Lio/fabric/sdk/android/services/f/f;

    iget-object v3, v3, Lio/fabric/sdk/android/services/f/f;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->httpRequestFactory:Lio/fabric/sdk/android/services/d/m;

    new-instance v5, Lcom/crashlytics/android/beta/CheckForUpdatesResponseTransform;

    invoke-direct {v5}, Lcom/crashlytics/android/beta/CheckForUpdatesResponseTransform;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/beta/CheckForUpdatesRequest;-><init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;Lcom/crashlytics/android/beta/CheckForUpdatesResponseTransform;)V

    .line 85
    iget-object v1, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->buildProps:Lcom/crashlytics/android/beta/BuildProperties;

    invoke-virtual {v0, v8, v9, v1}, Lcom/crashlytics/android/beta/CheckForUpdatesRequest;->invoke(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/beta/BuildProperties;)Lcom/crashlytics/android/beta/CheckForUpdatesResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v0, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->preferenceStore:Lio/fabric/sdk/android/services/e/b;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/e/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_update_check"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    :goto_0
    return-void

    .line 87
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/crashlytics/android/beta/CheckForUpdatesController;->preferenceStore:Lio/fabric/sdk/android/services/e/b;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/e/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_update_check"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    throw v0

    .line 92
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/q;->b()V

    goto :goto_0
.end method
