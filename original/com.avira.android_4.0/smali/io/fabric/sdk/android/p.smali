.class final Lio/fabric/sdk/android/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/n;

.field final synthetic b:Lio/fabric/sdk/android/o;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/o;Lio/fabric/sdk/android/n;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lio/fabric/sdk/android/p;->b:Lio/fabric/sdk/android/o;

    iput-object p2, p0, Lio/fabric/sdk/android/p;->a:Lio/fabric/sdk/android/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lio/fabric/sdk/android/p;->a:Lio/fabric/sdk/android/n;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/n;->a(Landroid/app/Activity;)V

    .line 73
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lio/fabric/sdk/android/p;->a:Lio/fabric/sdk/android/n;

    .line 104
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lio/fabric/sdk/android/p;->a:Lio/fabric/sdk/android/n;

    .line 88
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lio/fabric/sdk/android/p;->a:Lio/fabric/sdk/android/n;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/n;->c(Landroid/app/Activity;)V

    .line 83
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lio/fabric/sdk/android/p;->a:Lio/fabric/sdk/android/n;

    .line 99
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lio/fabric/sdk/android/p;->a:Lio/fabric/sdk/android/n;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/n;->b(Landroid/app/Activity;)V

    .line 78
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lio/fabric/sdk/android/p;->a:Lio/fabric/sdk/android/n;

    .line 93
    return-void
.end method
