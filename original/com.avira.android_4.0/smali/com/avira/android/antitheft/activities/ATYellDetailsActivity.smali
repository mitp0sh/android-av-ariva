.class public Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SCREAM_TIMEOUT_MILLISECONDS:J = 0x4e20L


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:I

.field private f:Z

.field private g:Lcom/avira/android/antitheft/yell/a;

.field private final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->e:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->f:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->h:Landroid/os/Handler;

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->e:I

    return p1
.end method

.method static synthetic a(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-boolean v1, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->f:Z

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->b:Landroid/widget/Button;

    const v2, 0x7f08014a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 115
    iget-object v1, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->a:Landroid/widget/ImageView;

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v1, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->h:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->h:Landroid/os/Handler;

    new-instance v2, Lcom/avira/android/antitheft/activities/c;

    invoke-direct {v2, p0, v0}, Lcom/avira/android/antitheft/activities/c;-><init>(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;B)V

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    iget-object v1, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->g:Lcom/avira/android/antitheft/yell/a;

    invoke-virtual {v1}, Lcom/avira/android/antitheft/yell/a;->b()V

    .line 125
    :goto_0
    iget-boolean v1, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->f:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->f:Z

    .line 126
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->b:Landroid/widget/Button;

    const v2, 0x7f080149

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 122
    iget-object v1, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->a:Landroid/widget/ImageView;

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v1, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->g:Lcom/avira/android/antitheft/yell/a;

    invoke-virtual {v1}, Lcom/avira/android/antitheft/yell/a;->c()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method static synthetic b(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->e:I

    return v0
.end method

.method static synthetic c(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->a()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01cc

    if-ne v0, v1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->a()V

    .line 141
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030095

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->setContentView(I)V

    const v0, 0x7f0e01c9

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f0e01cc

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e01c7

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e01c6

    invoke-virtual {p0, v0}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/avira/android/antitheft/activities/b;

    invoke-direct {v1, p0}, Lcom/avira/android/antitheft/activities/b;-><init>(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 57
    invoke-static {}, Lcom/avira/android/antitheft/yell/a;->a()Lcom/avira/android/antitheft/yell/a;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->g:Lcom/avira/android/antitheft/yell/a;

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 101
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->c()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->f:Z

    .line 106
    invoke-direct {p0}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->a()V

    .line 108
    :cond_0
    return-void
.end method
