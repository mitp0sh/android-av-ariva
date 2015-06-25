.class public Lcom/avira/android/iab/IABCongratulationsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 28
    return-void
.end method

.method private static a()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/dashboard/DashboardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void

    .line 99
    :cond_0
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 93
    invoke-static {}, Lcom/avira/android/iab/IABCongratulationsActivity;->a()V

    .line 94
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 125
    :pswitch_0
    invoke-static {}, Lcom/avira/android/iab/IABCongratulationsActivity;->a()V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x7f0e0134
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v5, 0x7f0e0132

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABCongratulationsActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/avira/android/iab/IABCongratulationsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launch_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/iab/a;

    if-nez v0, :cond_3

    sget-object v0, Lcom/avira/android/iab/a;->IAB_BUY_SUCCESS:Lcom/avira/android/iab/a;

    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/avira/android/userprofile/s;

    invoke-direct {v0}, Lcom/avira/android/userprofile/s;-><init>()V

    invoke-virtual {v0}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/avira/android/userprofile/x;

    invoke-direct {v2}, Lcom/avira/android/userprofile/x;-><init>()V

    invoke-virtual {v2, v0}, Lcom/avira/android/userprofile/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/avira/android/userprofile/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0}, Lcom/avira/android/userprofile/x;->c(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/avira/android/iab/IABCongratulationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f08035d

    invoke-virtual {p0, v4}, Lcom/avira/android/iab/IABCongratulationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v0, 0x7f0e0133

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABCongratulationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v3, Lcom/avira/android/iab/a;->IAB_BUY_SUCCESS:Lcom/avira/android/iab/a;

    if-ne v1, v3, :cond_1

    const v1, 0x7f08035f

    invoke-virtual {p0, v1}, Lcom/avira/android/iab/IABCongratulationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e0131

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABCongratulationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    array-length v1, v2

    if-lez v1, :cond_2

    array-length v1, v2

    invoke-static {v2, v6, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/avira/android/utilities/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 39
    :goto_3
    const v0, 0x7f0e0134

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABCongratulationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, v5}, Lcom/avira/android/iab/IABCongratulationsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f08033c

    invoke-virtual {p0, v3}, Lcom/avira/android/iab/IABCongratulationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const v1, 0x7f08035e

    invoke-virtual {p0, v1}, Lcom/avira/android/iab/IABCongratulationsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method
