.class public final Lio/fabric/sdk/android/services/c/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/fabric/sdk/android/services/c/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/o;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/fabric/sdk/android/services/c/s;->a:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lio/fabric/sdk/android/services/c/s;->b:Lio/fabric/sdk/android/services/c/o;

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 23
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->e(Landroid/content/Context;)V

    .line 24
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/s;->b:Lio/fabric/sdk/android/services/c/o;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/o;->rollFileOver()Z

    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lio/fabric/sdk/android/services/c/s;->b:Lio/fabric/sdk/android/services/c/o;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/c/o;->cancelTimeBasedFileRollOver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/fabric/sdk/android/services/c/s;->a:Landroid/content/Context;

    const-string v1, "Failed to roll over file"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
