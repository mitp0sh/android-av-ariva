.class public abstract Lio/fabric/sdk/android/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/fabric/sdk/android/k;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field fabric:Lio/fabric/sdk/android/b;

.field idManager:Lio/fabric/sdk/android/services/b/y;

.field initializationCallback:Lio/fabric/sdk/android/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/g",
            "<TResult;>;"
        }
    .end annotation
.end field

.field initializationTask:Lio/fabric/sdk/android/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/j",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lio/fabric/sdk/android/j;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/j;-><init>(Lio/fabric/sdk/android/k;)V

    iput-object v0, p0, Lio/fabric/sdk/android/k;->initializationTask:Lio/fabric/sdk/android/j;

    .line 27
    return-void
.end method


# virtual methods
.method public compareTo(Lio/fabric/sdk/android/k;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 123
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/k;->containsAnnotatedDependency(Lio/fabric/sdk/android/k;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    invoke-virtual {p1, p0}, Lio/fabric/sdk/android/k;->containsAnnotatedDependency(Lio/fabric/sdk/android/k;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 126
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Lio/fabric/sdk/android/k;->hasAnnotatedDependency()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lio/fabric/sdk/android/k;->hasAnnotatedDependency()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    :cond_3
    invoke-virtual {p0}, Lio/fabric/sdk/android/k;->hasAnnotatedDependency()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lio/fabric/sdk/android/k;->hasAnnotatedDependency()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 130
    goto :goto_0

    .line 132
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lio/fabric/sdk/android/k;

    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/k;->compareTo(Lio/fabric/sdk/android/k;)I

    move-result v0

    return v0
.end method

.method containsAnnotatedDependency(Lio/fabric/sdk/android/k;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lio/fabric/sdk/android/services/concurrency/m;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/m;

    .line 142
    if-eqz v0, :cond_1

    .line 143
    invoke-interface {v0}, Lio/fabric/sdk/android/services/concurrency/m;->a()[Ljava/lang/Class;

    move-result-object v2

    .line 144
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 150
    :goto_1
    return v0

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 150
    goto :goto_1
.end method

.method protected abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lio/fabric/sdk/android/k;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getDependencies()Ljava/util/Collection;
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
    .line 164
    iget-object v0, p0, Lio/fabric/sdk/android/k;->initializationTask:Lio/fabric/sdk/android/j;

    invoke-virtual {v0}, Lio/fabric/sdk/android/j;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFabric()Lio/fabric/sdk/android/b;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lio/fabric/sdk/android/k;->fabric:Lio/fabric/sdk/android/b;

    return-object v0
.end method

.method protected getIdManager()Lio/fabric/sdk/android/services/b/y;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lio/fabric/sdk/android/k;->idManager:Lio/fabric/sdk/android/services/b/y;

    return-object v0
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".Fabric"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/fabric/sdk/android/k;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method hasAnnotatedDependency()Z
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/fabric/sdk/android/services/concurrency/m;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/m;

    .line 159
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final initialize()V
    .locals 5

    .prologue
    .line 49
    iget-object v0, p0, Lio/fabric/sdk/android/k;->initializationTask:Lio/fabric/sdk/android/j;

    iget-object v1, p0, Lio/fabric/sdk/android/k;->fabric:Lio/fabric/sdk/android/b;

    invoke-virtual {v1}, Lio/fabric/sdk/android/b;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/j;->a(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/b;Lio/fabric/sdk/android/g;Lio/fabric/sdk/android/services/b/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/b;",
            "Lio/fabric/sdk/android/g",
            "<TResult;>;",
            "Lio/fabric/sdk/android/services/b/y;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p2, p0, Lio/fabric/sdk/android/k;->fabric:Lio/fabric/sdk/android/b;

    .line 40
    new-instance v0, Lio/fabric/sdk/android/f;

    invoke-virtual {p0}, Lio/fabric/sdk/android/k;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/fabric/sdk/android/k;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lio/fabric/sdk/android/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/k;->context:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lio/fabric/sdk/android/k;->initializationCallback:Lio/fabric/sdk/android/g;

    .line 42
    iput-object p4, p0, Lio/fabric/sdk/android/k;->idManager:Lio/fabric/sdk/android/services/b/y;

    .line 43
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 81
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method protected onPreExecute()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method
