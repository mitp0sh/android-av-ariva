.class final Lio/fabric/sdk/android/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/app/Application;


# direct methods
.method constructor <init>(Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/o;->a:Ljava/util/Set;

    .line 53
    iput-object p1, p0, Lio/fabric/sdk/android/o;->b:Landroid/app/Application;

    .line 54
    return-void
.end method

.method static synthetic a(Lio/fabric/sdk/android/o;Lio/fabric/sdk/android/n;)Z
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lio/fabric/sdk/android/o;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    new-instance v0, Lio/fabric/sdk/android/p;

    invoke-direct {v0, p0, p1}, Lio/fabric/sdk/android/p;-><init>(Lio/fabric/sdk/android/o;Lio/fabric/sdk/android/n;)V

    iget-object v1, p0, Lio/fabric/sdk/android/o;->b:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v1, p0, Lio/fabric/sdk/android/o;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
