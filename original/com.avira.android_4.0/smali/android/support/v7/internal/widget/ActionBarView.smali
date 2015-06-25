.class public Landroid/support/v7/internal/widget/ActionBarView;
.super Landroid/support/v7/internal/widget/a;
.source "SourceFile"


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x13

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mCallback:Landroid/support/v7/app/b;

.field private mContext:Landroid/content/Context;

.field private mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

.field private mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

.field private mIsCollapsable:Z

.field private mIsCollapsed:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Landroid/support/v7/internal/view/menu/a;

.field private final mNavItemSelectedListener:Landroid/support/v7/internal/widget/z;

.field private mNavigationMode:I

.field private mOptionsMenu:Landroid/support/v7/internal/view/menu/o;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

.field private mSpinner:Landroid/support/v7/internal/widget/aq;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleUpView:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUserTitle:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 135
    new-instance v1, Landroid/support/v7/internal/widget/f;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/f;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/support/v7/internal/widget/z;

    .line 149
    new-instance v1, Landroid/support/v7/internal/widget/g;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/g;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 159
    new-instance v1, Landroid/support/v7/internal/widget/h;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/h;-><init>(Landroid/support/v7/internal/widget/ActionBarView;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 167
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {p0, v7}, Landroid/support/v7/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 172
    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {p1, p2, v1, v2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 177
    const/4 v1, 0x2

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    .line 179
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 180
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 181
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 182
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 183
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v1, v5, :cond_1

    .line 184
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 186
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 192
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 198
    :cond_1
    const/4 v1, 0x7

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 200
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 202
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 208
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 212
    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 214
    const/16 v1, 0xe

    sget v4, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_home:I

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 218
    invoke-virtual {v3, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    .line 220
    invoke-virtual {v3, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    .line 221
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Z)V

    .line 222
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 226
    const/4 v1, 0x5

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 227
    const/4 v1, 0x6

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 228
    const/16 v1, 0xf

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressStyle:I

    .line 229
    const/16 v1, 0x10

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 232
    const/16 v1, 0x11

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 234
    const/16 v1, 0x12

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    .line 236
    const/4 v1, 0x3

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 238
    const/16 v1, 0xd

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 239
    if-eqz v1, :cond_4

    .line 240
    invoke-virtual {v3, v1, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 241
    iput v7, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    .line 242
    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 245
    :cond_4
    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContentHeight:I

    .line 246
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 247
    new-instance v1, Landroid/support/v7/internal/view/menu/a;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {v1, p1, v2}, Landroid/support/v7/internal/view/menu/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogoNavItem:Landroid/support/v7/internal/view/menu/a;

    .line 248
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setClickable(Z)V

    .line 250
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v1, v8}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 252
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    const-string v5, "ActionBarView"

    const-string v6, "Activity component name not found!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 203
    :catch_1
    move-exception v1

    .line 204
    const-string v5, "ActionBarView"

    const-string v6, "Activity component name not found!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method static synthetic access$000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/b;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCallback:Landroid/support/v7/app/b;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/i;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/aq;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/support/v7/internal/widget/ActionBarView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1300(Landroid/support/v7/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1400(Landroid/support/v7/internal/widget/ActionBarView;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/view/menu/a;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogoNavItem:Landroid/support/v7/internal/view/menu/a;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$HomeView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ScrollingTabContainerView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method private configPresenters(Landroid/support/v7/internal/view/menu/o;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 452
    if-eqz p1, :cond_0

    .line 453
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/ad;)V

    .line 454
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/ad;)V

    .line 461
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c(Z)V

    .line 462
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/i;->c(Z)V

    .line 463
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;)V

    .line 457
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/i;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 755
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    .line 756
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 757
    sget v3, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_title_item:I

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 759
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/appcompat/R$id;->action_bar_title:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 760
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/appcompat/R$id;->action_bar_subtitle:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 761
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    sget v3, Landroid/support/v7/appcompat/R$id;->up:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 763
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 765
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 768
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    :cond_1
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v0, :cond_2

    .line 773
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 775
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 776
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 780
    :cond_3
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v1

    .line 781
    :goto_0
    iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    move v3, v1

    .line 782
    :goto_1
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v3, :cond_a

    if-eqz v0, :cond_9

    move v4, v2

    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 783
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    if-nez v3, :cond_b

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 786
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 787
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 790
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 792
    :cond_6
    return-void

    :cond_7
    move v0, v2

    .line 780
    goto :goto_0

    :cond_8
    move v3, v2

    .line 781
    goto :goto_1

    .line 782
    :cond_9
    const/4 v4, 0x4

    goto :goto_2

    :cond_a
    move v4, v5

    goto :goto_2

    :cond_b
    move v1, v2

    .line 783
    goto :goto_3
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 517
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 518
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 523
    :goto_0
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogoNavItem:Landroid/support/v7/internal/view/menu/a;

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogoNavItem:Landroid/support/v7/internal/view/menu/a;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/a;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 528
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 520
    goto :goto_0

    .line 523
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->animateToVisibility(I)V

    return-void
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 473
    :goto_0
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->collapseActionView()Z

    .line 476
    :cond_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    iget-object v0, v0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/s;

    goto :goto_0
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->dismissPopupMenus()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 734
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(B)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 1149
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .prologue
    .line 1154
    if-nez p1, :cond_0

    .line 1155
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1157
    :cond_0
    return-object p1
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->getAnimatedVisibility()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 727
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;

    iget v0, v0, Landroid/support/v7/internal/widget/v;->v:I

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    iget-object v0, v0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .prologue
    .line 311
    new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    .line 313
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    sget v1, Landroid/support/v7/appcompat/R$id;->progress_circular:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setId(I)V

    .line 314
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 316
    return-void
.end method

.method public initProgress()V
    .locals 5

    .prologue
    .line 303
    new-instance v0, Landroid/support/v7/internal/widget/ProgressBarICS;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    .line 304
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    sget v1, Landroid/support/v7/appcompat/R$id;->progress_horizontal:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setId(I)V

    .line 305
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setMax(I)V

    .line 306
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 308
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public bridge synthetic isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->isOverflowReserved()Z

    move-result v0

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 259
    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 260
    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    .line 261
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 264
    :cond_0
    iput-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 265
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 266
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->initTitle()V

    .line 269
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_2

    .line 272
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 273
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 275
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 277
    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onDetachedFromWindow()V

    .line 291
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 292
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e()Z

    .line 294
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->g()Z

    .line 296
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 739
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onFinishInflate()V

    .line 741
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 743
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 745
    if-eq v0, p0, :cond_1

    .line 746
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 747
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 749
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 752
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    .line 1005
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v1

    .line 1006
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v2

    .line 1007
    sub-int v0, p5, p3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v3

    sub-int v3, v0, v3

    .line 1009
    if-gtz v3, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    .line 1015
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_15

    .line 1016
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a()I

    move-result v4

    .line 1017
    add-int v5, v1, v4

    invoke-virtual {p0, v0, v5, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v0

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    .line 1020
    :goto_2
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    .line 1021
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_8

    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 1024
    :goto_3
    if-eqz v1, :cond_2

    .line 1025
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v4

    add-int/2addr v0, v4

    .line 1028
    :cond_2
    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v4, :pswitch_data_0

    :cond_3
    move v1, v0

    .line 1050
    :goto_4
    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 1051
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v4, p0, :cond_4

    .line 1052
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v4, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1053
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v0, v4

    .line 1056
    :cond_4
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v4, :cond_14

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_14

    .line 1058
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {p0, v4, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->positionChildInverse(Landroid/view/View;III)I

    .line 1059
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    move v2, v0

    .line 1062
    :goto_5
    const/4 v0, 0x0

    .line 1063
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_b

    .line 1064
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object v7, v0

    .line 1069
    :goto_6
    if-eqz v7, :cond_6

    .line 1070
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1071
    instance-of v3, v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    if-eqz v3, :cond_c

    check-cast v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    move-object v5, v0

    .line 1074
    :goto_7
    if-eqz v5, :cond_d

    iget v0, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    .line 1075
    :goto_8
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1077
    const/4 v4, 0x0

    .line 1078
    const/4 v3, 0x0

    .line 1079
    if-eqz v5, :cond_12

    .line 1080
    iget v3, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->leftMargin:I

    add-int v4, v1, v3

    .line 1081
    iget v1, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v1

    .line 1082
    iget v3, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->topMargin:I

    .line 1083
    iget v1, v5, Landroid/support/v7/app/ActionBar$LayoutParams;->bottomMargin:I

    move v5, v2

    move v6, v3

    move v2, v4

    move v4, v1

    .line 1086
    :goto_9
    and-int/lit8 v1, v0, 0x7

    .line 1088
    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    .line 1089
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x2

    .line 1090
    if-ge v3, v2, :cond_e

    .line 1091
    const/4 v1, 0x3

    move v3, v1

    .line 1099
    :goto_a
    const/4 v1, 0x0

    .line 1100
    packed-switch v3, :pswitch_data_1

    :pswitch_0
    move v2, v1

    .line 1112
    :goto_b
    :pswitch_1
    and-int/lit8 v1, v0, 0x70

    .line 1114
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    .line 1115
    const/16 v0, 0x10

    move v1, v0

    .line 1118
    :cond_5
    const/4 v0, 0x0

    .line 1119
    sparse-switch v1, :sswitch_data_0

    .line 1133
    :goto_c
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1134
    add-int/2addr v1, v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v7, v2, v0, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 1136
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->bringToFront()V

    .line 1141
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1142
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    iget v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressBarPadding:I

    neg-int v3, v0

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressBarPadding:I

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/support/v7/internal/widget/ProgressBarICS;->layout(IIII)V

    goto/16 :goto_0

    .line 1014
    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_1

    .line 1021
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_3

    :pswitch_2
    move v1, v0

    .line 1030
    goto/16 :goto_4

    .line 1032
    :pswitch_3
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    .line 1033
    if-eqz v1, :cond_9

    .line 1034
    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v0, v1

    .line 1036
    :cond_9
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_4

    .line 1040
    :pswitch_4
    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v4, :cond_3

    .line 1041
    if-eqz v1, :cond_a

    .line 1042
    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v0, v1

    .line 1044
    :cond_a
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/support/v7/internal/widget/ActionBarView;->positionChild(Landroid/view/View;III)I

    move-result v1

    iget v4, p0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_4

    .line 1065
    :cond_b
    iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_13

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_13

    .line 1067
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object v7, v0

    goto/16 :goto_6

    .line 1071
    :cond_c
    const/4 v0, 0x0

    move-object v5, v0

    goto/16 :goto_7

    .line 1074
    :cond_d
    const/16 v0, 0x13

    goto/16 :goto_8

    .line 1092
    :cond_e
    add-int/2addr v3, v8

    if-le v3, v5, :cond_f

    .line 1093
    const/4 v1, 0x5

    :cond_f
    move v3, v1

    .line 1095
    goto/16 :goto_a

    :cond_10
    const/4 v3, -0x1

    if-ne v0, v3, :cond_11

    .line 1096
    const/4 v1, 0x3

    move v3, v1

    goto/16 :goto_a

    .line 1102
    :pswitch_5
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v8

    div-int/lit8 v1, v1, 0x2

    move v2, v1

    .line 1103
    goto/16 :goto_b

    .line 1108
    :pswitch_6
    sub-int v1, v5, v8

    move v2, v1

    goto/16 :goto_b

    .line 1121
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v0

    .line 1122
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1123
    sub-int v0, v1, v0

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto/16 :goto_c

    .line 1126
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v6

    .line 1127
    goto/16 :goto_c

    .line 1129
    :sswitch_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    goto/16 :goto_c

    :cond_11
    move v3, v1

    goto/16 :goto_a

    :cond_12
    move v5, v2

    move v6, v4

    move v4, v3

    move v2, v1

    goto/16 :goto_9

    :cond_13
    move-object v7, v0

    goto/16 :goto_6

    :cond_14
    move v2, v0

    goto/16 :goto_5

    :cond_15
    move v0, v1

    goto/16 :goto_2

    .line 1028
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1100
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 1119
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 19

    .prologue
    .line 808
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getChildCount()I

    move-result v13

    .line 809
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsable:Z

    if-eqz v1, :cond_4

    .line 810
    const/4 v2, 0x0

    .line 811
    const/4 v1, 0x0

    move/from16 v18, v1

    move v1, v2

    move/from16 v2, v18

    :goto_0
    if-ge v2, v13, :cond_2

    .line 812
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 813
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 815
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 811
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 819
    :cond_2
    if-nez v1, :cond_4

    .line 821
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 822
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1001
    :cond_3
    :goto_1
    return-void

    .line 826
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 828
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 829
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_5

    .line 830
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can only be used with android:layout_width=\"MATCH_PARENT\" (or fill_parent)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 834
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 835
    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_6

    .line 836
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 840
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 842
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContentHeight:I

    if-lez v1, :cond_e

    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContentHeight:I

    move v3, v1

    .line 845
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v2

    add-int v15, v1, v2

    .line 846
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v1

    .line 847
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v2

    .line 848
    sub-int v10, v3, v15

    .line 849
    const/high16 v4, -0x80000000

    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 851
    sub-int v1, v14, v1

    sub-int v5, v1, v2

    .line 852
    div-int/lit8 v4, v5, 0x2

    .line 855
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    .line 857
    :goto_3
    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v2

    const/16 v7, 0x8

    if-eq v2, v7, :cond_20

    .line 858
    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 860
    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v7, :cond_10

    .line 861
    const/high16 v2, -0x80000000

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 865
    :goto_4
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v10, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v1, v2, v7}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 867
    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a()I

    move-result v1

    add-int/2addr v1, v2

    .line 868
    const/4 v2, 0x0

    sub-int/2addr v5, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 869
    const/4 v5, 0x0

    sub-int v1, v2, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 872
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object/from16 v0, p0

    if-ne v5, v0, :cond_7

    .line 873
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/support/v7/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v2

    .line 875
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v7}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 878
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v5}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_8

    .line 880
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/support/v7/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v2

    .line 882
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v6}, Landroid/support/v7/internal/widget/ProgressBarICS;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 886
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_11

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    .line 889
    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v6, :cond_9

    .line 890
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v6, :pswitch_data_0

    :cond_9
    move v6, v1

    move v7, v2

    .line 920
    :goto_7
    const/4 v1, 0x0

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_14

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object v12, v1

    .line 928
    :goto_8
    if-eqz v12, :cond_c

    .line 929
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 930
    instance-of v1, v2, Landroid/support/v7/app/ActionBar$LayoutParams;

    if-eqz v1, :cond_15

    move-object v1, v2

    check-cast v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    move-object v11, v1

    .line 933
    :goto_9
    const/4 v8, 0x0

    .line 934
    const/4 v1, 0x0

    .line 935
    if-eqz v11, :cond_a

    .line 936
    iget v1, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->leftMargin:I

    iget v8, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->rightMargin:I

    add-int/2addr v8, v1

    .line 937
    iget v1, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->topMargin:I

    iget v9, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v9

    .line 943
    :cond_a
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContentHeight:I

    if-lez v9, :cond_16

    .line 944
    iget v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v16, -0x2

    move/from16 v0, v16

    if-eq v9, v0, :cond_16

    const/high16 v9, 0x40000000    # 2.0f

    .line 949
    :goto_a
    const/16 v16, 0x0

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    if-ltz v17, :cond_b

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_b
    sub-int v1, v10, v1

    move/from16 v0, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 952
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v10, -0x2

    if-eq v1, v10, :cond_17

    const/high16 v1, 0x40000000    # 2.0f

    .line 954
    :goto_b
    const/16 v17, 0x0

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v10, :cond_18

    iget v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_c
    sub-int/2addr v10, v8

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 957
    if-eqz v11, :cond_19

    iget v11, v11, Landroid/support/v7/app/ActionBar$LayoutParams;->a:I

    :goto_d
    and-int/lit8 v11, v11, 0x7

    .line 962
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_1e

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v2, v11, :cond_1e

    .line 963
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 966
    :goto_e
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v0, v16

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v12, v1, v2}, Landroid/view/View;->measure(II)V

    .line 969
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v8

    sub-int/2addr v7, v1

    .line 972
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_d

    if-eqz v5, :cond_d

    .line 973
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContentHeight:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7, v2, v4}, Landroid/support/v7/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    .line 975
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v6, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 978
    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContentHeight:I

    if-gtz v1, :cond_1c

    .line 979
    const/4 v2, 0x0

    .line 980
    const/4 v1, 0x0

    move v3, v1

    :goto_f
    if-ge v3, v13, :cond_1a

    .line 981
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 982
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v15

    .line 983
    if-le v1, v2, :cond_1d

    .line 980
    :goto_10
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_f

    .line 842
    :cond_e
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    move v3, v1

    goto/16 :goto_2

    .line 855
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    goto/16 :goto_3

    .line 863
    :cond_10
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto/16 :goto_4

    .line 886
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 892
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_9

    .line 893
    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    mul-int/lit8 v6, v6, 0x2

    .line 894
    :goto_11
    const/4 v7, 0x0

    sub-int/2addr v2, v6

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 895
    const/4 v7, 0x0

    sub-int/2addr v1, v6

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 896
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    const/high16 v7, -0x80000000

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->measure(II)V

    .line 899
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    .line 900
    const/4 v7, 0x0

    sub-int/2addr v2, v6

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 901
    const/4 v7, 0x0

    sub-int/2addr v1, v6

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v6, v1

    move v7, v2

    .line 902
    goto/16 :goto_7

    .line 893
    :cond_12
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    goto :goto_11

    .line 905
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v6, :cond_9

    .line 906
    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    mul-int/lit8 v6, v6, 0x2

    .line 907
    :goto_12
    const/4 v7, 0x0

    sub-int/2addr v2, v6

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 908
    const/4 v7, 0x0

    sub-int/2addr v1, v6

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 909
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/high16 v7, -0x80000000

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 912
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v6}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v6

    .line 913
    const/4 v7, 0x0

    sub-int/2addr v2, v6

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 914
    const/4 v7, 0x0

    sub-int/2addr v1, v6

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v6, v1

    move v7, v2

    goto/16 :goto_7

    .line 906
    :cond_13
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/internal/widget/ActionBarView;->mItemPadding:I

    goto :goto_12

    .line 923
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v2, :cond_1f

    .line 925
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object v12, v1

    goto/16 :goto_8

    .line 930
    :cond_15
    const/4 v1, 0x0

    move-object v11, v1

    goto/16 :goto_9

    .line 944
    :cond_16
    const/high16 v9, -0x80000000

    goto/16 :goto_a

    .line 952
    :cond_17
    const/high16 v1, -0x80000000

    goto/16 :goto_b

    :cond_18
    move v10, v7

    .line 954
    goto/16 :goto_c

    .line 957
    :cond_19
    const/16 v11, 0x13

    goto/16 :goto_d

    .line 987
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 992
    :goto_13
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v1, :cond_1b

    .line 993
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 996
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ProgressBarICS;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 997
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressView:Landroid/support/v7/internal/widget/ProgressBarICS;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/internal/widget/ActionBarView;->mProgressBarPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v14, v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/widget/ProgressBarICS;->measure(II)V

    goto/16 :goto_1

    .line 989
    :cond_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_13

    :cond_1d
    move v1, v2

    goto/16 :goto_10

    :cond_1e
    move v2, v10

    goto/16 :goto_e

    :cond_1f
    move-object v12, v1

    goto/16 :goto_8

    :cond_20
    move v1, v4

    move v2, v5

    goto/16 :goto_5

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1176
    check-cast p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;

    .line 1178
    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/internal/widget/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1180
    iget v0, p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/o;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/o;

    iget v1, p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/a/b;

    .line 1184
    if-eqz v0, :cond_0

    .line 1185
    invoke-interface {v0}, Landroid/support/v4/a/a/b;->expandActionView()Z

    .line 1189
    :cond_0
    iget-boolean v0, p1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->b:Z

    if-eqz v0, :cond_1

    .line 1190
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1192
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1162
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1163
    new-instance v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1165
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    iget-object v0, v0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/s;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    iget-object v0, v0, Landroid/support/v7/internal/widget/i;->b:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->getItemId()I

    move-result v0

    iput v0, v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->a:I

    .line 1169
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Landroid/support/v7/internal/widget/ActionBarView$SavedState;->b:Z

    .line 1171
    return-object v1
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->postShowOverflowMenu()V

    return-void
.end method

.method public setCallback(Landroid/support/v7/app/b;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCallback:Landroid/support/v7/app/b;

    .line 384
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0

    .prologue
    .line 799
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIsCollapsable:Z

    .line 800
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setContentHeight(I)V

    return-void
.end method

.method public setContextView(Landroid/support/v7/internal/widget/ActionBarContextView;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContextView:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 796
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 479
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 480
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 481
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 483
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 484
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 487
    :cond_1
    return-void

    .line 479
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 7

    .prologue
    const/16 v3, 0x8

    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 562
    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v1, v0, :cond_6

    .line 563
    :goto_0
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 565
    and-int/lit8 v1, v0, 0x1f

    if-eqz v1, :cond_11

    .line 566
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_7

    move v5, v4

    .line 567
    :goto_1
    if-eqz v5, :cond_8

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_8

    move v1, v2

    .line 568
    :goto_2
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 570
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 571
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_9

    move v1, v4

    .line 572
    :goto_3
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Z)V

    .line 578
    if-eqz v1, :cond_0

    .line 579
    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 583
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_a

    move v1, v4

    .line 586
    :goto_4
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v6, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 589
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 590
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_c

    .line 591
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ActionBarView;->initTitle()V

    .line 597
    :cond_2
    :goto_6
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_4

    .line 599
    iget v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_d

    move v1, v4

    .line 600
    :goto_7
    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleUpView:Landroid/view/View;

    if-nez v5, :cond_3

    if-eqz v1, :cond_e

    move v3, v2

    :cond_3
    :goto_8
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 601
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v5, :cond_f

    if-eqz v1, :cond_f

    :goto_9
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 604
    :cond_4
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 605
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_10

    .line 606
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 612
    :cond_5
    :goto_a
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    .line 618
    :goto_b
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 619
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 627
    :goto_c
    return-void

    .line 562
    :cond_6
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int/2addr v0, p1

    goto/16 :goto_0

    :cond_7
    move v5, v2

    .line 566
    goto/16 :goto_1

    :cond_8
    move v1, v3

    .line 567
    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 571
    goto :goto_3

    :cond_a
    move v1, v2

    .line 584
    goto :goto_4

    .line 586
    :cond_b
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 593
    :cond_c
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_6

    :cond_d
    move v1, v2

    .line 599
    goto :goto_7

    .line 600
    :cond_e
    const/4 v3, 0x4

    goto :goto_8

    :cond_f
    move v4, v2

    .line 601
    goto :goto_9

    .line 608
    :cond_10
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_a

    .line 614
    :cond_11
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->invalidate()V

    goto :goto_b

    .line 620
    :cond_12
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_13

    .line 621
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 624
    :cond_13
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .prologue
    .line 700
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 701
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/aq;->a(Landroid/widget/SpinnerAdapter;)V

    .line 704
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/aq;->a(I)V

    .line 712
    return-void
.end method

.method public setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 368
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 371
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    .line 372
    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 373
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 374
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 375
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 376
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 377
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 378
    invoke-virtual {p1, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 380
    :cond_1
    return-void

    .line 372
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(I)V

    .line 1200
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b(Landroid/graphics/drawable/Drawable;)V

    .line 1196
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 548
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 550
    if-nez p1, :cond_0

    .line 551
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 559
    :goto_0
    return-void

    .line 552
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_action_bar_up_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$string;->abc_action_bar_home_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 642
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 630
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 631
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 633
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 635
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 636
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 638
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 653
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 645
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 646
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mHomeLayout:Landroid/support/v7/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a(Landroid/graphics/drawable/Drawable;)V

    .line 649
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/support/v4/a/a/a;Landroid/support/v7/internal/view/menu/ae;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 387
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/o;

    if-ne p1, v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/o;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Landroid/support/v7/internal/view/menu/ad;)V

    .line 393
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Landroid/support/v7/internal/view/menu/ad;)V

    .line 396
    :cond_1
    check-cast p1, Landroid/support/v7/internal/view/menu/o;

    .line 397
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mOptionsMenu:Landroid/support/v7/internal/view/menu/o;

    .line 398
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 400
    if-eqz v0, :cond_2

    .line 401
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 404
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-nez v0, :cond_3

    .line 405
    new-instance v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    .line 406
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/ae;)V

    .line 407
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    sget v1, Landroid/support/v7/appcompat/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(I)V

    .line 408
    new-instance v0, Landroid/support/v7/internal/widget/i;

    invoke-direct {v0, p0, v4}, Landroid/support/v7/internal/widget/i;-><init>(Landroid/support/v7/internal/widget/ActionBarView;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/i;

    .line 412
    :cond_3
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 414
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v0, :cond_5

    .line 415
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Landroid/support/v7/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Z)V

    .line 418
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->configPresenters(Landroid/support/v7/internal/view/menu/o;)V

    .line 419
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/af;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;

    .line 420
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 421
    if-eqz v1, :cond_4

    if-eq v1, p0, :cond_4

    .line 422
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 424
    :cond_4
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    :goto_1
    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    goto :goto_0

    .line 426
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Z)V

    .line 428
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(I)V

    .line 431
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c()V

    .line 433
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 434
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->configPresenters(Landroid/support/v7/internal/view/menu/o;)V

    .line 435
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/af;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;

    .line 436
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_7

    .line 437
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 438
    if-eqz v1, :cond_6

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eq v1, v3, :cond_6

    .line 439
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 441
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 445
    :cond_7
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setNavigationMode(I)V
    .locals 3

    .prologue
    .line 656
    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    .line 657
    if-eq p1, v0, :cond_2

    .line 658
    packed-switch v0, :pswitch_data_0

    .line 670
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 694
    :cond_1
    :goto_1
    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavigationMode:I

    .line 695
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->requestLayout()V

    .line 697
    :cond_2
    return-void

    .line 660
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 665
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 672
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;

    if-nez v0, :cond_3

    .line 673
    new-instance v0, Landroid/support/v7/internal/widget/aq;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/internal/widget/aq;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;

    .line 675
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_view_list_nav_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 677
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 679
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 680
    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;

    iget-object v0, v0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v0, v1, :cond_4

    .line 683
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/aq;->a(Landroid/widget/SpinnerAdapter;)V

    .line 685
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSpinner:Landroid/support/v7/internal/widget/aq;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/support/v7/internal/widget/z;

    iput-object v1, v0, Landroid/support/v7/internal/widget/v;->s:Landroid/support/v7/internal/widget/z;

    .line 686
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 689
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTabScrollView:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 670
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSplitActionBar(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_5

    .line 321
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 323
    if-eqz v0, :cond_0

    .line 324
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 326
    :cond_0
    if-eqz p1, :cond_6

    .line 327
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V

    .line 330
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 335
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->requestLayout()V

    .line 337
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_3

    .line 338
    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSplitView:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 341
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_4

    .line 342
    if-nez p1, :cond_8

    .line 343
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$bool;->abc_action_bar_expanded_action_views_exclusive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Z)V

    .line 355
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitActionBar(Z)V

    .line 357
    :cond_5
    return-void

    .line 332
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 333
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mMenuView:Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 338
    :cond_7
    const/16 v0, 0x8

    goto :goto_1

    .line 347
    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b(Z)V

    .line 349
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(I)V

    .line 352
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c()V

    goto :goto_2
.end method

.method public bridge synthetic setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 535
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 536
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 542
    :goto_1
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 544
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 538
    goto :goto_0

    :cond_3
    move v0, v1

    .line 539
    goto :goto_1

    :cond_4
    move v1, v2

    .line 542
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mUserTitle:Z

    .line 501
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 502
    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/a;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 286
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 512
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 514
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic showOverflowMenu()Z
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v7/internal/widget/a;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
