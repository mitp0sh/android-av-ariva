.class final Lio/fabric/sdk/android/services/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Z

.field final synthetic c:Lio/fabric/sdk/android/services/c/g;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/c/g;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lio/fabric/sdk/android/services/c/h;->c:Lio/fabric/sdk/android/services/c/g;

    iput-object p2, p0, Lio/fabric/sdk/android/services/c/h;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lio/fabric/sdk/android/services/c/h;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/h;->c:Lio/fabric/sdk/android/services/c/g;

    iget-object v0, v0, Lio/fabric/sdk/android/services/c/g;->strategy:Lio/fabric/sdk/android/services/c/n;

    iget-object v1, p0, Lio/fabric/sdk/android/services/c/h;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/c/n;->recordEvent(Ljava/lang/Object;)V

    .line 34
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/c/h;->b:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/h;->c:Lio/fabric/sdk/android/services/c/g;

    iget-object v0, v0, Lio/fabric/sdk/android/services/c/g;->strategy:Lio/fabric/sdk/android/services/c/n;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/n;->rollFileOver()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/c/h;->c:Lio/fabric/sdk/android/services/c/g;

    iget-object v0, v0, Lio/fabric/sdk/android/services/c/g;->context:Landroid/content/Context;

    const-string v1, "Failed to record event."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
