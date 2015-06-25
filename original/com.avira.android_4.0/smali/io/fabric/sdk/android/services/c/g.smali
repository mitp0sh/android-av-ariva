.class public abstract Lio/fabric/sdk/android/services/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/c/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/fabric/sdk/android/services/c/m;"
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field protected final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field protected strategy:Lio/fabric/sdk/android/services/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/c/n",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/n;Lio/fabric/sdk/android/services/c/d;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/c/n",
            "<TT;>;",
            "Lio/fabric/sdk/android/services/c/d;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/c/g;->context:Landroid/content/Context;

    .line 21
    iput-object p4, p0, Lio/fabric/sdk/android/services/c/g;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    iput-object p2, p0, Lio/fabric/sdk/android/services/c/g;->strategy:Lio/fabric/sdk/android/services/c/n;

    .line 24
    invoke-virtual {p3, p0}, Lio/fabric/sdk/android/services/c/d;->registerRollOverListener(Lio/fabric/sdk/android/services/c/m;)V

    .line 25
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lio/fabric/sdk/android/services/c/j;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/c/j;-><init>(Lio/fabric/sdk/android/services/c/g;)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/c/g;->executeAsync(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method protected executeAsync(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/g;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/c/g;->context:Landroid/content/Context;

    const-string v1, "Failed to submit events task"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected executeSync(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/g;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/c/g;->context:Landroid/content/Context;

    const-string v1, "Failed to run events task"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract getDisabledEventsStrategy()Lio/fabric/sdk/android/services/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/fabric/sdk/android/services/c/n",
            "<TT;>;"
        }
    .end annotation
.end method

.method public onRollOver(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lio/fabric/sdk/android/services/c/i;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/c/i;-><init>(Lio/fabric/sdk/android/services/c/g;)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/c/g;->executeAsync(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method protected recordEventAsync(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lio/fabric/sdk/android/services/c/h;

    invoke-direct {v0, p0, p1, p2}, Lio/fabric/sdk/android/services/c/h;-><init>(Lio/fabric/sdk/android/services/c/g;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Lio/fabric/sdk/android/services/c/g;->executeAsync(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method
