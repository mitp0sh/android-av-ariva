.class public Lcom/avira/android/remotecomponents/WipeCommandIntegrator;
.super Lcom/avira/android/remotecomponents/CommandIntegrator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "wipeStatus"

    iput-object v0, p0, Lcom/avira/android/remotecomponents/WipeCommandIntegrator;->b:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    .prologue
    .line 34
    const-string v0, "wipe"

    invoke-virtual {p0, v0}, Lcom/avira/android/remotecomponents/WipeCommandIntegrator;->e(Ljava/lang/String;)Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_4

    .line 37
    const-string v0, "wipe_params"

    invoke-virtual {p0, v0}, Lcom/avira/android/remotecomponents/WipeCommandIntegrator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_4

    .line 40
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v3, "reset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    sget-object v0, Lcom/avira/android/database/m;->FactoryReset:Lcom/avira/android/database/m;

    sget-object v2, Lcom/avira/android/database/l;->InProgress:Lcom/avira/android/database/l;

    invoke-static {v0, v2}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;Lcom/avira/android/database/l;)V

    goto :goto_0

    .line 51
    :cond_0
    const-string v3, "sim"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    sget-object v0, Lcom/avira/android/database/m;->SimWipe:Lcom/avira/android/database/m;

    sget-object v2, Lcom/avira/android/database/l;->InProgress:Lcom/avira/android/database/l;

    invoke-static {v0, v2}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;Lcom/avira/android/database/l;)V

    goto :goto_0

    .line 55
    :cond_1
    const-string v3, "storage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    sget-object v0, Lcom/avira/android/database/m;->StorageWipe:Lcom/avira/android/database/m;

    sget-object v2, Lcom/avira/android/database/l;->InProgress:Lcom/avira/android/database/l;

    invoke-static {v0, v2}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;Lcom/avira/android/database/l;)V

    goto :goto_0

    .line 61
    :cond_2
    const-string v2, "settingUnlockPassword"

    invoke-static {v2, v0}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/avira/android/remotecomponents/WipeCommandIntegrator;->c:Lcom/avira/android/l;

    invoke-virtual {v0, p0}, Lcom/avira/android/l;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 67
    :cond_4
    return-void
.end method
