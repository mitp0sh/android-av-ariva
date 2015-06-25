.class final Lcom/avira/android/antivirus/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/Updater;


# direct methods
.method private constructor <init>(Lcom/avira/android/antivirus/Updater;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/avira/android/antivirus/bn;->a:Lcom/avira/android/antivirus/Updater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/antivirus/Updater;B)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/avira/android/antivirus/bn;-><init>(Lcom/avira/android/antivirus/Updater;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 5

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "UPDTR"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UpdateRunnable - threadId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/avira/android/antivirus/i;->a()Lcom/avira/android/antivirus/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antivirus/i;->b()V

    .line 136
    invoke-static {}, Lcom/avira/android/utilities/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/avira/android/antivirus/bn;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "There is network connectivity."

    invoke-static {v0, v1, v2}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    invoke-static {}, Lcom/avira/android/antivirus/af;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 147
    :goto_1
    iget-object v1, p0, Lcom/avira/android/antivirus/bn;->a:Lcom/avira/android/antivirus/Updater;

    const-string v2, "UPDTR"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Update Component change required: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/avira/android/antivirus/Updater;->b(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/avira/android/antivirus/bn;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_2
    monitor-exit p0

    return-void

    .line 142
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/avira/android/antivirus/bn;->a:Lcom/avira/android/antivirus/Updater;

    const-string v1, "UPDTR"

    const-string v2, "No network connectivity."

    invoke-static {v0, v1, v2}, Lcom/avira/android/antivirus/Updater;->a(Lcom/avira/android/antivirus/Updater;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 161
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/avira/android/antivirus/bn;->a:Lcom/avira/android/antivirus/Updater;

    invoke-static {v0}, Lcom/avira/android/antivirus/Updater;->b(Lcom/avira/android/antivirus/Updater;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
