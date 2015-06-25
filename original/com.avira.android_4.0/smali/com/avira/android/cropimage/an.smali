.class final Lcom/avira/android/cropimage/an;
.super Lcom/avira/android/cropimage/ah;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/avira/android/cropimage/MonitoredActivity;

.field private final b:Landroid/app/ProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/avira/android/cropimage/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/avira/android/cropimage/ah;-><init>()V

    .line 488
    new-instance v0, Lcom/avira/android/cropimage/ao;

    invoke-direct {v0, p0}, Lcom/avira/android/cropimage/ao;-><init>(Lcom/avira/android/cropimage/an;)V

    iput-object v0, p0, Lcom/avira/android/cropimage/an;->e:Ljava/lang/Runnable;

    .line 501
    iput-object p1, p0, Lcom/avira/android/cropimage/an;->a:Lcom/avira/android/cropimage/MonitoredActivity;

    .line 502
    iput-object p3, p0, Lcom/avira/android/cropimage/an;->b:Landroid/app/ProgressDialog;

    .line 503
    iput-object p2, p0, Lcom/avira/android/cropimage/an;->c:Ljava/lang/Runnable;

    .line 504
    iget-object v0, p0, Lcom/avira/android/cropimage/an;->a:Lcom/avira/android/cropimage/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/avira/android/cropimage/MonitoredActivity;->a(Lcom/avira/android/cropimage/ai;)V

    .line 505
    iput-object p4, p0, Lcom/avira/android/cropimage/an;->d:Landroid/os/Handler;

    .line 506
    return-void
.end method

.method static synthetic a(Lcom/avira/android/cropimage/an;)Lcom/avira/android/cropimage/MonitoredActivity;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/avira/android/cropimage/an;->a:Lcom/avira/android/cropimage/MonitoredActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/android/cropimage/an;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/avira/android/cropimage/an;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/avira/android/cropimage/an;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 527
    iget-object v0, p0, Lcom/avira/android/cropimage/an;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avira/android/cropimage/an;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/avira/android/cropimage/an;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 540
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/avira/android/cropimage/an;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 534
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/cropimage/an;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    iget-object v0, p0, Lcom/avira/android/cropimage/an;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avira/android/cropimage/an;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 518
    return-void

    .line 517
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avira/android/cropimage/an;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/avira/android/cropimage/an;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
