.class public Lcom/avira/android/remotecomponents/LocateCommandIntegrator;
.super Lcom/avira/android/remotecomponents/CommandIntegrator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "locateStatus"

    iput-object v0, p0, Lcom/avira/android/remotecomponents/LocateCommandIntegrator;->b:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avira/android/remotecomponents/LocateCommandIntegrator;->c:Lcom/avira/android/l;

    invoke-virtual {v0, p0}, Lcom/avira/android/l;->b(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 28
    return-void
.end method
