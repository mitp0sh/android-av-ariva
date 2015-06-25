.class public Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field static final WIPE_JOB_COMPLETED_ACTION:Ljava/lang/String; = "com.avira.android.ACTION_WIPE_JOB_COMPLETED"

.field static final WIPE_JOB_TAG:Ljava/lang/String; = "wipe_job_name_tag"


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;


# direct methods
.method public constructor <init>(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 268
    const-string v0, "wipe_job_name_tag"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/database/m;->valueOf(Ljava/lang/String;)Lcom/avira/android/database/m;

    move-result-object v0

    .line 269
    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No wipe job being specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    sget-object v1, Lcom/avira/android/database/m;->SimWipe:Lcom/avira/android/database/m;

    if-ne v0, v1, :cond_3

    .line 275
    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v1}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->b(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v2}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Lcom/avira/android/antitheft/wipe/j;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 276
    const-string v1, "sim"

    const-string v2, "OK"

    invoke-static {v1, v2, v3}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_1
    :goto_0
    sget-object v1, Lcom/avira/android/database/l;->Succeeded:Lcom/avira/android/database/l;

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;Lcom/avira/android/database/l;)V

    .line 284
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->b(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/avira/android/database/m;->FactoryReset:Lcom/avira/android/database/m;

    invoke-static {v0}, Lcom/avira/android/antitheft/wipe/i;->a(Lcom/avira/android/database/m;)Lcom/avira/android/database/l;

    move-result-object v0

    sget-object v1, Lcom/avira/android/database/l;->InProgress:Lcom/avira/android/database/l;

    if-ne v0, v1, :cond_2

    .line 288
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/avira/android/antitheft/wipe/h;

    invoke-direct {v1, p0}, Lcom/avira/android/antitheft/wipe/h;-><init>(Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 297
    :cond_2
    return-void

    .line 278
    :cond_3
    sget-object v1, Lcom/avira/android/database/m;->StorageWipe:Lcom/avira/android/database/m;

    if-ne v0, v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v1}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->b(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/antitheft/wipe/ATRemoteWipe$WipeJobCompletedBroadcastReceiver;->a:Lcom/avira/android/antitheft/wipe/ATRemoteWipe;

    invoke-static {v2}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->c(Lcom/avira/android/antitheft/wipe/ATRemoteWipe;)Lcom/avira/android/antitheft/wipe/m;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 281
    const-string v1, "storage"

    const-string v2, "OK"

    invoke-static {v1, v2, v3}, Lcom/avira/android/antitheft/wipe/ATRemoteWipe;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
