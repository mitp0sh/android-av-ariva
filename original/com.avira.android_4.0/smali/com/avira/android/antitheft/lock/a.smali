.class final Lcom/avira/android/antitheft/lock/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/lock/ATLockService;


# direct methods
.method constructor <init>(Lcom/avira/android/antitheft/lock/ATLockService;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/avira/android/antitheft/lock/a;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 114
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/a;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v0}, Lcom/avira/android/antitheft/lock/ATLockService;->a(Lcom/avira/android/antitheft/lock/ATLockService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/a;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v0}, Lcom/avira/android/antitheft/lock/ATLockService;->b(Lcom/avira/android/antitheft/lock/ATLockService;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/a;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v0}, Lcom/avira/android/antitheft/lock/ATLockService;->c(Lcom/avira/android/antitheft/lock/ATLockService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/antitheft/lock/a;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v0}, Lcom/avira/android/antitheft/lock/ATLockService;->d(Lcom/avira/android/antitheft/lock/ATLockService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/a;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v0}, Lcom/avira/android/antitheft/lock/ATLockService;->e(Lcom/avira/android/antitheft/lock/ATLockService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/avira/android/antitheft/lock/b;

    invoke-direct {v1, p0}, Lcom/avira/android/antitheft/lock/b;-><init>(Lcom/avira/android/antitheft/lock/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_0
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    return-void
.end method
