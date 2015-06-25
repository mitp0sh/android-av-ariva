.class final Lcom/avira/android/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/remotecomponents/CommandIntegrator;

.field final synthetic b:Lcom/avira/android/ActionHandlerBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/avira/android/ActionHandlerBroadcastReceiver;Lcom/avira/android/remotecomponents/CommandIntegrator;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/avira/android/a;->b:Lcom/avira/android/ActionHandlerBroadcastReceiver;

    iput-object p2, p0, Lcom/avira/android/a;->a:Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/avira/android/ActionHandlerBroadcastReceiver;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send postInformation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/a;->a:Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/avira/android/a;->a:Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-static {v0}, Lcom/avira/android/common/web/p;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 42
    return-void
.end method
