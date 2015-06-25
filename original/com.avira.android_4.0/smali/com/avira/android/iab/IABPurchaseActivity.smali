.class public Lcom/avira/android/iab/IABPurchaseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final RC_REQUEST:I = 0x2711

.field private static final TAG:Ljava/lang/String;


# instance fields
.field a:Lcom/avira/android/iab/IABRequestService;

.field b:Z

.field private c:Z

.field private d:Landroid/content/ServiceConnection;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->b:Z

    .line 41
    iput-boolean v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->c:Z

    .line 200
    new-instance v0, Lcom/avira/android/iab/c;

    invoke-direct {v0, p0}, Lcom/avira/android/iab/c;-><init>(Lcom/avira/android/iab/IABPurchaseActivity;)V

    iput-object v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->d:Landroid/content/ServiceConnection;

    .line 249
    new-instance v0, Lcom/avira/android/iab/d;

    invoke-direct {v0, p0}, Lcom/avira/android/iab/d;-><init>(Lcom/avira/android/iab/IABPurchaseActivity;)V

    iput-object v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->e:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v0, Lcom/avira/android/iab/e;

    invoke-direct {v0, p0}, Lcom/avira/android/iab/e;-><init>(Lcom/avira/android/iab/IABPurchaseActivity;)V

    iput-object v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/iab/IABPurchaseActivity;I)V
    .locals 3

    .prologue
    const v1, 0x7f080364

    .line 32
    sget-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    const/4 v0, -0x7

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/avira/android/iab/IABPurchaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/avira/android/iab/IABPurchaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/iab/IABPurchaseActivity;->finish()V

    return-void

    :pswitch_0
    const v0, 0x7f080363

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABPurchaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/avira/android/iab/IABPurchaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f080366

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABPurchaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x38f
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/avira/android/iab/IABPurchaseActivity;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/avira/android/iab/IABPurchaseActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->f:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic c(Lcom/avira/android/iab/IABPurchaseActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->e:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic d(Lcom/avira/android/iab/IABPurchaseActivity;)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->c:Z

    return v0
.end method

.method static synthetic e(Lcom/avira/android/iab/IABPurchaseActivity;)V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avira/android/iab/a/k;->c:Z

    sget-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/iab/IABCongratulationsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "launch_mode"

    sget-object v2, Lcom/avira/android/iab/a;->IAB_BUY_SUCCESS:Lcom/avira/android/iab/a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/avira/android/iab/IABPurchaseActivity;->finish()V

    return-void
.end method

.method static synthetic f(Lcom/avira/android/iab/IABPurchaseActivity;)V
    .locals 4

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->c:Z

    sget-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/avira/android/userprofile/s;

    invoke-direct {v0}, Lcom/avira/android/userprofile/s;-><init>()V

    invoke-virtual {v0}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/iab/IABPurchaseActivity;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-virtual {v1}, Lcom/avira/android/iab/IABRequestService;->a()Lcom/avira/android/iab/a/b;

    move-result-object v1

    sget-object v2, Lcom/avira/android/iab/a/k;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/avira/android/iab/IABPurchaseActivity;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/avira/android/iab/a/b;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/avira/android/iab/a/f;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-virtual {v0}, Lcom/avira/android/iab/IABRequestService;->a()Lcom/avira/android/iab/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-virtual {v0}, Lcom/avira/android/iab/IABRequestService;->a()Lcom/avira/android/iab/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/avira/android/iab/a/b;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABPurchaseActivity;->setContentView(I)V

    .line 49
    invoke-static {}, Lcom/avira/android/iab/s;->c()V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 319
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 168
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 142
    sget-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 145
    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/iab/IABCongratulationsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "launch_mode"

    sget-object v2, Lcom/avira/android/iab/a;->IAB_LOGIN_PREMIUM:Lcom/avira/android/iab/a;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/avira/android/iab/IABPurchaseActivity;->finish()V

    .line 155
    :goto_0
    invoke-static {}, Lcom/avira/android/iab/s;->c()V

    .line 156
    return-void

    .line 152
    :cond_0
    sget-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/iab/IABRequestService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/avira/android/iab/IABPurchaseActivity;->d:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/avira/android/iab/IABPurchaseActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/avira/android/iab/IABPurchaseActivity;->TAG:Ljava/lang/String;

    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 185
    iget-boolean v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->a:Lcom/avira/android/iab/IABRequestService;

    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/iab/IABPurchaseActivity;->d:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABPurchaseActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
