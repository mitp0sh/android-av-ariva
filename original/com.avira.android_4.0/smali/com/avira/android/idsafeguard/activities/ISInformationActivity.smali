.class public Lcom/avira/android/idsafeguard/activities/ISInformationActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0094

    if-ne v0, v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/activities/ISInformationActivity;->finish()V

    .line 34
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISInformationActivity;->setContentView(I)V

    .line 24
    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method
