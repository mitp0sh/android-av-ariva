.class public final Lcom/avira/android/blacklist/a/i;
.super Lcom/avira/android/utilities/r;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avira/android/utilities/r",
        "<",
        "Lcom/avira/android/blacklist/model/BLHistoryItem;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private b:Lcom/avira/android/blacklist/a/j;

.field private final c:Lcom/avira/android/blacklist/d/j;

.field private final d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/avira/android/blacklist/a/j;Lcom/avira/android/blacklist/d/j;Lcom/avira/android/blacklist/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLHistoryItem;",
            ">;",
            "Lcom/avira/android/blacklist/a/j;",
            "Lcom/avira/android/blacklist/d/j;",
            "Lcom/avira/android/blacklist/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p5}, Lcom/avira/android/utilities/r;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/avira/android/blacklist/c/b;)V

    .line 51
    iput-object p3, p0, Lcom/avira/android/blacklist/a/i;->b:Lcom/avira/android/blacklist/a/j;

    .line 52
    iput-object p4, p0, Lcom/avira/android/blacklist/a/i;->c:Lcom/avira/android/blacklist/d/j;

    .line 53
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/avira/android/blacklist/a/i;->d:Landroid/view/LayoutInflater;

    .line 54
    return-void
.end method


# virtual methods
.method public final a()Lcom/avira/android/blacklist/a/j;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/avira/android/blacklist/a/i;->b:Lcom/avira/android/blacklist/a/j;

    return-object v0
.end method

.method public final a(Lcom/avira/android/blacklist/a/j;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/avira/android/blacklist/a/i;->b:Lcom/avira/android/blacklist/a/j;

    .line 65
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const v7, 0x7f0e0084

    const v5, 0x7f0e0082

    const v4, 0x7f030020

    const/4 v6, 0x5

    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0, p1}, Lcom/avira/android/blacklist/a/i;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    .line 81
    invoke-virtual {p0}, Lcom/avira/android/blacklist/a/i;->getContext()Landroid/content/Context;

    .line 83
    iget-object v1, p0, Lcom/avira/android/blacklist/a/i;->b:Lcom/avira/android/blacklist/a/j;

    sget-object v2, Lcom/avira/android/blacklist/a/j;->CONTACT_DETAILS_HISTORY:Lcom/avira/android/blacklist/a/j;

    if-ne v1, v2, :cond_2

    .line 85
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/avira/android/blacklist/a/i;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avira/android/blacklist/a/i;->c:Lcom/avira/android/blacklist/d/j;

    sget-object v3, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :goto_1
    const v0, 0x7f0e0083

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 95
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-object p2

    .line 85
    :cond_1
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0e0085

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/avira/android/blacklist/a/i;->b:Lcom/avira/android/blacklist/a/j;

    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/avira/android/blacklist/a/i;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v4, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v3, p0, Lcom/avira/android/blacklist/a/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v3, Lcom/avira/android/blacklist/a/j;->DELETE_DETAILS_CALL_HISTORY:Lcom/avira/android/blacklist/a/j;

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0e0085

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0082

    if-ne v0, v1, :cond_0

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    .line 192
    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lcom/avira/android/blacklist/a/i;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/a/i;->b(Lcom/avira/android/utilities/s;)V

    move v0, v1

    .line 203
    :goto_0
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    :cond_0
    return-void

    .line 199
    :cond_1
    const/4 v1, 0x1

    .line 200
    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/a/i;->a(Lcom/avira/android/utilities/s;)V

    move v0, v1

    goto :goto_0
.end method
