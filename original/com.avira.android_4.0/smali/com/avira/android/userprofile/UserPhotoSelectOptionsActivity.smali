.class public Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0300ad

    invoke-virtual {p0, v0}, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->setContentView(I)V

    .line 34
    const v0, 0x7f0e022c

    invoke-virtual {p0, v0}, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->a:Landroid/widget/Button;

    .line 35
    const v0, 0x7f0e022d

    invoke-virtual {p0, v0}, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->b:Landroid/widget/Button;

    .line 36
    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->c:Landroid/widget/ImageView;

    .line 38
    iget-object v0, p0, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/avira/android/userprofile/t;

    invoke-direct {v1, p0}, Lcom/avira/android/userprofile/t;-><init>(Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->a:Landroid/widget/Button;

    new-instance v1, Lcom/avira/android/userprofile/u;

    invoke-direct {v1, p0}, Lcom/avira/android/userprofile/u;-><init>(Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/avira/android/userprofile/v;

    invoke-direct {v1, p0}, Lcom/avira/android/userprofile/v;-><init>(Lcom/avira/android/userprofile/UserPhotoSelectOptionsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
