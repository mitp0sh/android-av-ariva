.class public abstract Lio/fabric/sdk/android/services/concurrency/o;
.super Lio/fabric/sdk/android/services/concurrency/a;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/l;
.implements Lio/fabric/sdk/android/services/concurrency/t;
.implements Lio/fabric/sdk/android/services/concurrency/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/concurrency/a",
        "<TParams;TProgress;TResult;>;",
        "Lio/fabric/sdk/android/services/concurrency/l",
        "<",
        "Lio/fabric/sdk/android/services/concurrency/x;",
        ">;",
        "Lio/fabric/sdk/android/services/concurrency/t;",
        "Lio/fabric/sdk/android/services/concurrency/x;"
    }
.end annotation


# instance fields
.field private final a:Lio/fabric/sdk/android/services/concurrency/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/a;-><init>()V

    .line 20
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/u;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/concurrency/u;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/o;->a:Lio/fabric/sdk/android/services/concurrency/u;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lio/fabric/sdk/android/services/concurrency/x;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/o;->c()Lio/fabric/sdk/android/services/concurrency/j;

    move-result-object v0

    sget-object v1, Lio/fabric/sdk/android/services/concurrency/j;->PENDING:Lio/fabric/sdk/android/services/concurrency/j;

    if-eq v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/o;->a:Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/l;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/l;->addDependency(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public final varargs a(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "[TParams;)V"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/p;

    invoke-direct {v0, p1, p0}, Lio/fabric/sdk/android/services/concurrency/p;-><init>(Ljava/util/concurrent/Executor;Lio/fabric/sdk/android/services/concurrency/o;)V

    .line 26
    invoke-super {p0, v0, p2}, Lio/fabric/sdk/android/services/concurrency/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/a;

    .line 27
    return-void
.end method

.method public synthetic addDependency(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lio/fabric/sdk/android/services/concurrency/x;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/services/concurrency/o;->a(Lio/fabric/sdk/android/services/concurrency/x;)V

    return-void
.end method

.method public areDependenciesMet()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/o;->a:Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/l;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/l;->areDependenciesMet()Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1}, Lio/fabric/sdk/android/services/concurrency/n;->a(Lio/fabric/sdk/android/services/concurrency/t;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getDependencies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/services/concurrency/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/o;->a:Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/l;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/l;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/n;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/o;->a:Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/t;->getPriority()Lio/fabric/sdk/android/services/concurrency/n;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/o;->a:Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/x;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/x;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/o;->a:Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/x;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/x;->setError(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public setFinished(Z)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/o;->a:Lio/fabric/sdk/android/services/concurrency/u;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/x;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/x;->setFinished(Z)V

    .line 65
    return-void
.end method
