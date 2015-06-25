.class public Lcom/avira/android/userprofile/EditUserDetailsActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/userprofile/f;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/avira/android/userprofile/k;

.field private d:Lcom/avira/android/userprofile/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/userprofile/EditUserDetailsActivity;)Lcom/avira/android/userprofile/e;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->d:Lcom/avira/android/userprofile/e;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/android/userprofile/EditUserDetailsActivity;)Lcom/avira/android/userprofile/k;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->c:Lcom/avira/android/userprofile/k;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 0

    .prologue
    .line 75
    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/avira/android/custom/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 69
    iget-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->c:Lcom/avira/android/userprofile/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avira/android/userprofile/k;->onActivityResult(IILandroid/content/Intent;)V

    .line 70
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/avira/android/userprofile/EditUserDetailsActivity;->setContentView(I)V

    .line 27
    new-instance v0, Lcom/avira/android/userprofile/e;

    invoke-direct {v0, p0}, Lcom/avira/android/userprofile/e;-><init>(Lcom/avira/android/userprofile/f;)V

    iput-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->d:Lcom/avira/android/userprofile/e;

    .line 29
    iget-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->d:Lcom/avira/android/userprofile/e;

    new-instance v0, Lcom/avira/android/remotecomponents/CommandIntegrator;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/CommandIntegrator;-><init>()V

    const-string v1, "getUserInfo"

    invoke-virtual {v0, v1}, Lcom/avira/android/remotecomponents/CommandIntegrator;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/l;->a()Lcom/avira/android/l;

    invoke-static {v0}, Lcom/avira/android/l;->f(Lcom/avira/android/remotecomponents/CommandIntegrator;)V

    .line 31
    const v0, 0x7f0e0117

    invoke-virtual {p0, v0}, Lcom/avira/android/userprofile/EditUserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->b:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f0e00c0

    invoke-virtual {p0, v0}, Lcom/avira/android/userprofile/EditUserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->a:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/avira/android/userprofile/c;

    invoke-direct {v1, p0}, Lcom/avira/android/userprofile/c;-><init>(Lcom/avira/android/userprofile/EditUserDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/avira/android/userprofile/d;

    invoke-direct {v1, p0}, Lcom/avira/android/userprofile/d;-><init>(Lcom/avira/android/userprofile/EditUserDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v0, Lcom/avira/android/userprofile/k;

    invoke-direct {v0}, Lcom/avira/android/userprofile/k;-><init>()V

    iput-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->c:Lcom/avira/android/userprofile/k;

    .line 59
    iget-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->c:Lcom/avira/android/userprofile/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avira/android/userprofile/k;->b(Z)V

    .line 60
    iget-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->c:Lcom/avira/android/userprofile/k;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/k;->i()V

    .line 62
    iget-object v0, p0, Lcom/avira/android/userprofile/EditUserDetailsActivity;->c:Lcom/avira/android/userprofile/k;

    invoke-virtual {p0}, Lcom/avira/android/userprofile/EditUserDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0e00c1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/avira/android/userprofile/EditUserDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 63
    return-void
.end method
