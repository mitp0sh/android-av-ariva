.class public Lcom/avira/android/remotecomponents/RefundCommandIntegrator;
.super Lcom/avira/android/remotecomponents/CommandIntegrator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "deactivatePremiumStatus"

    iput-object v0, p0, Lcom/avira/android/remotecomponents/RefundCommandIntegrator;->b:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avira/android/premium/b;->a(Z)Z

    .line 20
    const-string v0, "statusCode"

    const-string v1, "OK"

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/remotecomponents/RefundCommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {p0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 22
    return-void
.end method
