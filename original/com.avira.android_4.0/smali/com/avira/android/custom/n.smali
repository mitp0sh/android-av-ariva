.class public final Lcom/avira/android/custom/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUTTON_PADDING_IN_DP:I = 0xc


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/avira/android/custom/OEMessageDialogFragment;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Lcom/avira/android/custom/ab;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "MessageDialogHelper is in an illegal state. It has not been initialized with a MessageDialogFragment or a MessageDialog."

    iput-object v0, p0, Lcom/avira/android/custom/n;->a:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    .line 48
    iput-object v1, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    .line 97
    instance-of v0, p1, Lcom/avira/android/custom/OEMessageDialogFragment;

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Lcom/avira/android/custom/OEMessageDialogFragment;

    iput-object p1, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object must be of MessageDialogFragment or MessageDialog types only."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/widget/Button;Lcom/avira/android/custom/y;)V
    .locals 2

    .prologue
    .line 372
    sget-object v0, Lcom/avira/android/custom/v;->$SwitchMap$com$avira$android$custom$OEMessageDialogHelper$ButtonTheme:[I

    invoke-virtual {p2}, Lcom/avira/android/custom/y;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-virtual {v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 390
    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 391
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 393
    return-void

    .line 375
    :pswitch_0
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 376
    const v0, 0x7f0200d2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 380
    :pswitch_1
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 381
    const v0, 0x7f0200a1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/avira/android/custom/n;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    invoke-virtual {v0}, Lcom/avira/android/custom/ab;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/avira/android/custom/n;->b()V

    return-void
.end method

.method private a(Lcom/avira/android/custom/w;)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/custom/n;->c:Landroid/widget/LinearLayout;

    .line 362
    sget-object v0, Lcom/avira/android/custom/w;->Horizontal:Lcom/avira/android/custom/w;

    invoke-virtual {v0, p1}, Lcom/avira/android/custom/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/avira/android/custom/n;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 365
    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MessageDialogHelper is in an illegal state. It has not been initialized with a MessageDialogFragment or a MessageDialog."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/avira/android/custom/y;)V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/custom/n;->d:Landroid/widget/Button;

    .line 409
    iget-object v0, p0, Lcom/avira/android/custom/n;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/avira/android/custom/n;->d:Landroid/widget/Button;

    new-instance v1, Lcom/avira/android/custom/p;

    invoke-direct {v1, p0}, Lcom/avira/android/custom/p;-><init>(Lcom/avira/android/custom/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/avira/android/custom/n;->d:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/avira/android/custom/n;->a(Landroid/widget/Button;Lcom/avira/android/custom/y;)V

    .line 422
    return-void

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MessageDialogHelper is in an illegal state. It has not been initialized with a MessageDialogFragment or a MessageDialog."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 733
    if-eqz v0, :cond_0

    .line 735
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 737
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MessageDialogHelper is in an illegal state. It has not been initialized with a MessageDialogFragment or a MessageDialog."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-virtual {v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/avira/android/custom/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-virtual {v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 658
    invoke-static {}, Lcom/avira/android/custom/BaseFragmentActivity;->g()V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-virtual {v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 664
    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/avira/android/custom/n;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    invoke-virtual {v0}, Lcom/avira/android/custom/ab;->d()V

    :cond_0
    invoke-direct {p0}, Lcom/avira/android/custom/n;->b()V

    return-void
.end method

.method private b(Lcom/avira/android/custom/y;)V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/custom/n;->e:Landroid/widget/Button;

    .line 464
    iget-object v0, p0, Lcom/avira/android/custom/n;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/avira/android/custom/n;->e:Landroid/widget/Button;

    new-instance v1, Lcom/avira/android/custom/r;

    invoke-direct {v1, p0}, Lcom/avira/android/custom/r;-><init>(Lcom/avira/android/custom/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/avira/android/custom/n;->e:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/avira/android/custom/n;->a(Landroid/widget/Button;Lcom/avira/android/custom/y;)V

    .line 476
    return-void

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MessageDialogHelper is in an illegal state. It has not been initialized with a MessageDialogFragment or a MessageDialog."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/avira/android/custom/n;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    invoke-virtual {v0}, Lcom/avira/android/custom/ab;->e()V

    :cond_0
    invoke-direct {p0}, Lcom/avira/android/custom/n;->b()V

    return-void
.end method

.method private c(Lcom/avira/android/custom/y;)V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/custom/n;->h:Landroid/widget/Button;

    .line 519
    iget-object v0, p0, Lcom/avira/android/custom/n;->h:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/avira/android/custom/n;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/avira/android/custom/n;->h:Landroid/widget/Button;

    new-instance v1, Lcom/avira/android/custom/t;

    invoke-direct {v1, p0}, Lcom/avira/android/custom/t;-><init>(Lcom/avira/android/custom/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/avira/android/custom/n;->h:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/avira/android/custom/n;->a(Landroid/widget/Button;Lcom/avira/android/custom/y;)V

    .line 534
    return-void

    .line 516
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MessageDialogHelper is in an illegal state. It has not been initialized with a MessageDialogFragment or a MessageDialog."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic d(Lcom/avira/android/custom/n;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/avira/android/custom/n;->b()V

    return-void
.end method

.method private d(Lcom/avira/android/custom/y;)V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/custom/n;->i:Landroid/widget/Button;

    .line 550
    iget-object v0, p0, Lcom/avira/android/custom/n;->i:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/avira/android/custom/n;->i:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 554
    iget-object v0, p0, Lcom/avira/android/custom/n;->i:Landroid/widget/Button;

    new-instance v1, Lcom/avira/android/custom/u;

    invoke-direct {v1, p0}, Lcom/avira/android/custom/u;-><init>(Lcom/avira/android/custom/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/avira/android/custom/n;->i:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/avira/android/custom/n;->a(Landroid/widget/Button;Lcom/avira/android/custom/y;)V

    .line 565
    return-void

    .line 547
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MessageDialogHelper is in an illegal state. It has not been initialized with a MessageDialogFragment or a MessageDialog."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic e(Lcom/avira/android/custom/n;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    invoke-virtual {v0}, Lcom/avira/android/custom/ab;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/avira/android/custom/n;->b()V

    return-void
.end method

.method static synthetic f(Lcom/avira/android/custom/n;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    invoke-virtual {v0}, Lcom/avira/android/custom/ab;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/avira/android/custom/n;->b()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-virtual {v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->c()Lcom/avira/android/custom/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/custom/n;->j:Lcom/avira/android/custom/ab;

    .line 111
    return-void
.end method

.method final a(Lcom/avira/android/antivirus/data/a;)V
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 303
    iget-object v1, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0189

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 304
    iget-object v2, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e0195

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 305
    invoke-interface {p1}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 307
    const v3, 0x7f020007

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    :goto_0
    invoke-interface {p1}, Lcom/avira/android/antivirus/data/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 319
    invoke-interface {p1}, Lcom/avira/android/antivirus/data/a;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 321
    invoke-static {v0}, Lcom/avira/android/antivirus/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 311
    :cond_1
    const v3, 0x7f0200b3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 332
    :cond_3
    return-void
.end method

.method final a(Lcom/avira/android/custom/x;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    if-eqz p1, :cond_0

    .line 123
    sget-object v0, Lcom/avira/android/custom/v;->$SwitchMap$com$avira$android$custom$OEMessageDialogHelper$ButtonMode:[I

    invoke-virtual {p1}, Lcom/avira/android/custom/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 126
    :pswitch_0
    sget-object v0, Lcom/avira/android/custom/w;->Horizontal:Lcom/avira/android/custom/w;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->a(Lcom/avira/android/custom/w;)V

    .line 127
    sget-object v0, Lcom/avira/android/custom/y;->DarkGray:Lcom/avira/android/custom/y;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->a(Lcom/avira/android/custom/y;)V

    goto :goto_0

    .line 131
    :pswitch_1
    sget-object v0, Lcom/avira/android/custom/w;->Vertical:Lcom/avira/android/custom/w;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->a(Lcom/avira/android/custom/w;)V

    .line 132
    sget-object v0, Lcom/avira/android/custom/y;->DarkGray:Lcom/avira/android/custom/y;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->a(Lcom/avira/android/custom/y;)V

    .line 133
    sget-object v0, Lcom/avira/android/custom/y;->LightGray:Lcom/avira/android/custom/y;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->c(Lcom/avira/android/custom/y;)V

    goto :goto_0

    .line 137
    :pswitch_2
    sget-object v0, Lcom/avira/android/custom/w;->Horizontal:Lcom/avira/android/custom/w;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->a(Lcom/avira/android/custom/w;)V

    .line 138
    sget-object v0, Lcom/avira/android/custom/y;->DarkGray:Lcom/avira/android/custom/y;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->d(Lcom/avira/android/custom/y;)V

    goto :goto_0

    .line 142
    :pswitch_3
    sget-object v0, Lcom/avira/android/custom/w;->Vertical:Lcom/avira/android/custom/w;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->a(Lcom/avira/android/custom/w;)V

    .line 143
    sget-object v0, Lcom/avira/android/custom/y;->DarkGray:Lcom/avira/android/custom/y;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->b(Lcom/avira/android/custom/y;)V

    .line 144
    sget-object v0, Lcom/avira/android/custom/y;->LightGray:Lcom/avira/android/custom/y;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->c(Lcom/avira/android/custom/y;)V

    goto :goto_0

    .line 148
    :pswitch_4
    sget-object v0, Lcom/avira/android/custom/w;->Vertical:Lcom/avira/android/custom/w;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->a(Lcom/avira/android/custom/w;)V

    .line 149
    sget-object v1, Lcom/avira/android/custom/y;->DarkGray:Lcom/avira/android/custom/y;

    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e018d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/custom/n;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/custom/n;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/avira/android/custom/n;->g:Landroid/widget/Button;

    new-instance v2, Lcom/avira/android/custom/s;

    invoke-direct {v2, p0}, Lcom/avira/android/custom/s;-><init>(Lcom/avira/android/custom/n;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/custom/n;->g:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/avira/android/custom/n;->a(Landroid/widget/Button;Lcom/avira/android/custom/y;)V

    .line 150
    sget-object v0, Lcom/avira/android/custom/y;->LightGray:Lcom/avira/android/custom/y;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->c(Lcom/avira/android/custom/y;)V

    goto :goto_0

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MessageDialogHelper is in an illegal state. It has not been initialized with a MessageDialogFragment or a MessageDialog."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_5
    sget-object v0, Lcom/avira/android/custom/w;->Horizontal:Lcom/avira/android/custom/w;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->a(Lcom/avira/android/custom/w;)V

    .line 155
    sget-object v0, Lcom/avira/android/custom/y;->LightGray:Lcom/avira/android/custom/y;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->b(Lcom/avira/android/custom/y;)V

    .line 156
    sget-object v0, Lcom/avira/android/custom/y;->LightGray:Lcom/avira/android/custom/y;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->d(Lcom/avira/android/custom/y;)V

    goto/16 :goto_0

    .line 160
    :pswitch_6
    sget-object v0, Lcom/avira/android/custom/w;->Horizontal:Lcom/avira/android/custom/w;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->a(Lcom/avira/android/custom/w;)V

    .line 161
    sget-object v1, Lcom/avira/android/custom/y;->LightGray:Lcom/avira/android/custom/y;

    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0e018e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/custom/n;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/custom/n;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/avira/android/custom/n;->f:Landroid/widget/Button;

    new-instance v2, Lcom/avira/android/custom/q;

    invoke-direct {v2, p0}, Lcom/avira/android/custom/q;-><init>(Lcom/avira/android/custom/n;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/custom/n;->f:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/avira/android/custom/n;->a(Landroid/widget/Button;Lcom/avira/android/custom/y;)V

    .line 162
    sget-object v0, Lcom/avira/android/custom/y;->LightGray:Lcom/avira/android/custom/y;

    invoke-direct {p0, v0}, Lcom/avira/android/custom/n;->d(Lcom/avira/android/custom/y;)V

    goto/16 :goto_0

    .line 161
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MessageDialogHelper is in an illegal state. It has not been initialized with a MessageDialogFragment or a MessageDialog."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
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
    .end packed-switch
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/AviraWebView;

    .line 218
    new-instance v1, Lcom/avira/android/custom/o;

    invoke-direct {v1, p0}, Lcom/avira/android/custom/o;-><init>(Lcom/avira/android/custom/n;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/AviraWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 231
    const-string v1, "com.avira.android.ACTION_PAGE_LOAD_COMPLETED"

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/AviraWebView;->setPageCompletedBroadcastAction(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p1}, Lcom/avira/android/custom/AviraWebView;->loadUrl(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0e0185

    const v3, 0x7f0e0184

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    invoke-direct {p0, p1, v3, v2}, Lcom/avira/android/custom/n;->a(Ljava/lang/String;IZ)V

    .line 205
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 207
    invoke-direct {p0, p2, v4, v2}, Lcom/avira/android/custom/n;->a(Ljava/lang/String;IZ)V

    .line 213
    :goto_1
    return-void

    .line 202
    :cond_0
    invoke-direct {p0, v5, v3, v1}, Lcom/avira/android/custom/n;->a(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 211
    :cond_1
    invoke-direct {p0, v5, v4, v1}, Lcom/avira/android/custom/n;->a(Ljava/lang/String;IZ)V

    goto :goto_1
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x21

    const/4 v3, 0x1

    const v5, -0xffff01

    const/4 v4, 0x0

    .line 247
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 250
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 252
    if-eqz v0, :cond_0

    .line 254
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/avira/android/device/a;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Lcom/avira/android/device/a;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 255
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 260
    if-eqz v0, :cond_1

    .line 262
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 263
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 265
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 271
    if-eqz v0, :cond_2

    .line 273
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 274
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_2
    return-void
.end method

.method final a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/avira/android/custom/n;->b:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 289
    new-instance v1, Lcom/avira/android/antivirus/ag;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/avira/android/antivirus/ag;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 291
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 342
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 344
    const v0, 0x7f0e0116

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/avira/android/custom/n;->a(Ljava/lang/String;IZ)V

    .line 346
    :cond_0
    return-void
.end method
