.class public Lcom/avira/android/dashboard/DashboardActivity;
.super Lcom/avira/android/ux/ParallaxDashboardActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/avira/android/dashboard/w;


# static fields
.field private static final TAG_SECURE_BROWSING:Ljava/lang/String; = "SECURE BROWSING "


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/ProgressBar;

.field private F:Landroid/view/animation/Animation;

.field private G:Landroid/view/animation/Animation;

.field private H:Z

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/Button;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/ImageView;

.field private M:Landroid/content/BroadcastReceiver;

.field private a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/view/View;

.field private y:Landroid/support/v4/widget/DrawerLayout;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    iput-boolean v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->H:Z

    .line 307
    new-instance v0, Lcom/avira/android/dashboard/b;

    invoke-direct {v0, p0}, Lcom/avira/android/dashboard/b;-><init>(Lcom/avira/android/dashboard/DashboardActivity;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->M:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/dashboard/DashboardActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static a(Landroid/view/ViewGroup;III)V
    .locals 1

    .prologue
    .line 275
    const v0, 0x7f0e00ee

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    const v0, 0x7f0e00ef

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 277
    const v0, 0x7f0e00f1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 278
    return-void
.end method

.method static synthetic a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2

    .prologue
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/avira/android/dashboard/DashboardActivity;)I
    .locals 5

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/avira/android/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/avira/android/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static b(Landroid/view/ViewGroup;III)V
    .locals 2

    .prologue
    .line 286
    invoke-static {p0, p1, p2, p3}, Lcom/avira/android/dashboard/DashboardActivity;->a(Landroid/view/ViewGroup;III)V

    .line 287
    const v0, 0x7f0e00f2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    return-void
.end method

.method static synthetic c(Lcom/avira/android/dashboard/DashboardActivity;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/avira/android/dashboard/DashboardActivity;->j()V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 527
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "SECURE BROWSING "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CMV Version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/securebrowsing/b/b;->a()Lcom/avira/android/securebrowsing/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avira/android/securebrowsing/b/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "SECURE BROWSING "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Locale: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 531
    invoke-static {}, Lcom/avira/android/securebrowsing/b/b;->a()Lcom/avira/android/securebrowsing/b/b;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/securebrowsing/b/a;

    move-result-object v1

    .line 532
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v2, "SECURE BROWSING "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Category Id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Category Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/avira/android/securebrowsing/b/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Category Desc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/avira/android/securebrowsing/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method

.method private g(Z)V
    .locals 2

    .prologue
    .line 553
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->L:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f0200aa

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 555
    return-void

    .line 553
    :cond_0
    const v0, 0x7f0200ab

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 319
    sget-boolean v0, Lcom/avira/android/iab/a/k;->c:Z

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->J:Landroid/widget/Button;

    const v1, 0x7f080361

    invoke-virtual {p0, v1}, Lcom/avira/android/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->K:Landroid/widget/TextView;

    const v1, 0x7f080362

    invoke-virtual {p0, v1}, Lcom/avira/android/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->J:Landroid/widget/Button;

    const v1, 0x7f080139

    invoke-virtual {p0, v1}, Lcom/avira/android/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->K:Landroid/widget/TextView;

    const v1, 0x7f08018d

    invoke-virtual {p0, v1}, Lcom/avira/android/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 351
    iget-boolean v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->H:Z

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 355
    :cond_0
    iput-boolean v2, p0, Lcom/avira/android/dashboard/DashboardActivity;->H:Z

    .line 358
    invoke-virtual {p0}, Lcom/avira/android/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->F:Landroid/view/animation/Animation;

    .line 359
    invoke-virtual {p0}, Lcom/avira/android/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->G:Landroid/view/animation/Animation;

    .line 360
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 410
    invoke-static {p1}, Lcom/avira/android/utilities/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 413
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->D:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 366
    iput-boolean v2, p0, Lcom/avira/android/dashboard/DashboardActivity;->H:Z

    .line 367
    if-eqz p1, :cond_0

    .line 370
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->C:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->F:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 372
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->F:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 373
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->G:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 375
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->G:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 378
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->E:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->F:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 381
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->E:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 393
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->E:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ZZ)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 472
    if-eqz p1, :cond_1

    .line 475
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->I:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v0, 0x7f080182

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 505
    :goto_1
    return-void

    .line 486
    :cond_0
    const v0, 0x7f080181

    goto :goto_0

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->x:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->I:Landroid/widget/TextView;

    const v1, 0x7f080183

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    return-void
.end method

.method public final b(Z)V
    .locals 4

    .prologue
    .line 421
    if-eqz p1, :cond_0

    .line 423
    const v2, 0x7f0200e8

    .line 424
    const v1, 0x7f0200e5

    .line 425
    const v0, 0x7f08017d

    .line 433
    :goto_0
    iget-object v3, p0, Lcom/avira/android/dashboard/DashboardActivity;->c:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 434
    iget-object v2, p0, Lcom/avira/android/dashboard/DashboardActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 436
    return-void

    .line 429
    :cond_0
    const v2, 0x7f020116

    .line 430
    const v1, 0x7f0200e6

    .line 431
    const v0, 0x7f08017c

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->H:Z

    return v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->n:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 461
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 441
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    invoke-direct {p0, p1}, Lcom/avira/android/dashboard/DashboardActivity;->g(Z)V

    .line 443
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 448
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->g:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    return-void

    .line 448
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->y:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 514
    return-void
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 454
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->h:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f0200e3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 520
    return-void
.end method

.method public final f(Z)V
    .locals 2

    .prologue
    .line 548
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->q:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    return-void

    .line 548
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->d()V

    .line 345
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->finish()V

    .line 346
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->y:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->y:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 621
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->E:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->e()V

    .line 628
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 640
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->E:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->D:Landroid/widget/TextView;

    const v1, 0x7f080289

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 650
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 612
    :goto_0
    return-void

    .line 563
    :sswitch_0
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->f()V

    goto :goto_0

    .line 566
    :sswitch_1
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->g()V

    goto :goto_0

    .line 569
    :sswitch_2
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->h()V

    goto :goto_0

    .line 573
    :sswitch_3
    const-string v0, "en-US"

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivity;->c(Ljava/lang/String;)V

    .line 574
    const-string v0, "de-DE"

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivity;->c(Ljava/lang/String;)V

    .line 575
    const-string v0, "es-ES"

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivity;->c(Ljava/lang/String;)V

    .line 576
    const-string v0, "fr-FR"

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivity;->c(Ljava/lang/String;)V

    .line 577
    const-string v0, "it-IT"

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivity;->c(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->i()V

    goto :goto_0

    .line 581
    :sswitch_4
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->j()V

    goto :goto_0

    .line 584
    :sswitch_5
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->k()V

    goto :goto_0

    .line 588
    :sswitch_6
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->l()V

    goto :goto_0

    .line 591
    :sswitch_7
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->m()V

    goto :goto_0

    .line 594
    :sswitch_8
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->n()V

    goto :goto_0

    .line 597
    :sswitch_9
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->o()V

    goto :goto_0

    .line 600
    :sswitch_a
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->p()V

    goto :goto_0

    .line 603
    :sswitch_b
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->r()V

    goto :goto_0

    .line 606
    :sswitch_c
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->q()V

    goto :goto_0

    .line 609
    :sswitch_d
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->s()V

    goto :goto_0

    .line 560
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00d0 -> :sswitch_b
        0x7f0e00d2 -> :sswitch_c
        0x7f0e00d4 -> :sswitch_6
        0x7f0e00d5 -> :sswitch_7
        0x7f0e00d6 -> :sswitch_8
        0x7f0e00d7 -> :sswitch_9
        0x7f0e00d9 -> :sswitch_d
        0x7f0e00e0 -> :sswitch_0
        0x7f0e00e1 -> :sswitch_1
        0x7f0e00e2 -> :sswitch_2
        0x7f0e00e3 -> :sswitch_3
        0x7f0e00e4 -> :sswitch_4
        0x7f0e00e5 -> :sswitch_5
        0x7f0e00fe -> :sswitch_a
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f08018c

    const v5, 0x7f0e00f2

    const v4, 0x7f0e00f1

    .line 105
    invoke-super {p0, p1}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance v0, Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-direct {v0, p0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;-><init>(Lcom/avira/android/dashboard/w;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    .line 107
    sget-object v0, Lcom/avira/applock/common/ux/f;->SCROLLVIEW_CONTENT:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030046

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/dashboard/DashboardActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    sget-object v0, Lcom/avira/applock/common/ux/f;->PARALLAX_HEADER:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030047

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/dashboard/DashboardActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    sget-object v0, Lcom/avira/applock/common/ux/f;->HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f03004a

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/dashboard/DashboardActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    sget-object v0, Lcom/avira/applock/common/ux/f;->BACKGROUND:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030045

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/dashboard/DashboardActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->setContentView(I)V

    const v0, 0x7f0e00e8

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0e00dd

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->c:Landroid/view/ViewGroup;

    const v0, 0x7f0e00e9

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f0e00ea

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0e00e0

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->j:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->D:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->j:Landroid/view/ViewGroup;

    const v1, 0x7f0200aa

    const v2, 0x7f080282

    const v3, 0x7f080284

    invoke-static {v0, v1, v2, v3}, Lcom/avira/android/dashboard/DashboardActivity;->b(Landroid/view/ViewGroup;III)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->j:Landroid/view/ViewGroup;

    const v1, 0x7f0e00ee

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->L:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->j:Landroid/view/ViewGroup;

    const v1, 0x7f0e00ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e00e1

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->k:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->k:Landroid/view/ViewGroup;

    const v1, 0x7f0200a3

    const v2, 0x7f08017e

    const v3, 0x7f08017f

    invoke-static {v0, v1, v2, v3}, Lcom/avira/android/dashboard/DashboardActivity;->b(Landroid/view/ViewGroup;III)V

    const v0, 0x7f0e00e3

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->l:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->l:Landroid/view/ViewGroup;

    const v1, 0x7f0e00f0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->I:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->l:Landroid/view/ViewGroup;

    const v1, 0x7f0200a9

    const v2, 0x7f080180

    const v3, 0x7f080182

    invoke-static {v0, v1, v2, v3}, Lcom/avira/android/dashboard/DashboardActivity;->b(Landroid/view/ViewGroup;III)V

    const v0, 0x7f0e00e4

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->m:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->m:Landroid/view/ViewGroup;

    const v1, 0x7f0200a4

    const v2, 0x7f080184

    const v3, 0x7f080186

    invoke-static {v0, v1, v2, v3}, Lcom/avira/android/dashboard/DashboardActivity;->b(Landroid/view/ViewGroup;III)V

    const v0, 0x7f0e00e5

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->n:Landroid/view/ViewGroup;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const v0, 0x7f080317

    :goto_0
    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->n:Landroid/view/ViewGroup;

    const v2, 0x7f0200a5

    const v3, 0x7f080227

    invoke-static {v1, v2, v3, v0}, Lcom/avira/android/dashboard/DashboardActivity;->a(Landroid/view/ViewGroup;III)V

    const v0, 0x7f0e00e2

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->o:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->o:Landroid/view/ViewGroup;

    const v1, 0x7f0200a8

    const v2, 0x7f080187

    invoke-static {v0, v1, v2, v6}, Lcom/avira/android/dashboard/DashboardActivity;->a(Landroid/view/ViewGroup;III)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/avira/android/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->q:Landroid/widget/ImageView;

    const v0, 0x7f0e00d2

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->t:Landroid/widget/LinearLayout;

    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->u:Landroid/widget/LinearLayout;

    const v0, 0x7f0e00d6

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->v:Landroid/widget/LinearLayout;

    const v0, 0x7f0e00d7

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->w:Landroid/widget/LinearLayout;

    const v0, 0x7f0e00d8

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->x:Landroid/view/View;

    const v0, 0x7f0e00ce

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->y:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x7f0e00fe

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->z:Landroid/widget/ImageView;

    const v0, 0x7f0e00d0

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->y:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f0200b7

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(II)V

    const v0, 0x7f0e00ec

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->B:Landroid/widget/TextView;

    const v0, 0x7f0e00de

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->C:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e00eb

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->E:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->j:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00d9

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->J:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->J:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e00da

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->K:Landroid/widget/TextView;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f08033a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080339

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080185

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0e00d3

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080331

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/dashboard/DashboardActivity;->i()Lcom/avira/applock/common/ux/ParallaxDashboard;

    move-result-object v1

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/avira/android/dashboard/a;

    invoke-direct {v3, p0, v0, v1}, Lcom/avira/android/dashboard/a;-><init>(Lcom/avira/android/dashboard/DashboardActivity;Landroid/view/ViewGroup;Lcom/avira/applock/common/ux/ParallaxDashboard;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 108
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->a()V

    .line 109
    return-void

    .line 107
    :cond_1
    const v0, 0x7f080228

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 336
    invoke-static {p0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 337
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onPause()V

    .line 338
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->c()V

    .line 339
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 293
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onResume()V

    .line 294
    iget-object v0, p0, Lcom/avira/android/dashboard/DashboardActivity;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b()V

    .line 295
    invoke-static {}, Lcom/avira/android/dashboard/l;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/DashboardActivity;->g(Z)V

    .line 299
    invoke-static {p0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/dashboard/DashboardActivity;->M:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "IABCheckProduct"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 303
    invoke-direct {p0}, Lcom/avira/android/dashboard/DashboardActivity;->j()V

    .line 304
    return-void
.end method
