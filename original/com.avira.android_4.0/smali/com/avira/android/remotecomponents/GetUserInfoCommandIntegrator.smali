.class public Lcom/avira/android/remotecomponents/GetUserInfoCommandIntegrator;
.super Lcom/avira/android/remotecomponents/CommandIntegrator;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>()V

    .line 15
    const-string v0, "null"

    iput-object v0, p0, Lcom/avira/android/remotecomponents/GetUserInfoCommandIntegrator;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/common/web/WebResult;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/avira/android/common/web/m;

    invoke-direct {v2}, Lcom/avira/android/common/web/m;-><init>()V

    invoke-static {v0, v2, p0}, Lcom/avira/android/utilities/p;->a(Ljava/lang/String;Lcom/avira/android/utilities/o;Lcom/avira/android/remotecomponents/CommandIntegrator;)Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v3

    .line 23
    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v0

    invoke-static {v0}, Lcom/avira/android/common/web/q;->a(I)Lcom/avira/android/common/web/r;

    move-result-object v0

    .line 25
    sget-object v2, Lcom/avira/android/common/web/r;->Ok:Lcom/avira/android/common/web/r;

    if-ne v0, v2, :cond_0

    .line 27
    iget-object v0, p0, Lcom/avira/android/remotecomponents/GetUserInfoCommandIntegrator;->a:Ljava/lang/String;

    const-string v2, "firstName"

    invoke-virtual {v3, v2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 30
    :goto_0
    iget-object v2, p0, Lcom/avira/android/remotecomponents/GetUserInfoCommandIntegrator;->a:Ljava/lang/String;

    const-string v4, "lastName"

    invoke-virtual {v3, v4}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 33
    :goto_1
    iget-object v4, p0, Lcom/avira/android/remotecomponents/GetUserInfoCommandIntegrator;->a:Ljava/lang/String;

    const-string v5, "imageUrl"

    invoke-virtual {v3, v5}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 36
    :goto_2
    new-instance v3, Lcom/avira/android/userprofile/x;

    invoke-direct {v3}, Lcom/avira/android/userprofile/x;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/avira/android/userprofile/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    invoke-static {v1}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/avira/android/userprofile/h;

    invoke-direct {v0, v1}, Lcom/avira/android/userprofile/h;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/avira/android/utilities/aj;->a(Ljava/lang/Runnable;)V

    .line 41
    :cond_0
    return-void

    .line 27
    :cond_1
    const-string v0, "firstName"

    invoke-virtual {v3, v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_2
    const-string v2, "lastName"

    invoke-virtual {v3, v2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 33
    :cond_3
    const-string v1, "imageUrl"

    invoke-virtual {v3, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
