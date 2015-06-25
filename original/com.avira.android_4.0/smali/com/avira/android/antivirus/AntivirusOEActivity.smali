.class public Lcom/avira/android/antivirus/AntivirusOEActivity;
.super Lcom/avira/android/ux/ParallaxDashboardActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/antivirus/ac;
.implements Lcom/avira/applock/common/b/b;


# static fields
.field private static C:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static final MENU_ACTION_ANTIVIRUS_SETTINGS:I = 0x0

.field private static final MENU_ACTION_SHEDULE_SCAN:I = 0x1


# instance fields
.field private A:Lcom/avira/android/antivirus/AntivirusOEActivity$ScheduledScanIssuedReceiver;

.field private B:[Ljava/lang/String;

.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/FrameLayout;

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/ImageView;

.field private z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/avira/android/antivirus/AntivirusOEActivity;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/avira/android/antivirus/AntivirusOEActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/avira/android/antivirus/AntivirusOEActivity;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/avira/android/antivirus/AntivirusOEActivity;)Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    return-object v0
.end method

.method private d(Z)V
    .locals 2

    .prologue
    .line 484
    if-eqz p1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->x:Landroid/view/View;

    const v1, 0x7f06005c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 487
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->y:Landroid/widget/ImageView;

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->x:Landroid/view/View;

    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 492
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->y:Landroid/widget/ImageView;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 281
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->h:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->i:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 248
    const v0, 0x7f080322

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 237
    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->f:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    return-void

    .line 237
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 261
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->h:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->i:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    invoke-virtual {p0, v2}, Lcom/avira/android/antivirus/AntivirusOEActivity;->b(Z)V

    .line 269
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    return-void
.end method

.method public final b(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 329
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->t:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->k:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->s:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    invoke-virtual {p0, v5}, Lcom/avira/android/antivirus/AntivirusOEActivity;->c(Z)V

    .line 341
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    const v0, 0x7f080283

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    const v1, 0x7f080287

    invoke-virtual {p0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 350
    if-lez p1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f080292

    invoke-virtual {p0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    invoke-direct {p0, v4}, Lcom/avira/android/antivirus/AntivirusOEActivity;->d(Z)V

    .line 366
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    invoke-direct {p0, v5}, Lcom/avira/android/antivirus/AntivirusOEActivity;->d(Z)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 377
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->t:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 405
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 547
    packed-switch p1, :pswitch_data_0

    .line 555
    :goto_0
    return-void

    .line 550
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/antivirus/AntivirusSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 554
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/antivirus/scanscheduler/ScanSchedulerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 314
    const v0, 0x7f080296

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 388
    return-void
.end method

.method public final d()Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 0

    .prologue
    .line 415
    return-object p0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    return-void
.end method

.method public final e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 432
    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    const v1, 0x7f08016e

    invoke-virtual {p0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 437
    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->b:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 439
    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->d:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 441
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/avira/android/antivirus/AntivirusOEActivity;->c(Z)V

    .line 443
    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->s:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 455
    invoke-virtual {p0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->a(Z)V

    .line 457
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 460
    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->a(IILandroid/content/Intent;)V

    .line 227
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 511
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 536
    :goto_0
    return-void

    .line 514
    :sswitch_0
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->j()V

    goto :goto_0

    .line 517
    :sswitch_1
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->k()V

    goto :goto_0

    .line 520
    :sswitch_2
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->n()V

    goto :goto_0

    .line 523
    :sswitch_3
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->i()V

    .line 524
    invoke-static {}, Lcom/avira/android/firstscan/a;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->d(Z)V

    goto :goto_0

    .line 527
    :sswitch_4
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->l()V

    goto :goto_0

    .line 530
    :sswitch_5
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->h()V

    goto :goto_0

    .line 533
    :sswitch_6
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 534
    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 535
    const/4 v1, 0x1

    aget v0, v0, v1

    new-instance v1, Lcom/avira/applock/common/b/a;

    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->B:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcom/avira/applock/common/b/a;-><init>(Lcom/avira/applock/common/b/b;[Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "PopupMenu"

    invoke-virtual {v1, v0, v2}, Lcom/avira/applock/common/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :sswitch_data_0
    .sparse-switch
        0x7f0e0028 -> :sswitch_5
        0x7f0e0031 -> :sswitch_3
        0x7f0e0032 -> :sswitch_1
        0x7f0e0036 -> :sswitch_0
        0x7f0e0039 -> :sswitch_4
        0x7f0e003a -> :sswitch_2
        0x7f0e0123 -> :sswitch_6
    .end sparse-switch

    .line 533
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    sget-object v0, Lcom/avira/applock/common/ux/f;->SCROLLVIEW_CONTENT:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030006

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    .line 98
    sget-object v0, Lcom/avira/applock/common/ux/f;->PARALLAX_HEADER:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030007

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    .line 99
    sget-object v0, Lcom/avira/applock/common/ux/f;->HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030057

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    .line 100
    sget-object v0, Lcom/avira/applock/common/ux/f;->BACKGROUND:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030005

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    .line 101
    sget-object v0, Lcom/avira/applock/common/ux/f;->NON_HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

    const v1, 0x7f030008

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->a(Lcom/avira/applock/common/ux/f;I)V

    .line 104
    const v0, 0x7f03008a

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->setContentView(I)V

    .line 106
    const v0, 0x7f0e0033

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->f:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f0e0035

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->g:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0e0023

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->h:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0e0026

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->i:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0e003b

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->j:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0e0024

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->m:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0e0027

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->n:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->o:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->w:Landroid/widget/LinearLayout;

    .line 115
    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->p:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0e0034

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->q:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0e0038

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->t:Landroid/widget/FrameLayout;

    .line 118
    const v0, 0x7f0e0039

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->u:Landroid/widget/LinearLayout;

    .line 119
    const v0, 0x7f0e003a

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->v:Landroid/widget/LinearLayout;

    .line 120
    const v0, 0x7f0e002e

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->a:Landroid/widget/LinearLayout;

    .line 121
    const v0, 0x7f0e0031

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->b:Landroid/widget/Button;

    .line 122
    const v0, 0x7f0e0036

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->c:Landroid/widget/Button;

    .line 123
    const v0, 0x7f0e0032

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->d:Landroid/widget/Button;

    .line 124
    const v0, 0x7f0e0021

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->k:Landroid/widget/ProgressBar;

    .line 125
    const v0, 0x7f0e002f

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->l:Landroid/widget/ProgressBar;

    .line 126
    const v0, 0x7f0e0030

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->r:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->y:Landroid/widget/ImageView;

    .line 128
    const v0, 0x7f0e0037

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->s:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0e0020

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->x:Landroid/view/View;

    .line 131
    const v0, 0x7f0e0123

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->e:Landroid/widget/ImageView;

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f080340

    invoke-virtual {p0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x7f080342

    invoke-virtual {p0, v2}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->B:[Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->l:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    new-instance v0, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-direct {v0, p0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;-><init>(Lcom/avira/android/antivirus/ac;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    .line 138
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->w:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/avira/android/antivirus/j;

    invoke-direct {v1, p0}, Lcom/avira/android/antivirus/j;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->c()V

    .line 158
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "scanSchedulerActivated"

    invoke-static {v0, v1, v3}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/avira/android/common/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v0, Lcom/avira/android/common/a/a;

    const v1, 0x7f080372

    invoke-virtual {p0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/avira/android/common/a/a;-><init>(Ljava/lang/String;B)V

    invoke-virtual {p0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    invoke-static {}, Lcom/avira/android/common/a/a;->a()V

    .line 163
    invoke-static {v3}, Lcom/avira/android/common/a/b;->a(Z)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-static {}, Lcom/avira/android/firstscan/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avira/android/common/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lcom/avira/android/common/a/a;

    const v1, 0x7f080370

    invoke-virtual {p0, v1}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/avira/android/common/a/a;-><init>(Ljava/lang/String;B)V

    invoke-virtual {p0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    invoke-static {}, Lcom/avira/android/common/a/a;->a()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onDestroy()V

    .line 215
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->d()V

    .line 216
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onPause()V

    .line 206
    sget-object v0, Lcom/avira/android/antivirus/AntivirusOEActivity;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 207
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->A:Lcom/avira/android/antivirus/AntivirusOEActivity$ScheduledScanIssuedReceiver;

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->f()V

    .line 209
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->finish()V

    .line 194
    :cond_0
    invoke-static {}, Lcom/avira/android/dashboard/l;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->d(Z)V

    .line 196
    invoke-super {p0}, Lcom/avira/android/ux/ParallaxDashboardActivity;->onResume()V

    .line 197
    sget-object v0, Lcom/avira/android/antivirus/AntivirusOEActivity;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.intent.SCHEDULED_SCAN_ISSUED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/avira/android/antivirus/AntivirusOEActivity$ScheduledScanIssuedReceiver;

    invoke-direct {v1, p0}, Lcom/avira/android/antivirus/AntivirusOEActivity$ScheduledScanIssuedReceiver;-><init>(Lcom/avira/android/antivirus/AntivirusOEActivity;)V

    iput-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->A:Lcom/avira/android/antivirus/AntivirusOEActivity$ScheduledScanIssuedReceiver;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->A:Lcom/avira/android/antivirus/AntivirusOEActivity$ScheduledScanIssuedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusOEActivity;->z:Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->g()V

    .line 200
    return-void
.end method
