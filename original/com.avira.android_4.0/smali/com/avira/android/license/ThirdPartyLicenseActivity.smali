.class public Lcom/avira/android/license/ThirdPartyLicenseActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"


# static fields
.field private static final LICENSE_PATH:Ljava/lang/String; = "third_party_licenses"


# instance fields
.field private a:Landroid/content/res/AssetManager;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 17
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/license/ThirdPartyLicenseActivity;->a:Landroid/content/res/AssetManager;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/license/ThirdPartyLicenseActivity;)Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/avira/android/license/ThirdPartyLicenseActivity;->a:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/license/ThirdPartyLicenseActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/avira/android/license/ThirdPartyLicenseActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/license/ThirdPartyLicenseActivity;->a:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 72
    array-length v0, v1

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lcom/avira/android/license/c;

    invoke-direct {v0, p0, p1}, Lcom/avira/android/license/c;-><init>(Lcom/avira/android/license/ThirdPartyLicenseActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/license/ThirdPartyLicenseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/avira/android/license/ThirdPartyLicenseActivity;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/avira/android/license/ThirdPartyLicenseActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/avira/android/license/ThirdPartyLicenseActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030072

    invoke-virtual {p0, v0}, Lcom/avira/android/license/ThirdPartyLicenseActivity;->setContentView(I)V

    .line 25
    const v0, 0x7f0e0165

    invoke-virtual {p0, v0}, Lcom/avira/android/license/ThirdPartyLicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/license/ThirdPartyLicenseActivity;->b:Landroid/widget/TextView;

    .line 26
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const v1, 0x7f080263

    invoke-virtual {p0, v1}, Lcom/avira/android/license/ThirdPartyLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/avira/android/license/ThirdPartyLicenseActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/avira/android/license/a;

    invoke-direct {v0, p0}, Lcom/avira/android/license/a;-><init>(Lcom/avira/android/license/ThirdPartyLicenseActivity;)V

    invoke-static {v0}, Lcom/avira/android/utilities/aj;->a(Ljava/lang/Runnable;)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 57
    invoke-virtual {p0}, Lcom/avira/android/license/ThirdPartyLicenseActivity;->finish()V

    .line 58
    return-void
.end method
