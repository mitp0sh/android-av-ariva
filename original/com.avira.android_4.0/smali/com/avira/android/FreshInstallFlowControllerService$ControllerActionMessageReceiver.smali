.class public Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/FreshInstallFlowControllerService;


# direct methods
.method public constructor <init>(Lcom/avira/android/FreshInstallFlowControllerService;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/16 v7, 0x3ee

    const/16 v6, 0x3ed

    const/4 v5, 0x1

    .line 390
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 391
    if-nez v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-static {v0}, Lcom/avira/android/i;->a(Ljava/lang/String;)Lcom/avira/android/i;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_0

    .line 400
    const-string v1, "\'%s\' onReceive called with \'%s\' action(%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/avira/android/i;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 404
    sget-object v1, Lcom/avira/android/m;->$SwitchMap$com$avira$android$ApplicationStateAction:[I

    invoke-virtual {v0}, Lcom/avira/android/i;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 407
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;I)V

    .line 408
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;)V

    goto :goto_0

    .line 411
    :pswitch_1
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;I)V

    .line 412
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;)V

    goto :goto_0

    .line 415
    :pswitch_2
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    const/16 v1, 0x3ec

    invoke-static {v0, v1}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;I)V

    .line 416
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;)V

    goto :goto_0

    .line 419
    :pswitch_3
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {v0, v6}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;I)V

    .line 420
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;)V

    goto :goto_0

    .line 424
    :pswitch_4
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {v0, v6}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;I)V

    .line 425
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;)V

    goto :goto_0

    .line 428
    :pswitch_5
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {v0, v7}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;I)V

    .line 429
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;)V

    goto :goto_0

    .line 432
    :pswitch_6
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    const/16 v1, 0x3ef

    invoke-static {v0, v1}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;I)V

    .line 433
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;)V

    .line 434
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {}, Lcom/avira/android/FreshInstallFlowControllerService;->a()V

    .line 435
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->k()V

    goto/16 :goto_0

    .line 440
    :pswitch_7
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;I)V

    goto/16 :goto_0

    .line 446
    :pswitch_8
    invoke-static {}, Lcom/avira/android/FreshInstallFlowControllerService;->b()Z

    .line 448
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {}, Lcom/avira/android/FreshInstallFlowControllerService;->a()V

    .line 450
    sget-boolean v0, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a:Z

    if-nez v0, :cond_0

    .line 452
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->k()V

    goto/16 :goto_0

    .line 456
    :pswitch_9
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->k()V

    goto/16 :goto_0

    .line 459
    :pswitch_a
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/avira/android/ApplicationService;->b(Z)V

    .line 460
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->b()Lcom/avira/android/antivirus/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/antivirus/h;->a()V

    .line 461
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {v0, v7}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;I)V

    .line 462
    iget-object v0, p0, Lcom/avira/android/FreshInstallFlowControllerService$ControllerActionMessageReceiver;->a:Lcom/avira/android/FreshInstallFlowControllerService;

    invoke-static {v0}, Lcom/avira/android/FreshInstallFlowControllerService;->a(Lcom/avira/android/FreshInstallFlowControllerService;)V

    goto/16 :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
