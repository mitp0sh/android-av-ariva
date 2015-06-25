.class public final Lcom/avira/android/blacklist/a/b;
.super Lcom/avira/android/utilities/r;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avira/android/utilities/r",
        "<",
        "Lcom/avira/android/blacklist/model/BLContact;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private final b:Lcom/avira/android/blacklist/a/c;

.field private final c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/avira/android/blacklist/a/c;Lcom/avira/android/blacklist/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;",
            "Lcom/avira/android/blacklist/a/c;",
            "Lcom/avira/android/blacklist/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p4}, Lcom/avira/android/utilities/r;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/avira/android/blacklist/c/b;)V

    .line 52
    iput-object p3, p0, Lcom/avira/android/blacklist/a/b;->b:Lcom/avira/android/blacklist/a/c;

    .line 53
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/avira/android/blacklist/a/b;->c:Landroid/view/LayoutInflater;

    .line 54
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/avira/android/blacklist/a/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 62
    if-nez p2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/avira/android/blacklist/a/b;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030025

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    :cond_0
    const v1, 0x7f0e0083

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 69
    const v1, 0x7f0e008d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 73
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :cond_1
    const v1, 0x7f0e008e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->c()Lcom/avira/android/blacklist/model/BLNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avira/android/blacklist/model/BLNumber;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 80
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/avira/android/blacklist/a/b;->b:Lcom/avira/android/blacklist/a/c;

    sget-object v3, Lcom/avira/android/blacklist/a/c;->BLACKLIST_ITEM:Lcom/avira/android/blacklist/a/c;

    if-ne v1, v3, :cond_4

    .line 85
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v1, 0x7f0e0093

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 89
    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_3
    :goto_0
    return-object p2

    .line 95
    :cond_4
    iget-object v1, p0, Lcom/avira/android/blacklist/a/b;->b:Lcom/avira/android/blacklist/a/c;

    sget-object v3, Lcom/avira/android/blacklist/a/c;->HISTORY_ITEM:Lcom/avira/android/blacklist/a/c;

    if-ne v1, v3, :cond_3

    .line 97
    const v1, 0x7f0e0092

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    const v1, 0x7f0e0082

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 101
    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 102
    iget-object v3, p0, Lcom/avira/android/blacklist/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 109
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0e0082

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 156
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Lcom/avira/android/blacklist/a/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->b()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/a/b;->b(Lcom/avira/android/utilities/s;)V

    move v0, v1

    .line 169
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 170
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 171
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    :cond_0
    return-void

    .line 164
    :cond_1
    const/4 v1, 0x1

    .line 165
    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/a/b;->a(Lcom/avira/android/utilities/s;)V

    move v0, v1

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 122
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avira/android/blacklist/a/b;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/avira/android/blacklist/activities/BLContactEditActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "existing_contact_data_tag"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avira/android/blacklist/a/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avira.android.action.SHOW_TAB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "contact_data_tag"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "activate_tab_tag"

    sget-object v2, Lcom/avira/android/blacklist/activities/b;->History:Lcom/avira/android/blacklist/activities/b;

    invoke-virtual {v2}, Lcom/avira/android/blacklist/activities/b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0083 -> :sswitch_0
        0x7f0e0093 -> :sswitch_1
    .end sparse-switch
.end method
