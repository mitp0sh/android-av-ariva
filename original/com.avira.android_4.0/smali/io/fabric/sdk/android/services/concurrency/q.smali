.class final Lio/fabric/sdk/android/services/concurrency/q;
.super Lio/fabric/sdk/android/services/concurrency/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/concurrency/s",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/concurrency/p;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/concurrency/p;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 97
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/q;->a:Lio/fabric/sdk/android/services/concurrency/p;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lio/fabric/sdk/android/services/concurrency/s;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/fabric/sdk/android/services/concurrency/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/fabric/sdk/android/services/concurrency/l",
            "<",
            "Lio/fabric/sdk/android/services/concurrency/x;",
            ">;:",
            "Lio/fabric/sdk/android/services/concurrency/t;",
            ":",
            "Lio/fabric/sdk/android/services/concurrency/x;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/q;->a:Lio/fabric/sdk/android/services/concurrency/p;

    invoke-static {v0}, Lio/fabric/sdk/android/services/concurrency/p;->a(Lio/fabric/sdk/android/services/concurrency/p;)Lio/fabric/sdk/android/services/concurrency/o;

    move-result-object v0

    return-object v0
.end method
