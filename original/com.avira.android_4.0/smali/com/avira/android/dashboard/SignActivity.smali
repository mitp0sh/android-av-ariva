.class public Lcom/avira/android/dashboard/SignActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final INFO_TYPE:Ljava/lang/String; = "info_type"

.field public static final MODE_ALL:I = 0x0

.field public static final MODE_ANTI_THEFT:I = 0x1

.field public static final MODE_APP_LOCK:I = 0x4

.field public static final MODE_IAB:I = 0x3

.field public static final MODE_IDENTITY_SAFEGUARD:I = 0x2

.field private static e:I


# instance fields
.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/support/v4/view/aj;

.field private c:Landroid/widget/LinearLayout;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 160
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/avira/android/dashboard/SignActivity;->e:I

    return v0
.end method

.method static synthetic a(Lcom/avira/android/dashboard/SignActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/android/dashboard/SignActivity;->a:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/avira/android/dashboard/SignActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/avira/android/dashboard/SignActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0163

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 138
    if-ne v0, p1, :cond_0

    const v1, 0x7f0200ff

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    const v1, 0x7f020117

    goto :goto_1

    .line 141
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/dashboard/SignActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string v1, "info_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/avira/android/dashboard/SignActivity;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/avira/android/dashboard/SignActivity;->a(I)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 95
    const v0, 0x7f0e01e4

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic b(Lcom/avira/android/dashboard/SignActivity;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/avira/android/dashboard/SignActivity;->d:I

    return v0
.end method

.method private b(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v0, v2, :cond_1

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 199
    new-instance v0, Lcom/avira/applock/common/a/a;

    const v2, 0x7f08013e

    invoke-virtual {p0, v2}, Lcom/avira/android/dashboard/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080152

    invoke-virtual {p0, v3}, Lcom/avira/android/dashboard/SignActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/avira/applock/common/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    invoke-virtual {p0}, Lcom/avira/android/dashboard/SignActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/avira/applock/common/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 206
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 196
    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0, p1}, Lcom/avira/android/dashboard/SignActivity;->a(Ljava/lang/Class;)V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/avira/android/iab/s;->c()V

    .line 212
    const/4 v0, 0x3

    iget v1, p0, Lcom/avira/android/dashboard/SignActivity;->d:I

    if-ne v0, v1, :cond_0

    .line 214
    invoke-static {}, Lcom/avira/android/b;->a()Lcom/avira/android/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/avira/android/b;->a(I)V

    .line 216
    :cond_0
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onBackPressed()V

    .line 217
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 225
    :sswitch_0
    invoke-virtual {p0}, Lcom/avira/android/dashboard/SignActivity;->onBackPressed()V

    goto :goto_0

    .line 228
    :sswitch_1
    const-class v0, Lcom/avira/android/registration/CreateAccountActivity;

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/SignActivity;->b(Ljava/lang/Class;)V

    goto :goto_0

    .line 231
    :sswitch_2
    const-class v0, Lcom/avira/android/registration/LoginActivity;

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/SignActivity;->b(Ljava/lang/Class;)V

    goto :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x7f0e0094 -> :sswitch_0
        0x7f0e01e7 -> :sswitch_1
        0x7f0e01e8 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/avira/android/dashboard/SignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "info_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avira/android/dashboard/SignActivity;->d:I

    .line 65
    const v0, 0x7f03009f

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/SignActivity;->setContentView(I)V

    const v0, 0x7f0e0163

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/dashboard/SignActivity;->c:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/avira/android/dashboard/SignActivity;->d:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x3

    sput v0, Lcom/avira/android/dashboard/SignActivity;->e:I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move v0, v1

    :goto_0
    sget v3, Lcom/avira/android/dashboard/SignActivity;->e:I

    if-ge v0, v3, :cond_1

    const v3, 0x7f03006f

    iget-object v4, p0, Lcom/avira/android/dashboard/SignActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v4, Lcom/avira/android/dashboard/ab;

    invoke-direct {v4, p0}, Lcom/avira/android/dashboard/ab;-><init>(Lcom/avira/android/dashboard/SignActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/avira/android/dashboard/SignActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    sput v5, Lcom/avira/android/dashboard/SignActivity;->e:I

    :goto_1
    new-instance v0, Lcom/avira/android/dashboard/ac;

    invoke-virtual {p0}, Lcom/avira/android/dashboard/SignActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avira/android/dashboard/ac;-><init>(Lcom/avira/android/dashboard/SignActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/avira/android/dashboard/SignActivity;->b:Landroid/support/v4/view/aj;

    const v0, 0x7f0e01e5

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/avira/android/dashboard/SignActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/avira/android/dashboard/SignActivity;->a:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/avira/android/dashboard/SignActivity;->b:Landroid/support/v4/view/aj;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/aj;)V

    sget v0, Lcom/avira/android/dashboard/SignActivity;->e:I

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/avira/android/dashboard/SignActivity;->a:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/avira/android/dashboard/aa;

    invoke-direct {v1, p0}, Lcom/avira/android/dashboard/aa;-><init>(Lcom/avira/android/dashboard/SignActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bv;)V

    :cond_0
    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e01e7

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e01e8

    invoke-virtual {p0, v0}, Lcom/avira/android/dashboard/SignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    return-void

    .line 65
    :cond_1
    invoke-direct {p0, v1}, Lcom/avira/android/dashboard/SignActivity;->a(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/SignActivity;->a(Z)V

    .line 102
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avira/android/dashboard/SignActivity;->a(Z)V

    .line 109
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 110
    return-void
.end method
