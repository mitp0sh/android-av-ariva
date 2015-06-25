.class public Lcom/avira/android/securebrowsing/activities/SBActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 60
    invoke-static {}, Lcom/avira/android/securebrowsing/c/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/avira/android/securebrowsing/activities/SBActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/avira/android/securebrowsing/activities/SBActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/avira/android/securebrowsing/activities/SBActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0802c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/activities/SBActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/avira/android/securebrowsing/activities/SBActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/avira/android/securebrowsing/activities/SBActivity;->c:Landroid/widget/TextView;

    const v1, 0x7f0802c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/securebrowsing/activities/SBActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01d3

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/aa;->a(Z)Z

    invoke-direct {p0}, Lcom/avira/android/securebrowsing/activities/SBActivity;->a()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030097

    invoke-virtual {p0, v0}, Lcom/avira/android/securebrowsing/activities/SBActivity;->setContentView(I)V

    const v0, 0x7f0e01d1

    invoke-virtual {p0, v0}, Lcom/avira/android/securebrowsing/activities/SBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/securebrowsing/activities/SBActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0e01d2

    invoke-virtual {p0, v0}, Lcom/avira/android/securebrowsing/activities/SBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/securebrowsing/activities/SBActivity;->a:Landroid/view/View;

    const v0, 0x7f0e01d3

    invoke-virtual {p0, v0}, Lcom/avira/android/securebrowsing/activities/SBActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/securebrowsing/activities/SBActivity;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/avira/android/securebrowsing/activities/SBActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 55
    invoke-direct {p0}, Lcom/avira/android/securebrowsing/activities/SBActivity;->a()V

    .line 56
    return-void
.end method
