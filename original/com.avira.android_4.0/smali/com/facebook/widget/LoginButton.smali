.class public Lcom/facebook/widget/LoginButton;
.super Landroid/widget/Button;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private confirmLogout:Z

.field private fetchUserInfo:Z

.field private listenerCallback:Landroid/view/View$OnClickListener;

.field private loginLogoutEventName:Ljava/lang/String;

.field private loginText:Ljava/lang/String;

.field private logoutText:Ljava/lang/String;

.field private nuxChecked:Z

.field private nuxDisplayTime:J

.field private nuxMode:Lcom/facebook/widget/v;

.field private nuxPopup:Lcom/facebook/widget/z;

.field private nuxStyle:Lcom/facebook/widget/ae;

.field private parentFragment:Landroid/support/v4/app/Fragment;

.field private properties:Lcom/facebook/widget/r;

.field private sessionTracker:Lcom/facebook/b/ch;

.field private user:Lcom/facebook/c/j;

.field private userInfoChangedCallback:Lcom/facebook/widget/w;

.field private userInfoSession:Lcom/facebook/by;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 81
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/c/j;

    .line 84
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/by;

    .line 91
    new-instance v0, Lcom/facebook/widget/r;

    invoke-direct {v0}, Lcom/facebook/widget/r;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    .line 92
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/facebook/widget/ae;->BLUE:Lcom/facebook/widget/ae;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ae;

    .line 96
    sget-object v0, Lcom/facebook/widget/v;->DEFAULT:Lcom/facebook/widget/v;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/v;

    .line 97
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    .line 219
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 221
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/c/j;

    .line 84
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/by;

    .line 91
    new-instance v0, Lcom/facebook/widget/r;

    invoke-direct {v0}, Lcom/facebook/widget/r;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    .line 92
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/facebook/widget/ae;->BLUE:Lcom/facebook/widget/ae;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ae;

    .line 96
    sget-object v0, Lcom/facebook/widget/v;->DEFAULT:Lcom/facebook/widget/v;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/v;

    .line 97
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    .line 232
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setGravity(I)V

    .line 237
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/b;->com_facebook_loginview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTextColor(I)V

    .line 238
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/c;->com_facebook_loginview_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/widget/LoginButton;->setTextSize(IF)V

    .line 240
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 241
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/b;->com_facebook_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundColor(I)V

    .line 246
    const-string v0, "Log in with Facebook"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 258
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 259
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 262
    :cond_1
    return-void

    .line 248
    :cond_2
    sget v0, Lcom/facebook/a/d;->com_facebook_button_blue:I

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setBackgroundResource(I)V

    .line 249
    sget v0, Lcom/facebook/a/d;->com_facebook_inverse_icon:I

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/facebook/widget/LoginButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 250
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/c;->com_facebook_loginview_compound_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setCompoundDrawablePadding(I)V

    .line 252
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/c;->com_facebook_loginview_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/a/c;->com_facebook_loginview_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/a/c;->com_facebook_loginview_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/a/c;->com_facebook_loginview_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/widget/LoginButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/c/j;

    .line 84
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/by;

    .line 91
    new-instance v0, Lcom/facebook/widget/r;

    invoke-direct {v0}, Lcom/facebook/widget/r;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    .line 92
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/facebook/widget/ae;->BLUE:Lcom/facebook/widget/ae;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ae;

    .line 96
    sget-object v0, Lcom/facebook/widget/v;->DEFAULT:Lcom/facebook/widget/v;

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/v;

    .line 97
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    .line 271
    invoke-direct {p0, p2}, Lcom/facebook/widget/LoginButton;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z

    .line 273
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/r;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/facebook/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    return-void
.end method

.method static synthetic access$1800(Lcom/facebook/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/widget/LoginButton;Lcom/facebook/b/co;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;->showNuxPerSettings(Lcom/facebook/b/co;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/widget/LoginButton;)Lcom/facebook/b/ch;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/widget/LoginButton;)Lcom/facebook/c/j;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/c/j;

    return-object v0
.end method

.method static synthetic access$502(Lcom/facebook/widget/LoginButton;Lcom/facebook/c/j;)Lcom/facebook/c/j;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/c/j;

    return-object p1
.end method

.method static synthetic access$600(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/w;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/w;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/widget/LoginButton;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->confirmLogout:Z

    return v0
.end method

.method static synthetic access$800(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private checkNuxSettings()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/v;

    sget-object v1, Lcom/facebook/widget/v;->DISPLAY_ALWAYS:Lcom/facebook/widget/v;

    if-ne v0, v1, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/g;->com_facebook_tooltip_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-direct {p0, v0}, Lcom/facebook/widget/LoginButton;->displayNux(Ljava/lang/String;)V

    .line 689
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 674
    new-instance v1, Lcom/facebook/widget/o;

    invoke-direct {v1, p0, v0}, Lcom/facebook/widget/o;-><init>(Lcom/facebook/widget/LoginButton;Ljava/lang/String;)V

    .line 686
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private displayNux(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 661
    new-instance v0, Lcom/facebook/widget/z;

    invoke-direct {v0, p1, p0}, Lcom/facebook/widget/z;-><init>(Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/z;

    .line 662
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/z;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ae;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/z;->a(Lcom/facebook/widget/ae;)V

    .line 663
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/z;

    iget-wide v2, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/widget/z;->a(J)V

    .line 664
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/z;

    invoke-virtual {v0}, Lcom/facebook/widget/z;->a()V

    .line 665
    return-void
.end method

.method private fetchUserInfo()V
    .locals 4

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->fetchUserInfo:Z

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    invoke-virtual {v0}, Lcom/facebook/b/ch;->b()Lcom/facebook/by;

    move-result-object v0

    .line 762
    if-eqz v0, :cond_1

    .line 763
    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/by;

    if-eq v0, v1, :cond_0

    .line 764
    new-instance v1, Lcom/facebook/widget/p;

    invoke-direct {v1, p0, v0}, Lcom/facebook/widget/p;-><init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/by;)V

    invoke-static {v0, v1}, Lcom/facebook/Request;->a(Lcom/facebook/by;Lcom/facebook/bl;)Lcom/facebook/Request;

    move-result-object v1

    .line 778
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/facebook/Request;->a([Lcom/facebook/Request;)Lcom/facebook/bq;

    .line 779
    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoSession:Lcom/facebook/by;

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/c/j;

    .line 783
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/w;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/w;

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/c/j;

    goto :goto_0
.end method

.method private finishInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 613
    new-instance v0, Lcom/facebook/widget/s;

    invoke-direct {v0, p0, v3}, Lcom/facebook/widget/s;-><init>(Lcom/facebook/widget/LoginButton;B)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 615
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/facebook/b/ch;

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/widget/q;

    invoke-direct {v2, p0, v3}, Lcom/facebook/widget/q;-><init>(Lcom/facebook/widget/LoginButton;B)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/b/ch;-><init>(Landroid/content/Context;Lcom/facebook/cn;)V

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    .line 617
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 619
    :cond_0
    return-void
.end method

.method private initializeActiveSessionWithCachedToken(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 742
    if-nez p1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return v0

    .line 746
    :cond_1
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v1

    .line 747
    if-eqz v1, :cond_2

    .line 748
    invoke-virtual {v1}, Lcom/facebook/by;->a()Z

    move-result v0

    goto :goto_0

    .line 751
    :cond_2
    invoke-static {p1}, Lcom/facebook/b/cl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 752
    if-eqz v1, :cond_0

    .line 756
    invoke-static {p1}, Lcom/facebook/by;->a(Landroid/content/Context;)Lcom/facebook/by;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 723
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/a/h;->com_facebook_login_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 724
    sget v1, Lcom/facebook/a/h;->com_facebook_login_view_confirm_logout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->confirmLogout:Z

    .line 725
    sget v1, Lcom/facebook/a/h;->com_facebook_login_view_fetch_user_info:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/widget/LoginButton;->fetchUserInfo:Z

    .line 726
    sget v1, Lcom/facebook/a/h;->com_facebook_login_view_login_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 727
    sget v1, Lcom/facebook/a/h;->com_facebook_login_view_logout_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    .line 728
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 729
    return-void
.end method

.method private setButtonText()V
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    invoke-virtual {v0}, Lcom/facebook/b/ch;->b()Lcom/facebook/by;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->logoutText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    .line 739
    :goto_1
    return-void

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/g;->com_facebook_loginview_log_out_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->loginText:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/facebook/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/g;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private showNuxPerSettings(Lcom/facebook/b/co;)V
    .locals 1

    .prologue
    .line 654
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/b/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 655
    invoke-virtual {p1}, Lcom/facebook/b/co;->c()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-direct {p0, v0}, Lcom/facebook/widget/LoginButton;->displayNux(Ljava/lang/String;)V

    .line 658
    :cond_0
    return-void
.end method


# virtual methods
.method public clearPermissions()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-virtual {v0}, Lcom/facebook/widget/r;->d()V

    .line 425
    return-void
.end method

.method public dismissToolTip()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/z;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/z;

    invoke-virtual {v0}, Lcom/facebook/widget/z;->b()V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxPopup:Lcom/facebook/widget/z;

    .line 554
    :cond_0
    return-void
.end method

.method public getDefaultAudience()Lcom/facebook/cq;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-virtual {v0}, Lcom/facebook/widget/r;->b()Lcom/facebook/cq;

    move-result-object v0

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/cr;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-virtual {v0}, Lcom/facebook/widget/r;->e()Lcom/facebook/cr;

    move-result-object v0

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/u;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-virtual {v0}, Lcom/facebook/widget/r;->a()Lcom/facebook/widget/u;

    move-result-object v0

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-virtual {v0}, Lcom/facebook/widget/r;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionStatusCallback()Lcom/facebook/cn;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-virtual {v0}, Lcom/facebook/widget/r;->f()Lcom/facebook/cn;

    move-result-object v0

    return-object v0
.end method

.method public getToolTipDisplayTime()J
    .locals 2

    .prologue
    .line 543
    iget-wide v0, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    return-wide v0
.end method

.method public getToolTipMode()Lcom/facebook/widget/v;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/v;

    return-object v0
.end method

.method public getUserInfoChangedCallback()Lcom/facebook/widget/w;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/w;

    return-object v0
.end method

.method handleError(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-static {v0}, Lcom/facebook/widget/r;->f(Lcom/facebook/widget/r;)Lcom/facebook/widget/u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 894
    instance-of v0, p1, Lcom/facebook/am;

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-static {v0}, Lcom/facebook/widget/r;->f(Lcom/facebook/widget/r;)Lcom/facebook/widget/u;

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-static {v0}, Lcom/facebook/widget/r;->f(Lcom/facebook/widget/r;)Lcom/facebook/widget/u;

    new-instance v0, Lcom/facebook/am;

    invoke-direct {v0, p1}, Lcom/facebook/am;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    invoke-virtual {v0}, Lcom/facebook/b/ch;->a()Lcom/facebook/by;

    move-result-object v1

    .line 581
    if-eqz v1, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/by;->a(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    .line 585
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 635
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 636
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    invoke-virtual {v0}, Lcom/facebook/b/ch;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    invoke-virtual {v0}, Lcom/facebook/b/ch;->c()V

    .line 638
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 639
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 641
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 693
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 694
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    invoke-virtual {v0}, Lcom/facebook/b/ch;->d()V

    .line 697
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->dismissToolTip()V

    .line 698
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 645
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 647
    iget-boolean v0, p0, Lcom/facebook/widget/LoginButton;->nuxChecked:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/v;

    sget-object v1, Lcom/facebook/widget/v;->NEVER_DISPLAY:Lcom/facebook/widget/v;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/LoginButton;->nuxChecked:Z

    .line 649
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->checkNuxSettings()V

    .line 651
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 608
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 609
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    .line 610
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 702
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onVisibilityChanged(Landroid/view/View;I)V

    .line 704
    if-eqz p2, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/facebook/widget/LoginButton;->dismissToolTip()V

    .line 707
    :cond_0
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/cq;)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/r;->a(Lcom/facebook/cq;)V

    .line 303
    return-void
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;

    .line 631
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/cr;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/r;->a(Lcom/facebook/cr;)V

    .line 438
    return-void
.end method

.method setLoginLogoutEventName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 720
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;

    .line 798
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/u;)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/r;->a(Lcom/facebook/widget/u;)V

    .line 283
    return-void
.end method

.method setProperties(Lcom/facebook/widget/r;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    .line 716
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    invoke-virtual {v1}, Lcom/facebook/b/ch;->a()Lcom/facebook/by;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/r;->b(Ljava/util/List;Lcom/facebook/by;)V

    .line 391
    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    invoke-virtual {v2}, Lcom/facebook/b/ch;->a()Lcom/facebook/by;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/r;->b(Ljava/util/List;Lcom/facebook/by;)V

    .line 417
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    iget-object v1, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    invoke-virtual {v1}, Lcom/facebook/b/ch;->a()Lcom/facebook/by;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/r;->a(Ljava/util/List;Lcom/facebook/by;)V

    .line 339
    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    invoke-virtual {v2}, Lcom/facebook/b/ch;->a()Lcom/facebook/by;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/r;->a(Ljava/util/List;Lcom/facebook/by;)V

    .line 364
    return-void
.end method

.method public setSession(Lcom/facebook/by;)V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/b/ch;

    invoke-virtual {v0, p1}, Lcom/facebook/b/ch;->a(Lcom/facebook/by;)V

    .line 602
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->fetchUserInfo()V

    .line 603
    invoke-direct {p0}, Lcom/facebook/widget/LoginButton;->setButtonText()V

    .line 604
    return-void
.end method

.method public setSessionStatusCallback(Lcom/facebook/cn;)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/r;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/r;->a(Lcom/facebook/cn;)V

    .line 488
    return-void
.end method

.method public setToolTipDisplayTime(J)V
    .locals 1

    .prologue
    .line 535
    iput-wide p1, p0, Lcom/facebook/widget/LoginButton;->nuxDisplayTime:J

    .line 536
    return-void
.end method

.method public setToolTipMode(Lcom/facebook/widget/v;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->nuxMode:Lcom/facebook/widget/v;

    .line 517
    return-void
.end method

.method public setToolTipStyle(Lcom/facebook/widget/ae;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->nuxStyle:Lcom/facebook/widget/ae;

    .line 507
    return-void
.end method

.method public setUserInfoChangedCallback(Lcom/facebook/widget/w;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/w;

    .line 477
    return-void
.end method
