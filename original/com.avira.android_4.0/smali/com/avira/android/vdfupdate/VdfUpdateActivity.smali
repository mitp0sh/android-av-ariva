.class public Lcom/avira/android/vdfupdate/VdfUpdateActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/vdfupdate/e;


# static fields
.field private static final PERIODIC_REFRESH_MS:I = 0x3a98

.field private static final UPDATE_MESSAGE_DISPLAY_TIME:I = 0x2710


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Z

.field private f:Z

.field private g:Lcom/avira/android/vdfupdate/d;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/TextView;

.field private final j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->j:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)Lcom/avira/android/vdfupdate/d;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->g:Lcom/avira/android/vdfupdate/d;

    return-object v0
.end method

.method private a(IJ)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/32 v6, 0x15180

    const-wide/16 v4, 0xe10

    .line 214
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    .line 222
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 224
    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    .line 225
    invoke-virtual {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    long-to-int v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 227
    :cond_0
    cmp-long v2, v0, v6

    if-gez v2, :cond_1

    .line 229
    div-long v2, v0, v4

    .line 230
    invoke-virtual {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0002

    long-to-int v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_1
    div-long v2, v0, v6

    .line 235
    invoke-virtual {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    long-to-int v4, v2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->j:Landroid/os/Handler;

    new-instance v1, Lcom/avira/android/vdfupdate/a;

    invoke-direct {v1, p0}, Lcom/avira/android/vdfupdate/a;-><init>(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/vdfupdate/VdfUpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method static synthetic b(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 167
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->x()J

    move-result-wide v6

    .line 168
    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->a:Landroid/widget/TextView;

    const v3, 0x7f08032a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 179
    :goto_0
    iget-boolean v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->f:Z

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lcom/avira/android/antivirus/AutoUpdateReceiver;->a()J

    move-result-wide v6

    .line 182
    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->b:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->c:Landroid/widget/TextView;

    const v3, 0x7f080325

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 195
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->d:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 200
    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v3

    .line 201
    invoke-static {}, Lcom/avira/android/vdfupdate/i;->a()Z

    move-result v4

    .line 204
    const v0, 0x7f0e0237

    invoke-virtual {p0, v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 207
    const v0, 0x7f0e023a

    invoke-virtual {p0, v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    return-void

    .line 174
    :cond_3
    sub-long v6, v4, v6

    .line 175
    const v0, 0x7f08032d

    invoke-direct {p0, v0, v6, v7}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->a(IJ)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v3, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 188
    :cond_4
    sub-long v4, v6, v4

    .line 189
    const v0, 0x7f08032e

    invoke-direct {p0, v0, v4, v5}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->a(IJ)Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v3, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 204
    goto :goto_2
.end method

.method private d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->finish()V

    .line 286
    invoke-virtual {p0, v0, v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->overridePendingTransition(II)V

    .line 287
    return-void
.end method

.method static synthetic d(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/avira/android/vdfupdate/f;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const v0, 0x7f08032f

    const v1, 0x7f08032c

    const/4 v3, 0x1

    .line 311
    invoke-virtual {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 313
    invoke-direct {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->b()V

    .line 314
    invoke-direct {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->c()V

    .line 315
    iput-boolean v3, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->f:Z

    iget-object v2, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->b:Landroid/widget/TextView;

    new-instance v3, Lcom/avira/android/vdfupdate/b;

    invoke-direct {v3, p0}, Lcom/avira/android/vdfupdate/b;-><init>(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    iget-object v2, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->b:Landroid/widget/TextView;

    sget-object v3, Lcom/avira/android/vdfupdate/f;->UPDATE_SUCCESSFULL:Lcom/avira/android/vdfupdate/f;

    if-ne p1, v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 319
    invoke-direct {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->a()V

    .line 329
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->g:Lcom/avira/android/vdfupdate/d;

    .line 330
    return-void

    .line 316
    :cond_1
    sget-object v0, Lcom/avira/android/vdfupdate/f;->NO_UPDATES:Lcom/avira/android/vdfupdate/f;

    if-ne p1, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const v0, 0x7f080329

    goto :goto_0

    .line 321
    :cond_3
    sget-object v2, Lcom/avira/android/vdfupdate/f;->UPDATE_SUCCESSFULL:Lcom/avira/android/vdfupdate/f;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/avira/android/vdfupdate/f;->NO_UPDATES:Lcom/avira/android/vdfupdate/f;

    if-ne p1, v2, :cond_0

    .line 323
    :cond_4
    sget-object v2, Lcom/avira/android/vdfupdate/f;->UPDATE_SUCCESSFULL:Lcom/avira/android/vdfupdate/f;

    if-ne p1, v2, :cond_5

    :goto_2
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->d()V

    .line 245
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f080324

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_0
    :pswitch_0
    return-void

    .line 253
    :pswitch_1
    invoke-static {p0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 257
    :pswitch_2
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->d()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f080328

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f080327

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f040002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/avira/android/vdfupdate/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/avira/android/vdfupdate/d;-><init>(Landroid/content/Context;Lcom/avira/android/vdfupdate/e;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->g:Lcom/avira/android/vdfupdate/d;

    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->g:Lcom/avira/android/vdfupdate/d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avira/android/vdfupdate/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0238
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0300af

    invoke-virtual {p0, v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f0e0235

    invoke-virtual {p0, v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->a:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0e0236

    invoke-virtual {p0, v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->b:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0e023b

    invoke-virtual {p0, v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->c:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0e0234

    invoke-virtual {p0, v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->d:Landroid/widget/ImageView;

    .line 70
    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v1

    .line 71
    invoke-static {}, Lcom/avira/android/vdfupdate/i;->a()Z

    move-result v2

    .line 73
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f0e0238

    invoke-virtual {p0, v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->h:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f0e0239

    invoke-virtual {p0, v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->i:Landroid/widget/TextView;

    .line 81
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->e:Z

    .line 85
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->b()V

    .line 152
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->g:Lcom/avira/android/vdfupdate/d;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->g:Lcom/avira/android/vdfupdate/d;

    invoke-virtual {v0}, Lcom/avira/android/vdfupdate/d;->a()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->g:Lcom/avira/android/vdfupdate/d;

    .line 158
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 161
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    invoke-direct {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->c()V

    .line 93
    iget-boolean v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->e:Z

    if-eqz v0, :cond_0

    .line 95
    const v0, 0x7f08032b

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->e:Z

    .line 98
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 101
    sget-boolean v0, Lcom/avira/android/iab/a/k;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->h:Landroid/widget/Button;

    const v1, 0x7f080361

    invoke-virtual {p0, v1}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f080362

    invoke-virtual {p0, v1}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    invoke-direct {p0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->a()V

    .line 107
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->h:Landroid/widget/Button;

    const v1, 0x7f080139

    invoke-virtual {p0, v1}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f08018d

    invoke-virtual {p0, v1}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 335
    const-string v0, "vdf_update_time_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nextVdfCheck"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    new-instance v0, Lcom/avira/android/vdfupdate/c;

    invoke-direct {v0, p0}, Lcom/avira/android/vdfupdate/c;-><init>(Lcom/avira/android/vdfupdate/VdfUpdateActivity;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/vdfupdate/VdfUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    :cond_1
    return-void
.end method
