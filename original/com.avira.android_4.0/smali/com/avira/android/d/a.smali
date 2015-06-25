.class public final Lcom/avira/android/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IIIJ)V
    .locals 5

    .prologue
    .line 29
    const-wide/16 v0, 0x3e8

    div-long v0, p3, v0

    long-to-int v0, v0

    .line 30
    new-instance v1, Lcom/avira/android/remotecomponents/b;

    invoke-direct {v1}, Lcom/avira/android/remotecomponents/b;-><init>()V

    const-string v2, "scanInfo"

    invoke-virtual {v1, v2}, Lcom/avira/android/remotecomponents/b;->a(Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    move-result-object v1

    const-string v2, "files"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/remotecomponents/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    move-result-object v1

    const-string v2, "apps"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/remotecomponents/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    move-result-object v1

    const-string v2, "issues"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/remotecomponents/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    move-result-object v1

    const-string v2, "scanTime"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/avira/android/remotecomponents/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/remotecomponents/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/remotecomponents/b;->a()Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {v0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 37
    return-void
.end method
