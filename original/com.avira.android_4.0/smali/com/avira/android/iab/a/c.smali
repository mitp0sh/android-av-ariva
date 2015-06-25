.class final Lcom/avira/android/iab/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/avira/android/iab/a/g;

.field final synthetic b:Lcom/avira/android/iab/a/b;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/a/b;Lcom/avira/android/iab/a/g;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/avira/android/iab/a/c;->b:Lcom/avira/android/iab/a/b;

    iput-object p2, p0, Lcom/avira/android/iab/a/c;->a:Lcom/avira/android/iab/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 247
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 248
    iget-object v0, p0, Lcom/avira/android/iab/a/c;->b:Lcom/avira/android/iab/a/b;

    iget-boolean v0, v0, Lcom/avira/android/iab/a/b;->d:Z

    if-eqz v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 251
    iget-object v0, p0, Lcom/avira/android/iab/a/c;->b:Lcom/avira/android/iab/a/b;

    invoke-static {p2}, Lcom/android/a/a/b;->a(Landroid/os/IBinder;)Lcom/android/a/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/avira/android/iab/a/b;->i:Lcom/android/a/a/a;

    .line 252
    iget-object v0, p0, Lcom/avira/android/iab/a/c;->b:Lcom/avira/android/iab/a/b;

    iget-object v0, v0, Lcom/avira/android/iab/a/b;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 255
    :try_start_0
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 258
    iget-object v1, p0, Lcom/avira/android/iab/a/c;->b:Lcom/avira/android/iab/a/b;

    iget-object v1, v1, Lcom/avira/android/iab/a/b;->i:Lcom/android/a/a/a;

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 259
    if-eqz v1, :cond_3

    .line 261
    iget-object v0, p0, Lcom/avira/android/iab/a/c;->a:Lcom/avira/android/iab/a/g;

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/avira/android/iab/a/c;->a:Lcom/avira/android/iab/a/g;

    new-instance v2, Lcom/avira/android/iab/a/j;

    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/avira/android/iab/a/g;->a(Lcom/avira/android/iab/a/j;)V

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/avira/android/iab/a/c;->b:Lcom/avira/android/iab/a/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/avira/android/iab/a/b;->e:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/avira/android/iab/a/c;->a:Lcom/avira/android/iab/a/g;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/avira/android/iab/a/c;->a:Lcom/avira/android/iab/a/g;

    new-instance v1, Lcom/avira/android/iab/a/j;

    const/16 v2, -0x3e9

    const-string v3, "RemoteException while setting up in-app billing."

    invoke-direct {v1, v2, v3}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/avira/android/iab/a/g;->a(Lcom/avira/android/iab/a/j;)V

    goto :goto_0

    .line 269
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing version 3 supported for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 272
    iget-object v1, p0, Lcom/avira/android/iab/a/c;->b:Lcom/avira/android/iab/a/b;

    iget-object v1, v1, Lcom/avira/android/iab/a/b;->i:Lcom/android/a/a/a;

    const/4 v2, 0x3

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/a/a/a;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 273
    if-nez v0, :cond_4

    .line 275
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 276
    iget-object v0, p0, Lcom/avira/android/iab/a/c;->b:Lcom/avira/android/iab/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/avira/android/iab/a/b;->e:Z

    .line 283
    :goto_1
    iget-object v0, p0, Lcom/avira/android/iab/a/c;->b:Lcom/avira/android/iab/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/avira/android/iab/a/b;->c:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    iget-object v0, p0, Lcom/avira/android/iab/a/c;->a:Lcom/avira/android/iab/a/g;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/avira/android/iab/a/c;->a:Lcom/avira/android/iab/a/g;

    new-instance v1, Lcom/avira/android/iab/a/j;

    const-string v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/avira/android/iab/a/g;->a(Lcom/avira/android/iab/a/j;)V

    goto/16 :goto_0

    .line 280
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Subscriptions NOT AVAILABLE. Response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 240
    invoke-static {}, Lcom/avira/android/iab/a/b;->f()V

    .line 241
    iget-object v0, p0, Lcom/avira/android/iab/a/c;->b:Lcom/avira/android/iab/a/b;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/avira/android/iab/a/b;->i:Lcom/android/a/a/a;

    .line 242
    return-void
.end method
