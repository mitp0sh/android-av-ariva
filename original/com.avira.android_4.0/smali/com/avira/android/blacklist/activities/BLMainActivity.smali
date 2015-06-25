.class public Lcom/avira/android/blacklist/activities/BLMainActivity;
.super Lcom/avira/android/ux/ParallaxDashboardActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/blacklist/d/r;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 107
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->c()Lcom/avira/android/blacklist/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/h;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLMainActivity;->a:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLMainActivity;->c:Landroid/widget/TextView;

    const v2, 0x7f08023e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/avira/android/blacklist/activities/BLMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 114
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->d()Lcom/avira/android/blacklist/d/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/n;->b()J

    move-result-wide v0

    .line 117
    iget-object v2, p0, Lcom/avira/android/blacklist/activities/BLMainActivity;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v2, p0, Lcom/avira/android/blacklist/activities/BLMainActivity;->d:Landroid/widget/TextView;

    const v3, 0x7f080244

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/avira/android/blacklist/activities/BLMainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    const-string v0, "blacklistTable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->a()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v0, "blacklistDataStore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->b()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 63
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/blacklist/activities/BLContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0044 -> :sswitch_0
        0x7f0e0046 -> :sswitch_1
        0x7f0e004a -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget-object v0, Lcom/avira/applock/common/ux/f;->SCROLLVIEW_CONTENT:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f03000f

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/blacklist/activities/BLMainActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    .line 38
    sget-object v0, Lcom/avira/applock/common/ux/f;->PARALLAX_HEADER:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030010

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/blacklist/activities/BLMainActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    .line 39
    sget-object v0, Lcom/avira/applock/common/ux/f;->BACKGROUND:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f03000e

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/blacklist/activities/BLMainActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    .line 42
    const v0, 0x7f03008a

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f0e0045

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLMainActivity;->a:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0e0047

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLMainActivity;->b:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0e0049

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLMainActivity;->c:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0e0048

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLMainActivity;->d:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0e0044

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f0e0046

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistTable"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 54
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onDestroy()V

    .line 88
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistTable"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->b(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 89
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->b(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onResume()V

    .line 80
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->a()V

    .line 81
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLMainActivity;->b()V

    .line 82
    return-void
.end method
