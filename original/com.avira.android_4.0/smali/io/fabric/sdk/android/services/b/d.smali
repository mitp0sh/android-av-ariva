.class final Lio/fabric/sdk/android/services/b/d;
.super Lio/fabric/sdk/android/services/b/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/b/b;

.field final synthetic b:Lio/fabric/sdk/android/services/b/c;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/b/c;Lio/fabric/sdk/android/services/b/b;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/d;->b:Lio/fabric/sdk/android/services/b/c;

    iput-object p2, p0, Lio/fabric/sdk/android/services/b/d;->a:Lio/fabric/sdk/android/services/b/b;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/d;->b:Lio/fabric/sdk/android/services/b/c;

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/c;->a(Lio/fabric/sdk/android/services/b/c;)Lio/fabric/sdk/android/services/b/b;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/d;->a:Lio/fabric/sdk/android/services/b/b;

    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/b/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v1

    invoke-interface {v1}, Lio/fabric/sdk/android/q;->b()V

    .line 57
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/d;->b:Lio/fabric/sdk/android/services/b/c;

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/c;->a(Lio/fabric/sdk/android/services/b/c;Lio/fabric/sdk/android/services/b/b;)V

    .line 59
    :cond_0
    return-void
.end method
