.class final Lio/fabric/sdk/android/services/b/w;
.super Lio/fabric/sdk/android/services/b/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lio/fabric/sdk/android/services/b/v;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/b/v;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/w;->b:Lio/fabric/sdk/android/services/b/v;

    iput-object p2, p0, Lio/fabric/sdk/android/services/b/w;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/w;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 47
    return-void
.end method
