.class final Lcom/avira/android/idsafeguard/c/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/idsafeguard/c/d;


# direct methods
.method private constructor <init>(Lcom/avira/android/idsafeguard/c/d;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/avira/android/idsafeguard/c/e;->a:Lcom/avira/android/idsafeguard/c/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/idsafeguard/c/d;B)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/avira/android/idsafeguard/c/e;-><init>(Lcom/avira/android/idsafeguard/c/d;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 194
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/idsafeguard/services/b;

    .line 196
    sget-object v1, Lcom/avira/android/idsafeguard/services/b;->IDLE:Lcom/avira/android/idsafeguard/services/b;

    if-ne v0, v1, :cond_0

    .line 198
    const-string v1, "result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/avira/android/idsafeguard/services/a;

    .line 199
    iget-object v2, p0, Lcom/avira/android/idsafeguard/c/e;->a:Lcom/avira/android/idsafeguard/c/d;

    invoke-static {v2}, Lcom/avira/android/idsafeguard/c/d;->a(Lcom/avira/android/idsafeguard/c/d;)Lcom/avira/android/idsafeguard/b/f;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/avira/android/idsafeguard/b/f;->a(Lcom/avira/android/idsafeguard/services/a;)V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/avira/android/idsafeguard/c/e;->a:Lcom/avira/android/idsafeguard/c/d;

    invoke-static {v1}, Lcom/avira/android/idsafeguard/c/d;->a(Lcom/avira/android/idsafeguard/c/d;)Lcom/avira/android/idsafeguard/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avira/android/idsafeguard/b/f;->a(Lcom/avira/android/idsafeguard/services/b;)V

    .line 202
    return-void
.end method
