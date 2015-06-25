.class final Lcom/avira/applock/service/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/applock/service/AppLockerService;


# direct methods
.method constructor <init>(Lcom/avira/applock/service/AppLockerService;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/avira/applock/service/a;->a:Lcom/avira/applock/service/AppLockerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 64
    :goto_0
    iget-object v0, p0, Lcom/avira/applock/service/a;->a:Lcom/avira/applock/service/AppLockerService;

    invoke-static {v0}, Lcom/avira/applock/service/AppLockerService;->a(Lcom/avira/applock/service/AppLockerService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/avira/applock/service/a;->a:Lcom/avira/applock/service/AppLockerService;

    invoke-static {v0}, Lcom/avira/applock/service/AppLockerService;->b(Lcom/avira/applock/service/AppLockerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/applock/g/a;->a(Landroid/content/Context;)Lcom/avira/applock/b/c;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/avira/applock/service/a;->a:Lcom/avira/applock/service/AppLockerService;

    iget-object v1, p0, Lcom/avira/applock/service/a;->a:Lcom/avira/applock/service/AppLockerService;

    invoke-static {v1}, Lcom/avira/applock/service/AppLockerService;->c(Lcom/avira/applock/service/AppLockerService;)Lcom/avira/applock/b/c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avira/applock/service/AppLockerService;->a(Lcom/avira/applock/b/c;Lcom/avira/applock/b/c;)Z

    move-result v1

    .line 74
    iget-object v2, p0, Lcom/avira/applock/service/a;->a:Lcom/avira/applock/service/AppLockerService;

    invoke-static {v2}, Lcom/avira/applock/service/AppLockerService;->d(Lcom/avira/applock/service/AppLockerService;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/avira/applock/service/a;->a:Lcom/avira/applock/service/AppLockerService;

    iget-object v2, p0, Lcom/avira/applock/service/a;->a:Lcom/avira/applock/service/AppLockerService;

    invoke-static {v2}, Lcom/avira/applock/service/AppLockerService;->c(Lcom/avira/applock/service/AppLockerService;)Lcom/avira/applock/b/c;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/avira/applock/service/AppLockerService;->b(Lcom/avira/applock/b/c;Lcom/avira/applock/b/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/avira/applock/service/a;->a:Lcom/avira/applock/service/AppLockerService;

    iget-object v3, p0, Lcom/avira/applock/service/a;->a:Lcom/avira/applock/service/AppLockerService;

    invoke-static {v3}, Lcom/avira/applock/service/AppLockerService;->c(Lcom/avira/applock/service/AppLockerService;)Lcom/avira/applock/b/c;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/avira/applock/service/AppLockerService;->a(Lcom/avira/applock/service/AppLockerService;Lcom/avira/applock/b/c;Lcom/avira/applock/b/c;Z)V

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/avira/applock/service/a;->a:Lcom/avira/applock/service/AppLockerService;

    invoke-static {v1, v0}, Lcom/avira/applock/service/AppLockerService;->a(Lcom/avira/applock/service/AppLockerService;Lcom/avira/applock/b/c;)Lcom/avira/applock/b/c;

    .line 82
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    :cond_2
    return-void
.end method
