.class final Lio/fabric/sdk/android/services/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ADVERTISING_INFO_PREFERENCES:Ljava/lang/String; = "TwitterAdvertisingInfoPreferences"

.field private static final PREFKEY_ADVERTISING_ID:Ljava/lang/String; = "advertising_id"

.field private static final PREFKEY_LIMIT_AD_TRACKING:Ljava/lang/String; = "limit_ad_tracking_enabled"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/fabric/sdk/android/services/e/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/b/c;->a:Landroid/content/Context;

    .line 20
    new-instance v0, Lio/fabric/sdk/android/services/e/c;

    const-string v1, "TwitterAdvertisingInfoPreferences"

    invoke-direct {v0, p1, v1}, Lio/fabric/sdk/android/services/e/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/b/c;->b:Lio/fabric/sdk/android/services/e/b;

    .line 21
    return-void
.end method

.method static synthetic a(Lio/fabric/sdk/android/services/b/c;)Lio/fabric/sdk/android/services/b/b;
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lio/fabric/sdk/android/services/b/c;->b()Lio/fabric/sdk/android/services/b/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Lio/fabric/sdk/android/services/b/b;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1}, Lio/fabric/sdk/android/services/b/c;->b(Lio/fabric/sdk/android/services/b/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/c;->b:Lio/fabric/sdk/android/services/e/b;

    iget-object v1, p0, Lio/fabric/sdk/android/services/b/c;->b:Lio/fabric/sdk/android/services/e/b;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/e/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    iget-object v3, p1, Lio/fabric/sdk/android/services/b/b;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    iget-boolean v3, p1, Lio/fabric/sdk/android/services/b/b;->b:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/e/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/c;->b:Lio/fabric/sdk/android/services/e/b;

    iget-object v1, p0, Lio/fabric/sdk/android/services/b/c;->b:Lio/fabric/sdk/android/services/e/b;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/e/b;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "advertising_id"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "limit_ad_tracking_enabled"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/e/b;->a(Landroid/content/SharedPreferences$Editor;)Z

    goto :goto_0
.end method

.method static synthetic a(Lio/fabric/sdk/android/services/b/c;Lio/fabric/sdk/android/services/b/b;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/b/c;->a(Lio/fabric/sdk/android/services/b/b;)V

    return-void
.end method

.method private b()Lio/fabric/sdk/android/services/b/b;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lio/fabric/sdk/android/services/b/e;

    iget-object v1, p0, Lio/fabric/sdk/android/services/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/b/e;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-interface {v0}, Lio/fabric/sdk/android/services/b/i;->a()Lio/fabric/sdk/android/services/b/b;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lio/fabric/sdk/android/services/b/c;->b(Lio/fabric/sdk/android/services/b/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    new-instance v0, Lio/fabric/sdk/android/services/b/f;

    iget-object v1, p0, Lio/fabric/sdk/android/services/b/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/b/f;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-interface {v0}, Lio/fabric/sdk/android/services/b/i;->a()Lio/fabric/sdk/android/services/b/b;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lio/fabric/sdk/android/services/b/c;->b(Lio/fabric/sdk/android/services/b/b;)Z

    .line 108
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    invoke-interface {v1}, Lio/fabric/sdk/android/q;->b()V

    .line 116
    return-object v0
.end method

.method private static b(Lio/fabric/sdk/android/services/b/b;)Z
    .locals 1

    .prologue
    .line 94
    if-eqz p0, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/services/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lio/fabric/sdk/android/services/b/b;
    .locals 4

    .prologue
    .line 33
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/c;->b:Lio/fabric/sdk/android/services/e/b;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/e/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "advertising_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lio/fabric/sdk/android/services/b/c;->b:Lio/fabric/sdk/android/services/e/b;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/e/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "limit_ad_tracking_enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v0, Lio/fabric/sdk/android/services/b/b;

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/b/b;-><init>(Ljava/lang/String;Z)V

    .line 34
    invoke-static {v0}, Lio/fabric/sdk/android/services/b/c;->b(Lio/fabric/sdk/android/services/b/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    invoke-interface {v1}, Lio/fabric/sdk/android/q;->b()V

    .line 36
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/fabric/sdk/android/services/b/d;

    invoke-direct {v2, p0, v0}, Lio/fabric/sdk/android/services/b/d;-><init>(Lio/fabric/sdk/android/services/b/c;Lio/fabric/sdk/android/services/b/b;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 42
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-direct {p0}, Lio/fabric/sdk/android/services/b/c;->b()Lio/fabric/sdk/android/services/b/b;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/b/c;->a(Lio/fabric/sdk/android/services/b/b;)V

    goto :goto_0
.end method
