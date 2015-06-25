.class final Lio/fabric/sdk/android/services/concurrency/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lio/fabric/sdk/android/services/concurrency/o;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lio/fabric/sdk/android/services/concurrency/o;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lio/fabric/sdk/android/services/concurrency/p;->a:Ljava/util/concurrent/Executor;

    .line 92
    iput-object p2, p0, Lio/fabric/sdk/android/services/concurrency/p;->b:Lio/fabric/sdk/android/services/concurrency/o;

    .line 93
    return-void
.end method

.method static synthetic a(Lio/fabric/sdk/android/services/concurrency/p;)Lio/fabric/sdk/android/services/concurrency/o;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/p;->b:Lio/fabric/sdk/android/services/concurrency/o;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lio/fabric/sdk/android/services/concurrency/p;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/fabric/sdk/android/services/concurrency/q;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/concurrency/q;-><init>(Lio/fabric/sdk/android/services/concurrency/p;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method
