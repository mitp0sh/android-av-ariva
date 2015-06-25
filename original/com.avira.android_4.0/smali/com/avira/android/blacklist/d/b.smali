.class final Lcom/avira/android/blacklist/d/b;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/d/a;


# direct methods
.method private constructor <init>(Lcom/avira/android/blacklist/d/a;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/avira/android/blacklist/d/b;->a:Lcom/avira/android/blacklist/d/a;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/blacklist/d/a;B)V
    .locals 0

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/d/b;-><init>(Lcom/avira/android/blacklist/d/a;)V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 467
    packed-switch p1, :pswitch_data_0

    .line 479
    :goto_0
    return-void

    .line 470
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/blacklist/d/b;->a:Lcom/avira/android/blacklist/d/a;

    invoke-static {v0, p2}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/d/a;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :pswitch_1
    iget-object v0, p0, Lcom/avira/android/blacklist/d/b;->a:Lcom/avira/android/blacklist/d/a;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/d/a;)V

    goto :goto_0

    .line 478
    :pswitch_2
    iget-object v0, p0, Lcom/avira/android/blacklist/d/b;->a:Lcom/avira/android/blacklist/d/a;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/a;->b(Lcom/avira/android/blacklist/d/a;)V

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
