.class final Lio/fabric/sdk/android/services/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/c/g;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/c/g;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lio/fabric/sdk/android/services/c/j;->a:Lio/fabric/sdk/android/services/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/j;->a:Lio/fabric/sdk/android/services/c/g;

    iget-object v0, v0, Lio/fabric/sdk/android/services/c/g;->strategy:Lio/fabric/sdk/android/services/c/n;

    .line 65
    iget-object v1, p0, Lio/fabric/sdk/android/services/c/j;->a:Lio/fabric/sdk/android/services/c/g;

    iget-object v2, p0, Lio/fabric/sdk/android/services/c/j;->a:Lio/fabric/sdk/android/services/c/g;

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/c/g;->getDisabledEventsStrategy()Lio/fabric/sdk/android/services/c/n;

    move-result-object v2

    iput-object v2, v1, Lio/fabric/sdk/android/services/c/g;->strategy:Lio/fabric/sdk/android/services/c/n;

    .line 66
    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/n;->deleteAllEvents()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/c/j;->a:Lio/fabric/sdk/android/services/c/g;

    iget-object v0, v0, Lio/fabric/sdk/android/services/c/g;->context:Landroid/content/Context;

    const-string v1, "Failed to disable events."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
