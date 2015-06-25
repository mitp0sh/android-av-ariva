.class public Lcom/avira/android/remotecomponents/ScanInfoWebResponseCommandIntergrator;
.super Lcom/avira/android/remotecomponents/CommandIntegrator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/common/web/WebResult;)V
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v0

    invoke-static {v0}, Lcom/avira/android/common/web/q;->a(I)Lcom/avira/android/common/web/r;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/avira/android/common/web/r;->Ok:Lcom/avira/android/common/web/r;

    if-ne v0, v1, :cond_0

    .line 22
    invoke-static {}, Lcom/avira/android/antivirus/bf;->b()V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-static {}, Lcom/avira/android/antivirus/bf;->a()V

    goto :goto_0
.end method
