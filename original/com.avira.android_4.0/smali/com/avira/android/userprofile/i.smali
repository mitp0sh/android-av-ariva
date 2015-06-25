.class public Lcom/avira/android/userprofile/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    invoke-static {p0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcom/avira/android/remotecomponents/b;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/b;-><init>()V

    const-string v1, "updateUserInfo"

    invoke-virtual {v0, v1}, Lcom/avira/android/remotecomponents/b;->a(Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    move-result-object v0

    const-string v1, "firstName"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/remotecomponents/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    move-result-object v0

    const-string v1, "lastName"

    invoke-virtual {v0, v1, p1}, Lcom/avira/android/remotecomponents/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/remotecomponents/b;->a()Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {v0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static a([BII)V
    .locals 2

    .prologue
    .line 48
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avira/android/userprofile/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/avira/android/userprofile/j;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    :cond_0
    return-void
.end method
