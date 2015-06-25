.class public Lcom/avira/android/userprofile/CreateUserDetailsActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/userprofile/f;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/avira/android/userprofile/k;

.field private c:Lcom/avira/android/userprofile/b;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)Lcom/avira/android/userprofile/k;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->b:Lcom/avira/android/userprofile/k;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->d:I

    return v0
.end method

.method static synthetic c(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)I
    .locals 2

    .prologue
    .line 13
    iget v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->d:I

    return v0
.end method

.method static synthetic d(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)Lcom/avira/android/userprofile/b;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->c:Lcom/avira/android/userprofile/b;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 0

    .prologue
    .line 96
    return-object p0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->c:Lcom/avira/android/userprofile/b;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/b;->b()V

    .line 90
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 91
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/avira/android/custom/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 83
    iget-object v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->b:Lcom/avira/android/userprofile/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avira/android/userprofile/k;->onActivityResult(IILandroid/content/Intent;)V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->setContentView(I)V

    .line 25
    const v0, 0x7f0e00c0

    invoke-virtual {p0, v0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->a:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/avira/android/userprofile/a;

    invoke-direct {v1, p0}, Lcom/avira/android/userprofile/a;-><init>(Lcom/avira/android/userprofile/CreateUserDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v0, Lcom/avira/android/userprofile/b;

    invoke-direct {v0, p0}, Lcom/avira/android/userprofile/b;-><init>(Lcom/avira/android/userprofile/f;)V

    iput-object v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->c:Lcom/avira/android/userprofile/b;

    .line 72
    new-instance v0, Lcom/avira/android/userprofile/k;

    invoke-direct {v0}, Lcom/avira/android/userprofile/k;-><init>()V

    iput-object v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->b:Lcom/avira/android/userprofile/k;

    .line 73
    iget-object v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->b:Lcom/avira/android/userprofile/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avira/android/userprofile/k;->b(Z)V

    .line 74
    iget-object v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->b:Lcom/avira/android/userprofile/k;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/k;->i()V

    .line 76
    iget-object v0, p0, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->b:Lcom/avira/android/userprofile/k;

    invoke-virtual {p0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0e00c1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/avira/android/userprofile/CreateUserDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 77
    return-void
.end method
