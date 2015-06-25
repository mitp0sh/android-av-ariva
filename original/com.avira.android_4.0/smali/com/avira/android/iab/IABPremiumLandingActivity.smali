.class public Lcom/avira/android/iab/IABPremiumLandingActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:[[I


# instance fields
.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 30
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/iab/IABPremiumLandingActivity;->a:[[I

    return-void

    :array_0
    .array-data 4
        0x7f0e0138
        0x7f080353
        0x7f080354
    .end array-data

    :array_1
    .array-data 4
        0x7f0e0139
        0x7f080355
        0x7f080356
    .end array-data

    :array_2
    .array-data 4
        0x7f0e013a
        0x7f080357
        0x7f080358
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    new-instance v0, Lcom/avira/android/iab/b;

    invoke-direct {v0, p0}, Lcom/avira/android/iab/b;-><init>(Lcom/avira/android/iab/IABPremiumLandingActivity;)V

    iput-object v0, p0, Lcom/avira/android/iab/IABPremiumLandingActivity;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/iab/IABPremiumLandingActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avira/android/iab/IABPremiumLandingActivity;->b:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->finish()V

    .line 147
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/avira/android/iab/s;->d()V

    .line 144
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/avira/android/dashboard/SignActivity;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/iab/IABPremiumLandingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/avira/android/b;->a()Lcom/avira/android/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avira/android/b;->a(I)V

    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 155
    :pswitch_0
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/avira/android/iab/IABPremiumLandingActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->finish()V

    goto :goto_0

    .line 158
    :pswitch_1
    invoke-direct {p0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->a()V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x7f0e013b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->setContentView(I)V

    move v1, v2

    .line 49
    :goto_0
    sget-object v0, Lcom/avira/android/iab/IABPremiumLandingActivity;->a:[[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/avira/android/iab/IABPremiumLandingActivity;->a:[[I

    aget-object v0, v0, v1

    aget v0, v0, v2

    sget-object v3, Lcom/avira/android/iab/IABPremiumLandingActivity;->a:[[I

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/avira/android/iab/IABPremiumLandingActivity;->a:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f0e0132

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/avira/android/iab/IABPremiumLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e0133

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/avira/android/iab/IABPremiumLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 50
    :cond_0
    const v0, 0x7f0e013b

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0e013c

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget-boolean v0, Lcom/avira/android/iab/a/k;->c:Z

    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->a()V

    .line 58
    :goto_1
    return-void

    .line 57
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/iab/IABRequestService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/avira/android/iab/models/IABRequest;

    sget-object v2, Lcom/avira/android/iab/models/d;->GET_SKU_DATA:Lcom/avira/android/iab/models/d;

    invoke-direct {v1, v2}, Lcom/avira/android/iab/models/IABRequest;-><init>(Lcom/avira/android/iab/models/d;)V

    sget-object v2, Lcom/avira/android/iab/models/IABRequest;->IAB_REQUEST_COMMAND_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v2

    iget-object v3, p0, Lcom/avira/android/iab/IABPremiumLandingActivity;->b:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-virtual {v1}, Lcom/avira/android/iab/models/IABRequest;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/iab/IABPremiumLandingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method
