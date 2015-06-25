.class public Lcom/avira/android/remotecomponents/UnlockCommandIntegrator;
.super Lcom/avira/android/remotecomponents/CommandIntegrator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "unlockStatus"

    iput-object v0, p0, Lcom/avira/android/remotecomponents/UnlockCommandIntegrator;->b:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "settingUnlockAttempt"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/avira/android/database/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/avira/android/remotecomponents/UnlockCommandIntegrator;->c:Lcom/avira/android/l;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avira/android/antitheft/lock/f;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;Z)V

    .line 31
    return-void
.end method
