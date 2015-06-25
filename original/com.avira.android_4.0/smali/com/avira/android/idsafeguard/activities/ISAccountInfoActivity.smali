.class public Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/idsafeguard/b/a;
.implements Lcom/avira/android/idsafeguard/b/e;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/avira/android/idsafeguard/c/a;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/avira/android/idsafeguard/a/a;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/view/View;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "email"

    sput-object v0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic a()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 119
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->d:Lcom/avira/android/idsafeguard/a/a;

    invoke-virtual {v0, p1}, Lcom/avira/android/idsafeguard/a/a;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 125
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 127
    const v0, 0x7f030064

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->i:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->i:Landroid/view/View;

    const v1, 0x7f0e0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->i:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 136
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(ZLandroid/view/View;)V
    .locals 3

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/idsafeguard/a/b;

    .line 102
    iget-object v1, v0, Lcom/avira/android/idsafeguard/a/b;->e:Ljava/lang/String;

    .line 103
    iget v0, v0, Lcom/avira/android/idsafeguard/a/b;->c:I

    .line 105
    iget-object v2, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->b:Lcom/avira/android/idsafeguard/c/a;

    invoke-virtual {v2, v1, v0}, Lcom/avira/android/idsafeguard/c/a;->a(Ljava/lang/String;I)V

    .line 107
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e013e

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->b:Lcom/avira/android/idsafeguard/c/a;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avira/android/idsafeguard/c/a;->a(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->j:Ljava/lang/String;

    new-instance v0, Lcom/avira/android/idsafeguard/c/a;

    invoke-direct {v0, p0}, Lcom/avira/android/idsafeguard/c/a;-><init>(Lcom/avira/android/idsafeguard/b/a;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->b:Lcom/avira/android/idsafeguard/c/a;

    const v0, 0x7f0e013d

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->c:Landroid/widget/ListView;

    const v0, 0x7f030064

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0e0147

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f0e0148

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0e0149

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->e:Landroid/widget/ImageView;

    const v3, 0x7f0200c7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->g:Landroid/widget/TextView;

    const v3, 0x7f0802e7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/avira/android/idsafeguard/a/a;

    invoke-direct {v0, p0}, Lcom/avira/android/idsafeguard/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->d:Lcom/avira/android/idsafeguard/a/a;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->d:Lcom/avira/android/idsafeguard/a/a;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0e013e

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->b:Lcom/avira/android/idsafeguard/c/a;

    invoke-virtual {v0, v1}, Lcom/avira/android/idsafeguard/c/a;->a(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onItemClicked(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/idsafeguard/a/b;

    .line 113
    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISAccountInfoActivity;->b:Lcom/avira/android/idsafeguard/c/a;

    invoke-virtual {v1, v0}, Lcom/avira/android/idsafeguard/c/a;->a(Lcom/avira/android/idsafeguard/a/b;)V

    .line 114
    return-void
.end method
