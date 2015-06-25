.class public final Lcom/avira/android/blacklist/a/d;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/avira/android/blacklist/model/BLContactHistory;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContactHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 43
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/avira/android/blacklist/a/d;->a:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f08025a

    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/avira/android/blacklist/a/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContactHistory;

    .line 53
    if-nez p2, :cond_0

    .line 55
    iget-object v1, p0, Lcom/avira/android/blacklist/a/d;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030021

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v2, Lcom/avira/android/blacklist/a/e;

    invoke-direct {v2, v3}, Lcom/avira/android/blacklist/a/e;-><init>(B)V

    .line 58
    const v1, 0x7f0e0086

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/avira/android/blacklist/a/e;->a:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f0e0087

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/avira/android/blacklist/a/e;->b:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f0e0088

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/avira/android/blacklist/a/e;->c:Landroid/widget/Button;

    .line 61
    const v1, 0x7f0e0089

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/avira/android/blacklist/a/e;->d:Landroid/widget/Button;

    .line 63
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/avira/android/blacklist/a/d;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 72
    iget-object v2, v1, Lcom/avira/android/blacklist/a/e;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContactHistory;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, v1, Lcom/avira/android/blacklist/a/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContactHistory;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-array v2, v7, [Ljava/lang/Object;

    sget-object v6, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v6}, Lcom/avira/android/blacklist/model/BLContactHistory;->b(Lcom/avira/android/blacklist/d/j;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v5, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 78
    iget-object v6, v1, Lcom/avira/android/blacklist/a/e;->c:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, v1, Lcom/avira/android/blacklist/a/e;->c:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v2, v1, Lcom/avira/android/blacklist/a/e;->c:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v6, v1, Lcom/avira/android/blacklist/a/e;->c:Landroid/widget/Button;

    sget-object v2, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v2}, Lcom/avira/android/blacklist/model/BLContactHistory;->c(Lcom/avira/android/blacklist/d/j;)I

    move-result v2

    if-lez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    new-array v2, v7, [Ljava/lang/Object;

    sget-object v6, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v6}, Lcom/avira/android/blacklist/model/BLContactHistory;->b(Lcom/avira/android/blacklist/d/j;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v5, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 86
    iget-object v5, v1, Lcom/avira/android/blacklist/a/e;->d:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, v1, Lcom/avira/android/blacklist/a/e;->d:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v2, v1, Lcom/avira/android/blacklist/a/e;->d:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, v1, Lcom/avira/android/blacklist/a/e;->d:Landroid/widget/Button;

    sget-object v2, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v2}, Lcom/avira/android/blacklist/model/BLContactHistory;->c(Lcom/avira/android/blacklist/d/j;)I

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 92
    return-object p2

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/android/blacklist/a/e;

    goto :goto_0

    :cond_1
    move v2, v4

    .line 81
    goto :goto_1

    :cond_2
    move v3, v4

    .line 89
    goto :goto_2
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/avira/android/blacklist/a/d;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 100
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const v1, 0x7f080263

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContactHistory;

    .line 103
    sget-object v1, Lcom/avira/android/blacklist/d/j;->NONE:Lcom/avira/android/blacklist/d/j;

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 114
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string v4, "data_bundle_tag"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    const-string v4, "display_option_tag"

    sget-object v5, Lcom/avira/android/blacklist/a/j;->CONTACT_DETAILS_HISTORY:Lcom/avira/android/blacklist/a/j;

    invoke-virtual {v5}, Lcom/avira/android/blacklist/a/j;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v4, "blacklist_option_tag"

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avira/android/blacklist/d/l;->d()Lcom/avira/android/blacklist/d/n;

    move-result-object v4

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContactHistory;->a()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v1}, Lcom/avira/android/blacklist/d/n;->a(JLcom/avira/android/blacklist/d/j;)V

    .line 122
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void

    .line 107
    :pswitch_0
    sget-object v1, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    goto :goto_0

    .line 110
    :pswitch_1
    sget-object v1, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x7f0e0088
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
