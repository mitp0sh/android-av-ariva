.class public Lcom/avira/android/welcome/WelcomeActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/welcome/a;


# instance fields
.field private a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/welcome/WelcomeActivity;)Lcom/avira/android/welcome/WelcomeActivityPresenter;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/android/welcome/WelcomeActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->c:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 0

    .prologue
    .line 84
    return-object p0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/avira/android/welcome/WelcomeActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/avira/android/welcome/WelcomeActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0163

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 138
    if-ne v0, p1, :cond_0

    const v1, 0x7f0200ff

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    const v1, 0x7f020118

    goto :goto_1

    .line 141
    :cond_1
    return-void
.end method

.method public final a(Landroid/support/v4/view/aj;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/aj;)V

    .line 118
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    return-void
.end method

.method public final b()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method public final b(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move v0, v1

    .line 97
    :goto_0
    if-ge v0, p1, :cond_0

    .line 99
    const v3, 0x7f03006f

    iget-object v4, p0, Lcom/avira/android/welcome/WelcomeActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    new-instance v4, Lcom/avira/android/welcome/c;

    invoke-direct {v4, p0}, Lcom/avira/android/welcome/c;-><init>(Lcom/avira/android/welcome/WelcomeActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v4, p0, Lcom/avira/android/welcome/WelcomeActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 124
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c()V

    .line 180
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 181
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 196
    :sswitch_0
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Z)V

    goto :goto_0

    .line 199
    :sswitch_1
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Z)V

    goto :goto_0

    .line 202
    :sswitch_2
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a()V

    goto :goto_0

    .line 205
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/googleconnect/GoogleConnectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/welcome/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/facebookconnect/FacebookConnectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/welcome/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 193
    :sswitch_data_0
    .sparse-switch
        0x7f0e01e7 -> :sswitch_0
        0x7f0e01e8 -> :sswitch_1
        0x7f0e0241 -> :sswitch_2
        0x7f0e0242 -> :sswitch_3
        0x7f0e0243 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0300b1

    invoke-virtual {p0, v0}, Lcom/avira/android/welcome/WelcomeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/avira/android/welcome/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->i:Landroid/os/Bundle;

    const v0, 0x7f0e0240

    invoke-virtual {p0, v0}, Lcom/avira/android/welcome/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0e01e7

    invoke-virtual {p0, v0}, Lcom/avira/android/welcome/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e01e8

    invoke-virtual {p0, v0}, Lcom/avira/android/welcome/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0241

    invoke-virtual {p0, v0}, Lcom/avira/android/welcome/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0242

    invoke-virtual {p0, v0}, Lcom/avira/android/welcome/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0243

    invoke-virtual {p0, v0}, Lcom/avira/android/welcome/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e023e

    invoke-virtual {p0, v0}, Lcom/avira/android/welcome/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->c:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->c:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/avira/android/welcome/b;

    invoke-direct {v1, p0}, Lcom/avira/android/welcome/b;-><init>(Lcom/avira/android/welcome/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bv;)V

    .line 38
    new-instance v0, Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-direct {v0, p0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;-><init>(Lcom/avira/android/welcome/a;)V

    iput-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->d()V

    .line 187
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onDestroy()V

    .line 188
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-virtual {v0, p1}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->b(Landroid/os/Bundle;)V

    .line 78
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->b()V

    .line 173
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 174
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-virtual {v0, p1}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Landroid/os/Bundle;)V

    .line 71
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->e()V

    .line 159
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onStart()V

    .line 160
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivity;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->f()V

    .line 166
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onStop()V

    .line 167
    return-void
.end method
