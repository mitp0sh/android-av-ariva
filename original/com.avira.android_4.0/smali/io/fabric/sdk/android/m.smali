.class final Lio/fabric/sdk/android/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Application;

.field private b:Lio/fabric/sdk/android/o;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lio/fabric/sdk/android/m;->a:Landroid/app/Application;

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 31
    new-instance v0, Lio/fabric/sdk/android/o;

    iget-object v1, p0, Lio/fabric/sdk/android/m;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/o;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lio/fabric/sdk/android/m;->b:Lio/fabric/sdk/android/o;

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lio/fabric/sdk/android/n;)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/fabric/sdk/android/m;->b:Lio/fabric/sdk/android/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/m;->b:Lio/fabric/sdk/android/o;

    invoke-static {v0, p1}, Lio/fabric/sdk/android/o;->a(Lio/fabric/sdk/android/o;Lio/fabric/sdk/android/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method