.class public Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/featuresintroduction/g;


# instance fields
.field private a:Lcom/avira/android/featuresintroduction/c;

.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->a:Lcom/avira/android/featuresintroduction/c;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;)Lcom/avira/android/featuresintroduction/c;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->a:Lcom/avira/android/featuresintroduction/c;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->b:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move v0, v1

    .line 88
    :goto_0
    if-ge v0, p1, :cond_0

    .line 90
    const v3, 0x7f03006f

    iget-object v4, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    new-instance v4, Lcom/avira/android/featuresintroduction/b;

    invoke-direct {v4, p0}, Lcom/avira/android/featuresintroduction/b;-><init>(Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v4, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v4/view/aj;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/aj;)V

    .line 73
    return-void
.end method

.method public final a(ZZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 79
    iget-object v3, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v3, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->d:Landroid/view/View;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->e:Landroid/view/View;

    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    return-void

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v0, v2

    .line 80
    goto :goto_1

    :cond_2
    move v1, v2

    .line 81
    goto :goto_2
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0163

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 111
    if-ne v0, p1, :cond_0

    const v1, 0x7f0200ff

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    const v1, 0x7f020118

    goto :goto_1

    .line 114
    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 120
    return-void
.end method

.method public final d()Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 0

    .prologue
    .line 66
    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->a:Lcom/avira/android/featuresintroduction/c;

    invoke-virtual {v0}, Lcom/avira/android/featuresintroduction/c;->b()V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->a:Lcom/avira/android/featuresintroduction/c;

    invoke-virtual {v0}, Lcom/avira/android/featuresintroduction/c;->c()V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->a:Lcom/avira/android/featuresintroduction/c;

    invoke-virtual {v0}, Lcom/avira/android/featuresintroduction/c;->d()V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x7f0e0119
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    new-instance v0, Lcom/avira/android/featuresintroduction/c;

    invoke-direct {v0, p0}, Lcom/avira/android/featuresintroduction/c;-><init>(Lcom/avira/android/featuresintroduction/g;)V

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->a:Lcom/avira/android/featuresintroduction/c;

    .line 35
    const v0, 0x7f030054

    invoke-virtual {p0, v0}, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->setContentView(I)V

    const v0, 0x7f0e0118

    invoke-virtual {p0, v0}, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->b:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f0e0119

    invoke-virtual {p0, v0}, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->c:Landroid/view/View;

    const v0, 0x7f0e011a

    invoke-virtual {p0, v0}, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->d:Landroid/view/View;

    const v0, 0x7f0e011b

    invoke-virtual {p0, v0}, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->e:Landroid/view/View;

    const v0, 0x7f0e011c

    invoke-virtual {p0, v0}, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/avira/android/featuresintroduction/a;

    invoke-direct {v1, p0}, Lcom/avira/android/featuresintroduction/a;-><init>(Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bv;)V

    .line 36
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->a:Lcom/avira/android/featuresintroduction/c;

    invoke-virtual {v0}, Lcom/avira/android/featuresintroduction/c;->a()V

    .line 37
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->a:Lcom/avira/android/featuresintroduction/c;

    invoke-virtual {v0}, Lcom/avira/android/featuresintroduction/c;->e()V

    .line 157
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 149
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->a:Lcom/avira/android/featuresintroduction/c;

    invoke-virtual {v0}, Lcom/avira/android/featuresintroduction/c;->f()V

    .line 150
    return-void
.end method
