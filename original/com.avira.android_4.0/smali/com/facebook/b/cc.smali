.class public abstract Lcom/facebook/b/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private c:Lcom/facebook/b/ce;

.field private d:Z

.field private e:Landroid/os/Messenger;

.field private f:I

.field private g:I

.field private final h:Ljava/lang/String;

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/facebook/b/cc;->a:Landroid/content/Context;

    .line 46
    iput p2, p0, Lcom/facebook/b/cc;->f:I

    .line 47
    iput p3, p0, Lcom/facebook/b/cc;->g:I

    .line 48
    iput-object p5, p0, Lcom/facebook/b/cc;->h:Ljava/lang/String;

    .line 49
    iput p4, p0, Lcom/facebook/b/cc;->i:I

    .line 51
    new-instance v0, Lcom/facebook/b/cd;

    invoke-direct {v0, p0}, Lcom/facebook/b/cd;-><init>(Lcom/facebook/b/cc;)V

    iput-object v0, p0, Lcom/facebook/b/cc;->b:Landroid/os/Handler;

    .line 57
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/facebook/b/cc;->d:Z

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/b/cc;->d:Z

    .line 146
    iget-object v0, p0, Lcom/facebook/b/cc;->c:Lcom/facebook/b/ce;

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p1}, Lcom/facebook/b/ce;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/facebook/b/cc;->g:I

    if-ne v0, v1, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_1

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/b/cc;->b(Landroid/os/Bundle;)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/facebook/b/cc;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 138
    :cond_0
    return-void

    .line 134
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/b/cc;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/b/ce;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/b/cc;->c:Lcom/facebook/b/ce;

    .line 61
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 68
    iget-boolean v2, p0, Lcom/facebook/b/cc;->d:Z

    if-eqz v2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/facebook/b/cc;->a:Landroid/content/Context;

    iget v3, p0, Lcom/facebook/b/cc;->i:I

    invoke-static {v2, v3}, Lcom/facebook/b/bw;->a(Landroid/content/Context;I)I

    move-result v2

    .line 74
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 78
    iget-object v2, p0, Lcom/facebook/b/cc;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/b/bw;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 79
    if-eqz v2, :cond_0

    .line 82
    iput-boolean v1, p0, Lcom/facebook/b/cc;->d:Z

    .line 83
    iget-object v0, p0, Lcom/facebook/b/cc;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/b/cc;->d:Z

    .line 90
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/facebook/b/cc;->e:Landroid/os/Messenger;

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v2, p0, Lcom/facebook/b/cc;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/b/cc;->a(Landroid/os/Bundle;)V

    iget v1, p0, Lcom/facebook/b/cc;->f:I

    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/facebook/b/cc;->i:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/facebook/b/cc;->b:Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v0, p0, Lcom/facebook/b/cc;->e:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    invoke-direct {p0, v3}, Lcom/facebook/b/cc;->b(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Lcom/facebook/b/cc;->e:Landroid/os/Messenger;

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/facebook/b/cc;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    invoke-direct {p0, v1}, Lcom/facebook/b/cc;->b(Landroid/os/Bundle;)V

    .line 105
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
