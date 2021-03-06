.class public Lcom/facebook/widget/LikeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final NO_FOREGROUND_COLOR:I = -0x1


# instance fields
.field private auxiliaryViewPosition:Lcom/facebook/widget/i;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private containerView:Landroid/widget/LinearLayout;

.field private creationCallback:Lcom/facebook/widget/k;

.field private edgePadding:I

.field private foregroundColor:I

.field private horizontalAlignment:Lcom/facebook/widget/j;

.field private internalPadding:I

.field private likeActionController:Lcom/facebook/b/an;

.field private likeBoxCountView:Lcom/facebook/b/bq;

.field private likeButton:Lcom/facebook/b/bt;

.field private likeViewStyle:Lcom/facebook/widget/n;

.field private objectId:Ljava/lang/String;

.field private onErrorListener:Lcom/facebook/widget/m;

.field private socialSentenceView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 218
    sget-object v0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/n;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/n;

    .line 219
    sget-object v0, Lcom/facebook/widget/j;->a:Lcom/facebook/widget/j;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/j;

    .line 220
    sget-object v0, Lcom/facebook/widget/i;->a:Lcom/facebook/widget/i;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/i;

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    .line 251
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initialize(Landroid/content/Context;)V

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 218
    sget-object v0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/n;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/n;

    .line 219
    sget-object v0, Lcom/facebook/widget/j;->a:Lcom/facebook/widget/j;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/j;

    .line 220
    sget-object v0, Lcom/facebook/widget/i;->a:Lcom/facebook/widget/i;

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/i;

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    .line 262
    invoke-direct {p0, p2}, Lcom/facebook/widget/LikeView;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initialize(Landroid/content/Context;)V

    .line 264
    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/widget/LikeView;Lcom/facebook/b/an;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->associateWithLikeActionController(Lcom/facebook/b/an;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/facebook/widget/LikeView;Lcom/facebook/widget/k;)Lcom/facebook/widget/k;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/k;

    return-object p1
.end method

.method static synthetic access$300(Lcom/facebook/widget/LikeView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->toggleLike()V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/widget/LikeView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/widget/LikeView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/widget/LikeView;)Lcom/facebook/widget/m;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/m;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/widget/LikeView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->setObjectIdForced(Ljava/lang/String;)V

    return-void
.end method

.method private associateWithLikeActionController(Lcom/facebook/b/an;)V
    .locals 3

    .prologue
    .line 497
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    .line 499
    new-instance v0, Lcom/facebook/widget/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/l;-><init>(Lcom/facebook/widget/LikeView;B)V

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 500
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    .line 503
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 504
    const-string v2, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 505
    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v2, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    iget-object v2, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 509
    return-void
.end method

.method private getAnalyticsParameters()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 473
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 474
    const-string v1, "style"

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/n;

    invoke-virtual {v2}, Lcom/facebook/widget/n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v1, "auxiliary_position"

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/i;

    invoke-virtual {v2}, Lcom/facebook/widget/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v1, "horizontal_alignment"

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/j;

    invoke-virtual {v2}, Lcom/facebook/widget/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v1, "object_id"

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-object v0
.end method

.method public static handleOnActivityResult(Landroid/content/Context;IILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 241
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/b/an;->a(Landroid/content/Context;IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 395
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/c;->com_facebook_likeview_edge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    .line 396
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/c;->com_facebook_likeview_internal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    .line 397
    iget v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/b;->com_facebook_likeview_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    .line 401
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LikeView;->setBackgroundColor(I)V

    .line 403
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    .line 404
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 407
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initializeLikeButton(Landroid/content/Context;)V

    .line 410
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initializeSocialSentenceView(Landroid/content/Context;)V

    .line 411
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;->initializeLikeCountView(Landroid/content/Context;)V

    .line 413
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/b/bt;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/b/bq;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LikeView;->addView(Landroid/view/View;)V

    .line 419
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/widget/LikeView;->setObjectIdForced(Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V

    .line 421
    return-void
.end method

.method private initializeLikeButton(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 424
    new-instance v1, Lcom/facebook/b/bt;

    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    invoke-virtual {v0}, Lcom/facebook/b/an;->c()Z

    move-result v0

    :goto_0
    invoke-direct {v1, p1, v0}, Lcom/facebook/b/bt;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/b/bt;

    .line 427
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/b/bt;

    new-instance v1, Lcom/facebook/widget/g;

    invoke-direct {v1, p0}, Lcom/facebook/widget/g;-><init>(Lcom/facebook/widget/LikeView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/b/bt;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 438
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/b/bt;

    invoke-virtual {v1, v0}, Lcom/facebook/b/bt;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeLikeCountView(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 457
    new-instance v0, Lcom/facebook/b/bq;

    invoke-direct {v0, p1}, Lcom/facebook/b/bq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/b/bq;

    .line 459
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 462
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/b/bq;

    invoke-virtual {v1, v0}, Lcom/facebook/b/bq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    return-void
.end method

.method private initializeSocialSentenceView(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 442
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    .line 443
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/a/c;->com_facebook_likeview_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 446
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 447
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    iget v1, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 450
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 453
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    return-void
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 357
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/a/h;->com_facebook_like_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    .line 366
    sget v1, Lcom/facebook/a/h;->com_facebook_like_view_object_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    .line 367
    sget v1, Lcom/facebook/a/h;->com_facebook_like_view_style:I

    sget-object v2, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/n;

    invoke-static {v2}, Lcom/facebook/widget/n;->a(Lcom/facebook/widget/n;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/widget/n;->a(I)Lcom/facebook/widget/n;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/n;

    .line 370
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/n;

    if-nez v1, :cond_2

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported value for LikeView \'style\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_2
    sget v1, Lcom/facebook/a/h;->com_facebook_like_view_auxiliary_view_position:I

    sget-object v2, Lcom/facebook/widget/i;->a:Lcom/facebook/widget/i;

    invoke-static {v2}, Lcom/facebook/widget/i;->a(Lcom/facebook/widget/i;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/widget/i;->a(I)Lcom/facebook/widget/i;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/i;

    .line 377
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/i;

    if-nez v1, :cond_3

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported value for LikeView \'auxiliary_view_position\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_3
    sget v1, Lcom/facebook/a/h;->com_facebook_like_view_horizontal_alignment:I

    sget-object v2, Lcom/facebook/widget/j;->a:Lcom/facebook/widget/j;

    invoke-static {v2}, Lcom/facebook/widget/j;->a(Lcom/facebook/widget/j;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/widget/j;->a(I)Lcom/facebook/widget/j;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/j;

    .line 384
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/j;

    if-nez v1, :cond_4

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported value for LikeView \'horizontal_alignment\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_4
    sget v1, Lcom/facebook/a/h;->com_facebook_like_view_foreground_color:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    .line 390
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private setObjectIdForced(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->tearDownObjectAssociations()V

    .line 484
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    .line 485
    invoke-static {p1}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 489
    :cond_0
    new-instance v0, Lcom/facebook/widget/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/k;-><init>(Lcom/facebook/widget/LikeView;B)V

    iput-object v0, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/k;

    .line 490
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/k;

    invoke-static {v0, p1, v1}, Lcom/facebook/b/an;->a(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/b/be;)V

    goto :goto_0
.end method

.method private tearDownObjectAssociations()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 512
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 516
    iput-object v2, p0, Lcom/facebook/widget/LikeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/k;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/k;

    invoke-virtual {v0}, Lcom/facebook/widget/k;->a()V

    .line 525
    iput-object v2, p0, Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/k;

    .line 528
    :cond_1
    iput-object v2, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    .line 529
    return-void
.end method

.method private toggleLike()V
    .locals 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/facebook/widget/LikeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 468
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->getAnalyticsParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/facebook/b/an;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 470
    :cond_0
    return-void
.end method

.method private updateBoxCountCaretPosition()V
    .locals 3

    .prologue
    .line 615
    sget-object v0, Lcom/facebook/widget/h;->$SwitchMap$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/i;

    invoke-virtual {v1}, Lcom/facebook/widget/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 629
    :goto_0
    return-void

    .line 617
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/b/bq;

    sget-object v0, Lcom/facebook/b/bs;->BOTTOM:Lcom/facebook/b/bs;

    .line 623
    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/b/bq;->setCaretPosition(Lcom/facebook/b/bs;)V

    goto :goto_0

    .line 620
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/b/bq;

    sget-object v0, Lcom/facebook/b/bs;->TOP:Lcom/facebook/b/bs;

    goto :goto_1

    .line 623
    :pswitch_2
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/b/bq;

    iget-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/j;

    sget-object v2, Lcom/facebook/widget/j;->RIGHT:Lcom/facebook/widget/j;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/facebook/b/bs;->RIGHT:Lcom/facebook/b/bs;

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/facebook/b/bs;->LEFT:Lcom/facebook/b/bs;

    goto :goto_1

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateLayout()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 547
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 548
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/b/bt;

    invoke-virtual {v1}, Lcom/facebook/b/bt;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 549
    iget-object v2, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/j;

    sget-object v5, Lcom/facebook/widget/j;->LEFT:Lcom/facebook/widget/j;

    if-ne v2, v5, :cond_3

    const/4 v2, 0x3

    .line 553
    :goto_0
    or-int/lit8 v5, v2, 0x30

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 554
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 557
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/b/bq;

    invoke-virtual {v0, v6}, Lcom/facebook/b/bq;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/n;

    sget-object v1, Lcom/facebook/widget/n;->STANDARD:Lcom/facebook/widget/n;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    invoke-virtual {v0}, Lcom/facebook/b/an;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 564
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    move-object v1, v0

    .line 574
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 577
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 578
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 580
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/i;

    sget-object v5, Lcom/facebook/widget/i;->INLINE:Lcom/facebook/widget/i;

    if-ne v2, v5, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 585
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/i;

    sget-object v2, Lcom/facebook/widget/i;->TOP:Lcom/facebook/widget/i;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/i;

    sget-object v2, Lcom/facebook/widget/i;->INLINE:Lcom/facebook/widget/i;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/j;

    sget-object v2, Lcom/facebook/widget/j;->RIGHT:Lcom/facebook/widget/j;

    if-ne v0, v2, :cond_6

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/b/bt;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 590
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/b/bt;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 597
    :goto_2
    sget-object v0, Lcom/facebook/widget/h;->$SwitchMap$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I

    iget-object v2, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/i;

    invoke-virtual {v2}, Lcom/facebook/widget/i;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 612
    :cond_2
    :goto_3
    return-void

    .line 549
    :cond_3
    iget-object v2, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/j;

    sget-object v5, Lcom/facebook/widget/j;->CENTER:Lcom/facebook/widget/j;

    if-ne v2, v5, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x5

    goto :goto_0

    .line 565
    :cond_5
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/n;

    sget-object v1, Lcom/facebook/widget/n;->BOX_COUNT:Lcom/facebook/widget/n;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    invoke-virtual {v0}, Lcom/facebook/b/an;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 568
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateBoxCountCaretPosition()V

    .line 569
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/b/bq;

    move-object v1, v0

    goto :goto_1

    .line 593
    :cond_6
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 594
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 599
    :pswitch_0
    iget v0, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v2, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v3, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v4, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 602
    :pswitch_1
    iget v0, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v2, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    iget v3, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v4, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 605
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/j;

    sget-object v2, Lcom/facebook/widget/j;->RIGHT:Lcom/facebook/widget/j;

    if-ne v0, v2, :cond_7

    .line 606
    iget v0, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v2, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v3, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    iget v4, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 608
    :cond_7
    iget v0, p0, Lcom/facebook/widget/LikeView;->internalPadding:I

    iget v2, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v3, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    iget v4, p0, Lcom/facebook/widget/LikeView;->edgePadding:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateLikeStateAndLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 532
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/b/bt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/b/bt;->setLikeState(Z)V

    .line 534
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/b/bq;

    invoke-virtual {v0, v2}, Lcom/facebook/b/bq;->setText(Ljava/lang/String;)V

    .line 542
    :goto_0
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLayout()V

    .line 543
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeButton:Lcom/facebook/b/bt;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    invoke-virtual {v1}, Lcom/facebook/b/an;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/b/bt;->setLikeState(Z)V

    .line 538
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    invoke-virtual {v1}, Lcom/facebook/b/an;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeBoxCountView:Lcom/facebook/b/bq;

    iget-object v1, p0, Lcom/facebook/widget/LikeView;->likeActionController:Lcom/facebook/b/an;

    invoke-virtual {v1}, Lcom/facebook/b/an;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/b/bq;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getOnErrorListener()Lcom/facebook/widget/m;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/m;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/LikeView;->setObjectId(Ljava/lang/String;)V

    .line 353
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 354
    return-void
.end method

.method public setAuxiliaryViewPosition(Lcom/facebook/widget/i;)V
    .locals 1

    .prologue
    .line 297
    if-eqz p1, :cond_1

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/i;

    if-eq v0, p1, :cond_0

    .line 299
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->auxiliaryViewPosition:Lcom/facebook/widget/i;

    .line 301
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLayout()V

    .line 303
    :cond_0
    return-void

    .line 297
    :cond_1
    sget-object p1, Lcom/facebook/widget/i;->a:Lcom/facebook/widget/i;

    goto :goto_0
.end method

.method public setForegroundColor(I)V
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lcom/facebook/widget/LikeView;->foregroundColor:I

    if-eq v0, p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->socialSentenceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public setHorizontalAlignment(Lcom/facebook/widget/j;)V
    .locals 1

    .prologue
    .line 310
    if-eqz p1, :cond_1

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/j;

    if-eq v0, p1, :cond_0

    .line 312
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->horizontalAlignment:Lcom/facebook/widget/j;

    .line 314
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLayout()V

    .line 316
    :cond_0
    return-void

    .line 310
    :cond_1
    sget-object p1, Lcom/facebook/widget/j;->a:Lcom/facebook/widget/j;

    goto :goto_0
.end method

.method public setLikeViewStyle(Lcom/facebook/widget/n;)V
    .locals 1

    .prologue
    .line 284
    if-eqz p1, :cond_1

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/n;

    if-eq v0, p1, :cond_0

    .line 286
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->likeViewStyle:Lcom/facebook/widget/n;

    .line 288
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLayout()V

    .line 290
    :cond_0
    return-void

    .line 284
    :cond_1
    sget-object p1, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/n;

    goto :goto_0
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/b/cl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/facebook/widget/LikeView;->objectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/b/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    invoke-direct {p0, v0}, Lcom/facebook/widget/LikeView;->setObjectIdForced(Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V

    .line 277
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/m;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/facebook/widget/LikeView;->onErrorListener:Lcom/facebook/widget/m;

    .line 337
    return-void
.end method
