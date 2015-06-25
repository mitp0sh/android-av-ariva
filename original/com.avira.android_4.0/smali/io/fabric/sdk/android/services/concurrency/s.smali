.class public Lio/fabric/sdk/android/services/concurrency/s;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/concurrency/l;
.implements Lio/fabric/sdk/android/services/concurrency/t;
.implements Lio/fabric/sdk/android/services/concurrency/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Lio/fabric/sdk/android/services/concurrency/l",
        "<",
        "Lio/fabric/sdk/android/services/concurrency/x;",
        ">;",
        "Lio/fabric/sdk/android/services/concurrency/t;",
        "Lio/fabric/sdk/android/services/concurrency/x;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 28
    invoke-static {p1}, Lio/fabric/sdk/android/services/concurrency/s;->a(Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/l;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/s;->b:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 23
    invoke-static {p1}, Lio/fabric/sdk/android/services/concurrency/s;->a(Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/l;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/concurrency/s;->b:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method private static a(Ljava/lang/Object;)Lio/fabric/sdk/android/services/concurrency/l;
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
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p0}, Lio/fabric/sdk/android/services/concurrency/u;->isProperDelegate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    check-cast p0, Lio/fabric/sdk/android/services/concurrency/l;

    .line 88
    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lio/fabric/sdk/android/services/concurrency/u;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/concurrency/u;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lio/fabric/sdk/android/services/concurrency/l;
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
    .line 79
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/s;->b:Ljava/lang/Object;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/l;

    return-object v0
.end method

.method public synthetic addDependency(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lio/fabric/sdk/android/services/concurrency/x;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/s;->a()Lio/fabric/sdk/android/services/concurrency/l;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/l;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/l;->addDependency(Ljava/lang/Object;)V

    return-void
.end method

.method public areDependenciesMet()Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/s;->a()Lio/fabric/sdk/android/services/concurrency/l;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/l;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/l;->areDependenciesMet()Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/s;->a()Lio/fabric/sdk/android/services/concurrency/l;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/t;->compareTo(Ljava/lang/Object;)I

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
    .line 43
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/s;->a()Lio/fabric/sdk/android/services/concurrency/l;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/l;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/l;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lio/fabric/sdk/android/services/concurrency/n;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/s;->a()Lio/fabric/sdk/android/services/concurrency/l;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/t;->getPriority()Lio/fabric/sdk/android/services/concurrency/n;

    move-result-object v0

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/s;->a()Lio/fabric/sdk/android/services/concurrency/l;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/x;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/x;->isFinished()Z

    move-result v0

    return v0
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/s;->a()Lio/fabric/sdk/android/services/concurrency/l;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/x;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/x;->setError(Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method

.method public setFinished(Z)V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/concurrency/s;->a()Lio/fabric/sdk/android/services/concurrency/l;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/t;

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/x;

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/services/concurrency/x;->setFinished(Z)V

    .line 59
    return-void
.end method
