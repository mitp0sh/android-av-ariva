.class final Lcom/avira/applock/service/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/applock/service/AppLockerService;


# direct methods
.method private constructor <init>(Lcom/avira/applock/service/AppLockerService;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/avira/applock/service/b;->a:Lcom/avira/applock/service/AppLockerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/applock/service/AppLockerService;B)V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/avira/applock/service/b;-><init>(Lcom/avira/applock/service/AppLockerService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 476
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/avira/applock/service/b;->a:Lcom/avira/applock/service/AppLockerService;

    invoke-static {v0}, Lcom/avira/applock/service/AppLockerService;->e(Lcom/avira/applock/service/AppLockerService;)V

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/avira/applock/service/b;->a:Lcom/avira/applock/service/AppLockerService;

    invoke-static {v0}, Lcom/avira/applock/service/AppLockerService;->f(Lcom/avira/applock/service/AppLockerService;)V

    goto :goto_0
.end method
