.class final Lcom/avira/android/antitheft/lock/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/lock/ATLockService;


# direct methods
.method private constructor <init>(Lcom/avira/android/antitheft/lock/ATLockService;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/avira/android/antitheft/lock/e;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/antitheft/lock/ATLockService;B)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/avira/android/antitheft/lock/e;-><init>(Lcom/avira/android/antitheft/lock/ATLockService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 523
    :try_start_0
    const-string v0, "bundle_data_tag"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator;

    .line 524
    const-string v1, "lockMessage"

    invoke-virtual {v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    const-string v2, "lockPhoneNumber"

    invoke-virtual {v0, v2}, Lcom/avira/android/remotecomponents/CommandIntegrator;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    const-string v3, "lockMessage"

    invoke-static {v2, v3, v1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    const-string v3, "lockPhoneNumber"

    invoke-static {v2, v3, v0}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v2, p0, Lcom/avira/android/antitheft/lock/e;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v2}, Lcom/avira/android/antitheft/lock/ATLockService;->i(Lcom/avira/android/antitheft/lock/ATLockService;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v1, p0, Lcom/avira/android/antitheft/lock/e;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v1, v0}, Lcom/avira/android/antitheft/lock/ATLockService;->a(Lcom/avira/android/antitheft/lock/ATLockService;Ljava/lang/String;)Ljava/lang/String;

    .line 534
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/e;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v0}, Lcom/avira/android/antitheft/lock/ATLockService;->j(Lcom/avira/android/antitheft/lock/ATLockService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 538
    invoke-static {}, Lcom/avira/android/antitheft/lock/ATLockService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
