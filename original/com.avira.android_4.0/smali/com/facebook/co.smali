.class final Lcom/facebook/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final a:Landroid/os/Messenger;

.field b:Landroid/os/Messenger;

.field final synthetic c:Lcom/facebook/by;


# direct methods
.method constructor <init>(Lcom/facebook/by;)V
    .locals 3

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/facebook/co;->c:Lcom/facebook/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1650
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/facebook/cp;

    iget-object v2, p0, Lcom/facebook/co;->c:Lcom/facebook/by;

    invoke-direct {v1, v2, p0}, Lcom/facebook/cp;-><init>(Lcom/facebook/by;Lcom/facebook/co;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/facebook/co;->a:Landroid/os/Messenger;

    .line 1653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/co;->b:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic a(Lcom/facebook/co;)V
    .locals 0

    .prologue
    .line 1648
    invoke-direct {p0}, Lcom/facebook/co;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/facebook/co;->c:Lcom/facebook/by;

    invoke-static {v0}, Lcom/facebook/by;->d(Lcom/facebook/by;)Lcom/facebook/co;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1686
    iget-object v0, p0, Lcom/facebook/co;->c:Lcom/facebook/by;

    invoke-static {v0}, Lcom/facebook/by;->e(Lcom/facebook/by;)Lcom/facebook/co;

    .line 1688
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1656
    invoke-static {}, Lcom/facebook/by;->i()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/bw;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1657
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/by;->l()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/facebook/co;->c:Lcom/facebook/by;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/by;->a(Ljava/util/Date;)V

    .line 1663
    :goto_0
    return-void

    .line 1661
    :cond_0
    invoke-direct {p0}, Lcom/facebook/co;->b()V

    goto :goto_0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 1667
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/co;->b:Landroid/os/Messenger;

    .line 1668
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/facebook/co;->c:Lcom/facebook/by;

    invoke-virtual {v2}, Lcom/facebook/by;->k()Lcom/facebook/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/co;->a:Landroid/os/Messenger;

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v0, p0, Lcom/facebook/co;->b:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    :goto_0
    return-void

    .line 1668
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/facebook/co;->b()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 1673
    invoke-direct {p0}, Lcom/facebook/co;->b()V

    .line 1678
    :try_start_0
    invoke-static {}, Lcom/facebook/by;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
