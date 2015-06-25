.class final Lcom/facebook/cz;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/facebook/cy;


# direct methods
.method private constructor <init>(Lcom/facebook/cy;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/facebook/cz;->a:Lcom/facebook/cy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cy;B)V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/facebook/cz;-><init>(Lcom/facebook/cy;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 264
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/cz;->a:Lcom/facebook/cy;

    invoke-static {v1}, Lcom/facebook/cy;->a(Lcom/facebook/cy;)Lcom/facebook/cn;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/facebook/cz;->a:Lcom/facebook/cy;

    invoke-static {v1}, Lcom/facebook/cy;->a(Lcom/facebook/cy;)Lcom/facebook/cn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/by;->a(Lcom/facebook/cn;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/cz;->a:Lcom/facebook/cy;

    invoke-static {v1}, Lcom/facebook/cy;->a(Lcom/facebook/cy;)Lcom/facebook/cn;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/facebook/cz;->a:Lcom/facebook/cy;

    invoke-static {v1}, Lcom/facebook/cy;->a(Lcom/facebook/cy;)Lcom/facebook/cn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/by;->b(Lcom/facebook/cn;)V

    goto :goto_0
.end method
