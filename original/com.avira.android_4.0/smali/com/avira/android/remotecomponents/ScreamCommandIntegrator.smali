.class public Lcom/avira/android/remotecomponents/ScreamCommandIntegrator;
.super Lcom/avira/android/remotecomponents/CommandIntegrator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "screamStatus"

    iput-object v0, p0, Lcom/avira/android/remotecomponents/ScreamCommandIntegrator;->b:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lcom/avira/android/remotecomponents/ScreamCommandIntegrator;->c:Lcom/avira/android/l;

    invoke-static {}, Lcom/avira/android/database/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p0, v0}, Lcom/avira/android/l;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;Z)V

    .line 29
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
