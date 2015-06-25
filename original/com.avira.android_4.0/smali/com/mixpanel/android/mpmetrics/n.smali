.class final Lcom/mixpanel/android/mpmetrics/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG:Z = false

.field public static final DONT_SEND_SURVEYS:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.MPConfig"

.field static final REFERRER_PREFS_NAME:Ljava/lang/String; = "com.mixpanel.android.mpmetrics.ReferralInfo"

.field public static final VERSION:Ljava/lang/String; = "4.0.1-RC1"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Z


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "com.mixpanel.android.MPConfig.BulkUploadLimit"

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/mpmetrics/n;->a:I

    .line 44
    const-string v0, "com.mixpanel.android.MPConfig.FlushInterval"

    const v1, 0xea60

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/mpmetrics/n;->b:I

    .line 45
    const-string v0, "com.mixpanel.android.MPConfig.DataExpiration"

    const v1, 0xa4cb800

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/mpmetrics/n;->c:I

    .line 46
    const-string v0, "com.mixpanel.android.MPConfig.DisableFallback"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/n;->d:Z

    .line 47
    const-string v0, "com.mixpanel.android.MPConfig.AutoCheckForSurveys"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/n;->k:Z

    .line 49
    const-string v0, "com.mixpanel.android.MPConfig.EventsEndpoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    const-string v0, "https://api.mixpanel.com/track?ip=1"

    .line 53
    :cond_0
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/n;->e:Ljava/lang/String;

    .line 55
    const-string v0, "com.mixpanel.android.MPConfig.EventsFallbackEndpoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    const-string v0, "http://api.mixpanel.com/track?ip=1"

    .line 59
    :cond_1
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/n;->f:Ljava/lang/String;

    .line 61
    const-string v0, "com.mixpanel.android.MPConfig.PeopleEndpoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    const-string v0, "https://api.mixpanel.com/engage"

    .line 65
    :cond_2
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/n;->g:Ljava/lang/String;

    .line 67
    const-string v0, "com.mixpanel.android.MPConfig.PeopleFallbackEndpoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    const-string v0, "http://api.mixpanel.com/engage"

    .line 71
    :cond_3
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/n;->h:Ljava/lang/String;

    .line 73
    const-string v0, "com.mixpanel.android.MPConfig.DecideEndpoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-nez v0, :cond_4

    .line 75
    const-string v0, "https://decide.mixpanel.com/decide"

    .line 77
    :cond_4
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/n;->i:Ljava/lang/String;

    .line 79
    const-string v0, "com.mixpanel.android.MPConfig.DecideFallbackEndpoint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    if-nez v0, :cond_5

    .line 81
    const-string v0, "http://decide.mixpanel.com/decide"

    .line 83
    :cond_5
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/n;->j:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/n;
    .locals 5

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 31
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 32
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 33
    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    :cond_0
    new-instance v2, Lcom/mixpanel/android/mpmetrics/n;

    invoke-direct {v2, v0}, Lcom/mixpanel/android/mpmetrics/n;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 37
    :catch_0
    move-exception v0

    .line 38
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t configure Mixpanel with package name "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/n;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/n;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/mixpanel/android/mpmetrics/n;->c:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/n;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/n;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/n;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/n;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/n;->k:Z

    return v0
.end method
