.class final Lcom/avira/android/antitheft/lock/d;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/lock/ATLockService;


# direct methods
.method constructor <init>(Lcom/avira/android/antitheft/lock/ATLockService;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/avira/android/antitheft/lock/d;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/d;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v0, p1}, Lcom/avira/android/antitheft/lock/ATLockService;->a(Lcom/avira/android/antitheft/lock/ATLockService;I)I

    .line 461
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/d;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v0}, Lcom/avira/android/antitheft/lock/ATLockService;->g(Lcom/avira/android/antitheft/lock/ATLockService;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 474
    :goto_0
    return-void

    .line 464
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/d;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/lock/ATLockService;->b(Lcom/avira/android/antitheft/lock/ATLockService;I)V

    goto :goto_0

    .line 467
    :pswitch_1
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/d;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/lock/ATLockService;->b(Lcom/avira/android/antitheft/lock/ATLockService;I)V

    goto :goto_0

    .line 470
    :pswitch_2
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/d;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/lock/ATLockService;->b(Lcom/avira/android/antitheft/lock/ATLockService;I)V

    .line 471
    iget-object v0, p0, Lcom/avira/android/antitheft/lock/d;->a:Lcom/avira/android/antitheft/lock/ATLockService;

    invoke-static {v0}, Lcom/avira/android/antitheft/lock/ATLockService;->h(Lcom/avira/android/antitheft/lock/ATLockService;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
