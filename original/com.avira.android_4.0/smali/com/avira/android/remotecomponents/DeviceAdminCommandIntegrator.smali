.class public Lcom/avira/android/remotecomponents/DeviceAdminCommandIntegrator;
.super Lcom/avira/android/remotecomponents/CommandIntegrator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "deviceAdminStatus"

    iput-object v0, p0, Lcom/avira/android/remotecomponents/DeviceAdminCommandIntegrator;->b:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avira/android/remotecomponents/DeviceAdminCommandIntegrator;->c:Lcom/avira/android/l;

    invoke-virtual {v0, p0}, Lcom/avira/android/l;->d(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 24
    return-void
.end method
