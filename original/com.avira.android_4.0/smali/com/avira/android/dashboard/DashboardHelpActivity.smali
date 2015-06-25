.class public Lcom/avira/android/dashboard/DashboardHelpActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/dashboard/y;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Lcom/avira/android/dashboard/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/avira/android/dashboard/DashboardHelpActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/dashboard/DashboardHelpActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/avira/android/dashboard/DashboardHelpActivity;)Lcom/avira/android/dashboard/q;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->c:Lcom/avira/android/dashboard/q;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 119
    const v0, 0x7f0e012d

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 122
    new-instance v1, Lcom/avira/android/dashboard/o;

    invoke-direct {v1, p0}, Lcom/avira/android/dashboard/o;-><init>(Lcom/avira/android/dashboard/DashboardHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    return-void
.end method

.method public final a(Lcom/avira/android/dashboard/u;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    sget-object v0, Lcom/avira/android/dashboard/DashboardHelpActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showRefreshUI "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    const-string v0, ""

    .line 78
    sget-object v1, Lcom/avira/android/dashboard/p;->$SwitchMap$com$avira$android$dashboard$DashboardHelpActivityPresenter$RefreshState:[I

    invoke-virtual {p1}, Lcom/avira/android/dashboard/u;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 99
    :goto_0
    sget-object v1, Lcom/avira/android/dashboard/u;->REFRESH_IN_PROGRESS:Lcom/avira/android/dashboard/u;

    if-eq p1, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->b:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->a(Ljava/lang/String;)V

    .line 114
    return-void

    .line 81
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_1
    const v0, 0x7f08015e

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :pswitch_2
    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_3
    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :pswitch_4
    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->a:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 98
    :pswitch_5
    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f0e0130

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 139
    :sswitch_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->c:Lcom/avira/android/dashboard/q;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/q;->d()V

    goto :goto_0

    .line 142
    :sswitch_1
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->c:Lcom/avira/android/dashboard/q;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/q;->e()V

    goto :goto_0

    .line 145
    :sswitch_2
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->c:Lcom/avira/android/dashboard/q;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/q;->f()V

    goto :goto_0

    .line 148
    :sswitch_3
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->c:Lcom/avira/android/dashboard/q;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/q;->g()V

    goto :goto_0

    .line 151
    :sswitch_4
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->c:Lcom/avira/android/dashboard/q;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/q;->h()V

    goto :goto_0

    .line 136
    :sswitch_data_0
    .sparse-switch
        0x7f0e0094 -> :sswitch_0
        0x7f0e0129 -> :sswitch_2
        0x7f0e012b -> :sswitch_3
        0x7f0e012d -> :sswitch_4
        0x7f0e012f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->setContentView(I)V

    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0129

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e012b

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e012d

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e012f

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0e00eb

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->b:Landroid/widget/ProgressBar;

    .line 34
    new-instance v0, Lcom/avira/android/dashboard/q;

    invoke-direct {v0, p0}, Lcom/avira/android/dashboard/q;-><init>(Lcom/avira/android/dashboard/y;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->c:Lcom/avira/android/dashboard/q;

    .line 35
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->c:Lcom/avira/android/dashboard/q;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/q;->a()V

    .line 36
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardHelpActivity;->c:Lcom/avira/android/dashboard/q;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/q;->b()V

    .line 63
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onDestroy()V

    .line 64
    return-void
.end method
