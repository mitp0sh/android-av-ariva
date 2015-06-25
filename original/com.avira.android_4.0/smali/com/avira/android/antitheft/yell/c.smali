.class final Lcom/avira/android/antitheft/yell/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/antitheft/yell/h;


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/yell/b;


# direct methods
.method constructor <init>(Lcom/avira/android/antitheft/yell/b;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avira/android/antitheft/yell/c;->a:Lcom/avira/android/antitheft/yell/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/c;->a:Lcom/avira/android/antitheft/yell/b;

    invoke-static {v0}, Lcom/avira/android/antitheft/yell/b;->a(Lcom/avira/android/antitheft/yell/b;)Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    const-string v1, "statusCode"

    const-string v2, "FAILED"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "RMTSCRM"

    const-string v1, "onScreamPlayerCompleted stoppedWithError true"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    iget-object v0, p0, Lcom/avira/android/antitheft/yell/c;->a:Lcom/avira/android/antitheft/yell/b;

    invoke-static {v0}, Lcom/avira/android/antitheft/yell/b;->a(Lcom/avira/android/antitheft/yell/b;)Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 87
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/c;->a:Lcom/avira/android/antitheft/yell/b;

    invoke-static {v0}, Lcom/avira/android/antitheft/yell/b;->a(Lcom/avira/android/antitheft/yell/b;)Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    const-string v1, "statusCode"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/avira/android/antitheft/yell/c;->a:Lcom/avira/android/antitheft/yell/b;

    invoke-static {v0}, Lcom/avira/android/antitheft/yell/b;->a(Lcom/avira/android/antitheft/yell/b;)Lcom/avira/android/remotecomponents/CommandIntegrator;

    move-result-object v0

    const-string v1, "batteryLevel"

    invoke-static {}, Lcom/avira/android/device/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "RMTSCRM"

    const-string v1, "onScreamPlayerCompleted stoppedWithError false"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
