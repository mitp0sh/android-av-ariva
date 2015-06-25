.class public Lcom/avira/android/remotecomponents/LocationInfoCommandIntegrator;
.super Lcom/avira/android/remotecomponents/CommandIntegrator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/common/web/WebResult;)V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v0

    invoke-static {v0}, Lcom/avira/android/common/web/q;->a(I)Lcom/avira/android/common/web/r;

    .line 24
    sget-object v0, Lcom/avira/android/common/web/r;->Ok:Lcom/avira/android/common/web/r;

    .line 32
    return-void
.end method
