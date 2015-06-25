.class public Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/idsafeguard/b/c;


# instance fields
.field private a:Lcom/avira/android/idsafeguard/c/b;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;->setContentView(I)V

    new-instance v0, Lcom/avira/android/idsafeguard/c/b;

    invoke-direct {v0, p0}, Lcom/avira/android/idsafeguard/c/b;-><init>(Lcom/avira/android/idsafeguard/b/c;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;->a:Lcom/avira/android/idsafeguard/c/b;

    const v0, 0x7f0e0144

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0e0145

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;->a:Lcom/avira/android/idsafeguard/c/b;

    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/activities/ISBreachInformationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/idsafeguard/c/b;->a(Landroid/content/Intent;)V

    .line 30
    return-void
.end method
