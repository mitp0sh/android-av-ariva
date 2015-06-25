.class public final Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/x;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Landroid/support/v7/internal/widget/ap;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/support/v7/internal/widget/aq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 68
    invoke-static {p1}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 70
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->f()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 72
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_tabbar:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/c;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/c;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private createSpinner()Landroid/support/v7/internal/widget/aq;
    .locals 4

    .prologue
    .line 187
    new-instance v0, Landroid/support/v7/internal/widget/aq;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/widget/aq;-><init>(Landroid/content/Context;I)V

    .line 189
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/aq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/aq;->b(Landroid/support/v7/internal/widget/x;)V

    .line 192
    return-object v0
.end method

.method private createTabView(Landroid/support/v7/app/c;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_tab:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    .line 238
    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->attach(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/c;Z)V

    .line 240
    if-eqz p2, :cond_0

    .line 241
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    :goto_0
    return-object v0

    .line 245
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 247
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/internal/widget/ap;

    if-nez v1, :cond_1

    .line 248
    new-instance v1, Landroid/support/v7/internal/widget/ap;

    invoke-direct {v1, p0, v3}, Landroid/support/v7/internal/widget/ap;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;B)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/internal/widget/ap;

    .line 250
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/aq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 4

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    if-nez v0, :cond_1

    .line 141
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/support/v7/internal/widget/aq;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    .line 143
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    new-instance v1, Landroid/support/v7/internal/widget/ao;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/widget/ao;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;B)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/aq;->a(Landroid/widget/SpinnerAdapter;)V

    .line 149
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 153
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    iget v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/aq;->a(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return v4

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    iget v0, v0, Landroid/support/v7/internal/widget/v;->v:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public final addTab(Landroid/support/v7/app/c;IZ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 271
    invoke-direct {p0, p1, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/c;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v1

    .line 272
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    check-cast v0, Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ao;->notifyDataSetChanged()V

    .line 277
    :cond_0
    if-eqz p3, :cond_1

    .line 278
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 280
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 283
    :cond_2
    return-void
.end method

.method public final addTab(Landroid/support/v7/app/c;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 256
    invoke-direct {p0, p1, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/c;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v1

    .line 257
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    check-cast v0, Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ao;->notifyDataSetChanged()V

    .line 262
    :cond_0
    if-eqz p2, :cond_1

    .line 263
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 265
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_2

    .line 266
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 268
    :cond_2
    return-void
.end method

.method public final animateToTab(I)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 205
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 208
    :cond_0
    new-instance v1, Landroid/support/v7/internal/widget/an;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/widget/an;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 215
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 220
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 221
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    .line 225
    :cond_0
    return-void
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->d()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 200
    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->f()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 201
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 230
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 233
    :cond_0
    return-void
.end method

.method public final onItemClick(Landroid/support/v7/internal/widget/v;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/internal/widget/v",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 317
    check-cast p2, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    .line 318
    invoke-virtual {p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/c;

    .line 319
    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 80
    if-ne v3, v6, :cond_2

    move v0, v1

    .line 81
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 83
    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    .line 84
    if-le v4, v1, :cond_4

    if-eq v3, v6, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_4

    .line 86
    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_3

    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 91
    :goto_1
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 96
    :goto_2
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 98
    if-nez v0, :cond_5

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v4, :cond_5

    .line 100
    :goto_3
    if-eqz v1, :cond_7

    .line 102
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 103
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-le v1, v2, :cond_6

    .line 104
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 112
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    .line 113
    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 114
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    .line 116
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    .line 118
    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 120
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 80
    goto :goto_0

    .line 89
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 93
    :cond_4
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    :cond_5
    move v1, v2

    .line 98
    goto :goto_3

    .line 106
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4

    .line 109
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_4
.end method

.method public final removeAllTabs()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 307
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    check-cast v0, Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ao;->notifyDataSetChanged()V

    .line 310
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 313
    :cond_1
    return-void
.end method

.method public final removeTabAt(I)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 297
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    check-cast v0, Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ao;->notifyDataSetChanged()V

    .line 300
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 303
    :cond_1
    return-void
.end method

.method public final setAllowCollapse(Z)V
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 133
    return-void
.end method

.method public final setContentHeight(I)V
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 183
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 184
    return-void
.end method

.method public final setTabSelected(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 169
    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 170
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 171
    :goto_0
    if-ge v2, v3, :cond_2

    .line 172
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 173
    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    .line 174
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 171
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 173
    goto :goto_1

    .line 179
    :cond_2
    return-void
.end method

.method public final updateTab(I)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->update()V

    .line 287
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/support/v7/internal/widget/aq;

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    check-cast v0, Landroid/support/v7/internal/widget/ao;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ao;->notifyDataSetChanged()V

    .line 290
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    .line 293
    :cond_1
    return-void
.end method
