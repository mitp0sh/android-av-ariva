.class public final Lio/fabric/sdk/android/services/b/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NO_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = ""


# instance fields
.field private final a:Lio/fabric/sdk/android/services/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/a/d",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lio/fabric/sdk/android/services/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/a/b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lio/fabric/sdk/android/services/b/ab;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/services/b/ab;-><init>(Lio/fabric/sdk/android/services/b/aa;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/b/aa;->a:Lio/fabric/sdk/android/services/a/d;

    .line 35
    new-instance v0, Lio/fabric/sdk/android/services/a/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/a/b;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/b/aa;->b:Lio/fabric/sdk/android/services/a/b;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 40
    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/aa;->b:Lio/fabric/sdk/android/services/a/b;

    iget-object v2, p0, Lio/fabric/sdk/android/services/b/aa;->a:Lio/fabric/sdk/android/services/a/d;

    invoke-virtual {v0, p1, v2}, Lio/fabric/sdk/android/services/a/b;->a(Landroid/content/Context;Lio/fabric/sdk/android/services/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 45
    :cond_0
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-static {}, Lio/fabric/sdk/android/b;->c()Lio/fabric/sdk/android/q;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed to determine installer package name"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 45
    goto :goto_0
.end method
