.class public final Lcom/avira/android/utilities/ag;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mLastFragment:Lcom/avira/android/utilities/af;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mOnTabHostSelectionChanged:Lcom/avira/android/utilities/ah;

.field private mTabItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/utilities/ai;",
            ">;"
        }
    .end annotation
.end field

.field private mTabRow:Landroid/widget/LinearLayout;

.field private mTabs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/utilities/ag;->mTabItems:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/utilities/ag;->mTabs:Ljava/util/HashMap;

    .line 51
    iput-object p2, p0, Lcom/avira/android/utilities/ag;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 52
    iput-object p1, p0, Lcom/avira/android/utilities/ag;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private addTab(Lcom/avira/android/utilities/ai;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method private loadContentView()V
    .locals 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/avira/android/utilities/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 187
    const v1, 0x7f0300a6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/utilities/ag;->mView:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/avira/android/utilities/ag;->addView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mView:Landroid/view/View;

    const v1, 0x7f0e0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/utilities/ag;->mTabRow:Landroid/widget/LinearLayout;

    .line 192
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mView:Landroid/view/View;

    const v1, 0x7f0e0080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/avira/android/utilities/ag;->mMenuButton:Landroid/widget/ImageButton;

    .line 193
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method private setSelected(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 252
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/avira/android/utilities/ag;->mTabRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/avira/android/utilities/ag;->mTabRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 255
    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 259
    return-void
.end method

.method private updateUI()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 124
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 127
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v3

    move v4, v5

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/utilities/ai;

    .line 129
    const v1, 0x7f0300a5

    invoke-virtual {v7, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 130
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v5, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 133
    invoke-virtual {v0}, Lcom/avira/android/utilities/ai;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 135
    if-nez v4, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/avira/android/utilities/ai;->d()Ljava/lang/Object;

    move-result-object v2

    .line 139
    :cond_0
    iget-object v10, p0, Lcom/avira/android/utilities/ag;->mTabRow:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v10, v1, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v4, p0, Lcom/avira/android/utilities/ag;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/avira/android/utilities/ai;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v6

    .line 141
    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0, v2}, Lcom/avira/android/utilities/ag;->showTab(Ljava/lang/Object;)V

    .line 144
    return-void
.end method


# virtual methods
.method public final createTabItem(Ljava/lang/String;ZLcom/avira/android/utilities/af;Ljava/lang/Object;)Lcom/avira/android/utilities/ai;
    .locals 6

    .prologue
    .line 78
    new-instance v0, Lcom/avira/android/utilities/ai;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/avira/android/utilities/ai;-><init>(Lcom/avira/android/utilities/ag;Ljava/lang/String;ZLcom/avira/android/utilities/af;Ljava/lang/Object;)V

    .line 79
    invoke-direct {p0, v0}, Lcom/avira/android/utilities/ag;->addTab(Lcom/avira/android/utilities/ai;)V

    .line 80
    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/avira/android/utilities/ag;->loadContentView()V

    .line 94
    invoke-direct {p0}, Lcom/avira/android/utilities/ag;->updateUI()V

    .line 96
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 97
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, p1

    .line 214
    check-cast v0, Landroid/widget/Button;

    .line 215
    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/android/utilities/ai;

    .line 217
    if-eqz v1, :cond_2

    .line 219
    invoke-virtual {v1}, Lcom/avira/android/utilities/ai;->c()Lcom/avira/android/utilities/af;

    move-result-object v3

    .line 221
    invoke-direct {p0, p1}, Lcom/avira/android/utilities/ag;->setSelected(Landroid/view/View;)V

    .line 222
    iget-object v4, p0, Lcom/avira/android/utilities/ag;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 223
    iget-object v5, p0, Lcom/avira/android/utilities/ag;->mLastFragment:Lcom/avira/android/utilities/af;

    if-eqz v5, :cond_0

    .line 225
    iget-object v5, p0, Lcom/avira/android/utilities/ag;->mLastFragment:Lcom/avira/android/utilities/af;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 226
    iget-object v5, p0, Lcom/avira/android/utilities/ag;->mLastFragment:Lcom/avira/android/utilities/af;

    invoke-virtual {v5, v2}, Lcom/avira/android/utilities/af;->a(Z)V

    .line 229
    :cond_0
    const v5, 0x7f0e0205

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 230
    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 232
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mOnTabHostSelectionChanged:Lcom/avira/android/utilities/ah;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mOnTabHostSelectionChanged:Lcom/avira/android/utilities/ah;

    invoke-virtual {v1}, Lcom/avira/android/utilities/ai;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/avira/android/utilities/ah;->a(Ljava/lang/Object;)V

    .line 237
    :cond_1
    iput-object v3, p0, Lcom/avira/android/utilities/ag;->mLastFragment:Lcom/avira/android/utilities/af;

    .line 238
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 239
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 240
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/avira/android/utilities/af;->a(Z)V

    .line 241
    iget-object v3, p0, Lcom/avira/android/utilities/ag;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Lcom/avira/android/utilities/ai;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 245
    :cond_2
    :goto_1
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mLastFragment:Lcom/avira/android/utilities/af;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mLastFragment:Lcom/avira/android/utilities/af;

    invoke-virtual {v0}, Lcom/avira/android/utilities/af;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->openOptionsMenu()V

    goto :goto_1

    .line 241
    :cond_3
    const/16 v0, 0x8

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x7f0e0080
        :pswitch_0
    .end packed-switch
.end method

.method public final removeTab(Lcom/avira/android/utilities/ai;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mTabItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public final setOnTabHostSelectionChanged(Lcom/avira/android/utilities/ah;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/avira/android/utilities/ag;->mOnTabHostSelectionChanged:Lcom/avira/android/utilities/ah;

    .line 63
    return-void
.end method

.method public final showTab(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/avira/android/utilities/ag;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/avira/android/utilities/ag;->loadContentView()V

    .line 156
    invoke-direct {p0}, Lcom/avira/android/utilities/ag;->updateUI()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 160
    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 165
    :cond_1
    return-void
.end method

.method public final updateParentVisibility(Z)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/avira/android/utilities/ag;->mTabs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 171
    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/utilities/ai;

    .line 173
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/avira/android/utilities/ai;->c()Lcom/avira/android/utilities/af;

    move-result-object v0

    .line 176
    invoke-virtual {v0, p1}, Lcom/avira/android/utilities/af;->b(Z)V

    goto :goto_0

    .line 179
    :cond_1
    return-void
.end method
