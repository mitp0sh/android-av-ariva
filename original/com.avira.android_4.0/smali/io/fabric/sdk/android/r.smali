.class final Lio/fabric/sdk/android/r;
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


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/k;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/fabric/sdk/android/services/d/m;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/pm/PackageInfo;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lio/fabric/sdk/android/k;-><init>()V

    .line 41
    iput-object p1, p0, Lio/fabric/sdk/android/r;->a:Ljava/util/Collection;

    .line 42
    new-instance v0, Lio/fabric/sdk/android/services/d/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/d/b;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/r;->b:Lio/fabric/sdk/android/services/d/m;

    .line 43
    return-void
.end method

.method private a(Lio/fabric/sdk/android/services/f/n;Ljava/util/Collection;)Lio/fabric/sdk/android/services/f/d;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/f/n;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/k;",
            ">;)",
            "Lio/fabric/sdk/android/services/f/d;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Lio/fabric/sdk/android/r;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    invoke-static {}, Lio/fabric/sdk/android/b;->d()Z

    move-result v1

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/j;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lio/fabric/sdk/android/services/b/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    iget-object v0, p0, Lio/fabric/sdk/android/r;->h:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/s;->a(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/s;->a()I

    move-result v7

    .line 169
    invoke-virtual {p0}, Lio/fabric/sdk/android/r;->getIdManager()Lio/fabric/sdk/android/services/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/y;->c()Ljava/lang/String;

    move-result-object v2

    .line 171
    new-instance v0, Lio/fabric/sdk/android/services/f/d;

    iget-object v3, p0, Lio/fabric/sdk/android/r;->g:Ljava/lang/String;

    iget-object v4, p0, Lio/fabric/sdk/android/r;->f:Ljava/lang/String;

    iget-object v6, p0, Lio/fabric/sdk/android/r;->i:Ljava/lang/String;

    iget-object v8, p0, Lio/fabric/sdk/android/r;->j:Ljava/lang/String;

    const-string v9, "0"

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lio/fabric/sdk/android/services/f/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/f/n;Ljava/util/Collection;)V

    return-object v0
.end method

.method private a()Ljava/lang/Boolean;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 75
    invoke-virtual {p0}, Lio/fabric/sdk/android/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 80
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/services/f/q;->a()Lio/fabric/sdk/android/services/f/q;

    move-result-object v0

    iget-object v2, p0, Lio/fabric/sdk/android/r;->idManager:Lio/fabric/sdk/android/services/b/y;

    iget-object v3, p0, Lio/fabric/sdk/android/r;->b:Lio/fabric/sdk/android/services/d/m;

    iget-object v4, p0, Lio/fabric/sdk/android/r;->f:Ljava/lang/String;

    iget-object v5, p0, Lio/fabric/sdk/android/r;->g:Ljava/lang/String;

    invoke-direct {p0}, Lio/fabric/sdk/android/r;->b()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lio/fabric/sdk/android/services/f/q;->a(Lio/fabric/sdk/android/k;Lio/fabric/sdk/android/services/b/y;Lio/fabric/sdk/android/services/d/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/f/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/f/q;->c()Z

    .line 85
    invoke-static {}, Lio/fabric/sdk/android/services/f/q;->a()Lio/fabric/sdk/android/services/f/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/f/q;->b()Lio/fabric/sdk/android/services/f/v;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :goto_0
    if-eqz v0, :cond_1

    .line 92
    :try_start_1
    iget-object v1, v0, Lio/fabric/sdk/android/services/f/v;->a:Lio/fabric/sdk/android/services/f/e;

    iget-object v2, p0, Lio/fabric/sdk/android/r;->a:Ljava/util/Collection;

    const/4 v0, 0x1

    const-string v3, "new"

    iget-object v4, v1, Lio/fabric/sdk/android/services/f/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lio/fabric/sdk/android/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Lio/fabric/sdk/android/services/f/n;->a(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/f/n;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lio/fabric/sdk/android/r;->a(Lio/fabric/sdk/android/services/f/n;Ljava/util/Collection;)Lio/fabric/sdk/android/services/f/d;

    move-result-object v0

    new-instance v2, Lio/fabric/sdk/android/services/f/h;

    invoke-direct {p0}, Lio/fabric/sdk/android/r;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lio/fabric/sdk/android/services/f/e;->c:Ljava/lang/String;

    iget-object v4, p0, Lio/fabric/sdk/android/r;->b:Lio/fabric/sdk/android/services/d/m;

    invoke-direct {v2, p0, v3, v1, v4}, Lio/fabric/sdk/android/services/f/h;-><init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;)V

    invoke-virtual {v2, v0}, Lio/fabric/sdk/android/services/f/h;->a(Lio/fabric/sdk/android/services/f/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lio/fabric/sdk/android/services/f/q;->a()Lio/fabric/sdk/android/services/f/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/f/q;->d()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :cond_0
    :goto_1
    move v7, v0

    .line 97
    :cond_1
    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    goto :goto_0

    .line 92
    :cond_2
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to create app with Crashlytics service."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    goto :goto_1

    :cond_3
    const-string v3, "configured"

    iget-object v4, v1, Lio/fabric/sdk/android/services/f/e;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lio/fabric/sdk/android/services/f/q;->a()Lio/fabric/sdk/android/services/f/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/f/q;->d()Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-boolean v3, v1, Lio/fabric/sdk/android/services/f/e;->e:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v3

    invoke-interface {v3}, Lio/fabric/sdk/android/q;->b()V

    invoke-virtual {p0}, Lio/fabric/sdk/android/r;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v9}, Lio/fabric/sdk/android/services/f/n;->a(Landroid/content/Context;Ljava/lang/String;)Lio/fabric/sdk/android/services/f/n;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lio/fabric/sdk/android/r;->a(Lio/fabric/sdk/android/services/f/n;Ljava/util/Collection;)Lio/fabric/sdk/android/services/f/d;

    move-result-object v2

    new-instance v3, Lio/fabric/sdk/android/services/f/aa;

    invoke-direct {p0}, Lio/fabric/sdk/android/r;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lio/fabric/sdk/android/services/f/e;->c:Ljava/lang/String;

    iget-object v5, p0, Lio/fabric/sdk/android/r;->b:Lio/fabric/sdk/android/services/d/m;

    invoke-direct {v3, p0, v4, v1, v5}, Lio/fabric/sdk/android/services/f/aa;-><init>(Lio/fabric/sdk/android/k;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/d/m;)V

    invoke-virtual {v3, v2}, Lio/fabric/sdk/android/services/f/aa;->a(Lio/fabric/sdk/android/services/f/d;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error performing auto configuration."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lio/fabric/sdk/android/r;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lio/fabric/sdk/android/r;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "1.1.0.25"

    return-object v0
.end method

.method protected final onPreExecute()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/r;->getIdManager()Lio/fabric/sdk/android/services/b/y;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/b/y;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/r;->h:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lio/fabric/sdk/android/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/r;->c:Landroid/content/pm/PackageManager;

    .line 55
    invoke-virtual {p0}, Lio/fabric/sdk/android/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/r;->d:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lio/fabric/sdk/android/r;->c:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lio/fabric/sdk/android/r;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/r;->e:Landroid/content/pm/PackageInfo;

    .line 57
    iget-object v1, p0, Lio/fabric/sdk/android/r;->e:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/r;->f:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lio/fabric/sdk/android/r;->e:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0.0"

    :goto_0
    iput-object v1, p0, Lio/fabric/sdk/android/r;->g:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lio/fabric/sdk/android/r;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lio/fabric/sdk/android/r;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/r;->i:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lio/fabric/sdk/android/r;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/r;->j:Ljava/lang/String;

    .line 66
    const/4 v0, 0x1

    .line 70
    :goto_1
    return v0

    .line 58
    :cond_0
    iget-object v1, p0, Lio/fabric/sdk/android/r;->e:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed init"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
