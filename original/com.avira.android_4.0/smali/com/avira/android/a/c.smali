.class public final Lcom/avira/android/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final APK_FILE_SUFFIX:Ljava/lang/String; = ".apk"

.field private static final DATA_PATH:Ljava/lang/String; = "/data"

.field private static final SDCARD_APP_PATH:Ljava/lang/String; = "/mnt/asec"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "/system"

.field private static c:Lcom/avira/android/a/c;


# instance fields
.field private final a:Landroid/content/pm/PackageManager;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/a/c;->a:Landroid/content/pm/PackageManager;

    .line 31
    return-void
.end method

.method public static a()Lcom/avira/android/a/c;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/avira/android/a/c;->c:Lcom/avira/android/a/c;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/avira/android/a/c;

    invoke-direct {v0}, Lcom/avira/android/a/c;-><init>()V

    sput-object v0, Lcom/avira/android/a/c;->c:Lcom/avira/android/a/c;

    .line 39
    :cond_0
    sget-object v0, Lcom/avira/android/a/c;->c:Lcom/avira/android/a/c;

    return-object v0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->startActivity(Landroid/content/Intent;)V

    .line 238
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/avira/android/a/b;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/avira/android/a/c;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/a/c;->b:Ljava/util/HashMap;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/avira/android/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/a/b;

    .line 91
    if-eqz p1, :cond_2

    .line 93
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/avira/android/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avira/android/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/avira/android/a/c;->a:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_2

    .line 99
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 100
    if-eqz v2, :cond_2

    .line 102
    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 103
    iput-object p1, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/avira/android/a/c;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    new-instance v0, Lcom/avira/android/a/b;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v2, v1, p1}, Lcom/avira/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/avira/android/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_2
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/system"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/mnt/asec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avira/android/a/c;->a(Ljava/lang/String;)Lcom/avira/android/a/b;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v1}, Lcom/avira/android/a/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 142
    :cond_1
    return-object v0
.end method

.method public final b()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/avira/android/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avira/android/a/c;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/a/c;->b:Ljava/util/HashMap;

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/avira/android/a/c;->a:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 61
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 62
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 64
    const-string v4, "/system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    iget-object v4, p0, Lcom/avira/android/a/c;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v4, Lcom/avira/android/a/b;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v2, v0, v3}, Lcom/avira/android/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/avira/android/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/avira/android/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/avira/android/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/system"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/mnt/asec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/avira/android/a/c;->a(Ljava/lang/String;)Lcom/avira/android/a/b;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v1}, Lcom/avira/android/a/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 169
    :cond_1
    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/avira/android/a/c;->a:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 214
    const-string v0, ""

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/avira/android/a/c;->a:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
