.class final Lcom/facebook/b/ci;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/facebook/b/ch;


# direct methods
.method private constructor <init>(Lcom/facebook/b/ch;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/facebook/b/ci;->a:Lcom/facebook/b/ch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/b/ch;B)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/facebook/b/ci;-><init>(Lcom/facebook/b/ch;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 211
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/facebook/b/ci;->a:Lcom/facebook/b/ch;

    invoke-static {v1}, Lcom/facebook/b/ch;->a(Lcom/facebook/b/ch;)Lcom/facebook/cn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/by;->a(Lcom/facebook/cn;)V

    .line 217
    :cond_0
    return-void
.end method
