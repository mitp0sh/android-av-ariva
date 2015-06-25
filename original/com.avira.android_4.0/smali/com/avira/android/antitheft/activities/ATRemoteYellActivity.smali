.class public Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"


# static fields
.field private static final SCREAM_UI_DURATION_MILLISECONDS:J = 0x4e20L


# instance fields
.field private a:Lcom/avira/android/remotecomponents/CommandIntegrator;

.field private b:Ljava/util/Timer;

.field private c:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->b:Ljava/util/Timer;

    .line 127
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 115
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->b:Ljava/util/Timer;

    .line 116
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->b:Ljava/util/Timer;

    new-instance v1, Lcom/avira/android/antitheft/activities/a;

    invoke-direct {v1, p0, p0}, Lcom/avira/android/antitheft/activities/a;-><init>(Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 117
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/avira/android/antitheft/yell/b;->a()Lcom/avira/android/antitheft/yell/b;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->a:Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-virtual {v0, v1}, Lcom/avira/android/antitheft/yell/b;->a(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 122
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 106
    :cond_1
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :pswitch_0
    return v0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030096

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "INFO"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->c:Landroid/os/PowerManager$WakeLock;

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bundle_data_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator;

    iput-object v0, p0, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->a:Lcom/avira/android/remotecomponents/CommandIntegrator;

    .line 40
    invoke-direct {p0}, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->a()V

    .line 41
    invoke-direct {p0}, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->b()V

    .line 42
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 83
    invoke-direct {p0}, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->a()V

    .line 84
    invoke-direct {p0}, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->b()V

    .line 85
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 63
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 67
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATRemoteYellActivity;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 77
    :cond_0
    return-void
.end method
