.class public final Lcom/avira/android/antitheft/wipe/m;
.super Lcom/avira/android/antitheft/wipe/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avira/android/antitheft/wipe/n;-><init>()V

    .line 23
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 109
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 111
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/avira/android/antitheft/wipe/m;->a(Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 122
    :cond_2
    return-void
.end method

.method private static b()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.ACTION_WIPE_JOB_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    const-string v1, "wipe_job_name_tag"

    sget-object v2, Lcom/avira/android/database/m;->StorageWipe:Lcom/avira/android/database/m;

    invoke-virtual {v2}, Lcom/avira/android/database/m;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/avira/android/antitheft/wipe/m;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/avira/android/antitheft/wipe/m;->d()Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/antitheft/wipe/m;->a:Z

    .line 53
    invoke-static {}, Lcom/avira/android/antitheft/wipe/m;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 60
    :goto_2
    iget-boolean v0, p0, Lcom/avira/android/antitheft/wipe/m;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "RemoteWipe.wipeStorage"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 55
    :catch_1
    move-exception v0

    .line 57
    const-string v1, "storage"

    const-string v2, "FAILED"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "RemoteWipe.tryWipeStorage"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/avira/android/antitheft/wipe/n;->a(Ljava/lang/String;Z)V

    .line 29
    iget-boolean v0, p0, Lcom/avira/android/antitheft/wipe/m;->a:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/avira/android/antitheft/wipe/m;->b()V

    .line 33
    :cond_0
    return-void
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/avira/android/antitheft/wipe/m;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
