.class public Lcom/avira/android/idsafeguard/activities/ISContactsActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/idsafeguard/b/d;
.implements Lcom/avira/android/idsafeguard/b/e;


# instance fields
.field private a:Lcom/avira/android/idsafeguard/c/c;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/avira/android/idsafeguard/a/c;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 121
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->f:Lcom/avira/android/idsafeguard/a/c;

    invoke-virtual {v0, p1}, Lcom/avira/android/idsafeguard/a/c;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 127
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 129
    const v0, 0x7f030068

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->g:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->g:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 135
    :cond_0
    if-eqz p1, :cond_3

    .line 137
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 138
    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->d:Landroid/widget/TextView;

    const v2, 0x7f0802ed

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    :goto_0
    if-lez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v5, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 158
    :goto_1
    return-void

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->d:Landroid/widget/TextView;

    const v2, 0x7f0802ee

    invoke-virtual {p0, v2}, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(ZLandroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 163
    const v0, 0x7f0e0154

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    if-eqz p1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->a:Lcom/avira/android/idsafeguard/c/c;

    invoke-virtual {v1, v0}, Lcom/avira/android/idsafeguard/c/c;->a(Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "text/html"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    const v2, 0x7f0802f3

    invoke-virtual {p0, v2}, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "is_email_template_cache"

    const v2, 0x7f080118

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.TEXT"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    invoke-static {v4}, Lcom/avira/android/common/a/b;->b(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e013e

    if-ne v0, v1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->a:Lcom/avira/android/idsafeguard/c/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->f:Lcom/avira/android/idsafeguard/a/c;

    invoke-virtual {v2}, Lcom/avira/android/idsafeguard/a/c;->a()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/avira/android/idsafeguard/c/c;->a(Ljava/util/ArrayList;)V

    .line 96
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f030067

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->setContentView(I)V

    new-instance v0, Lcom/avira/android/idsafeguard/c/c;

    invoke-direct {v0, p0}, Lcom/avira/android/idsafeguard/c/c;-><init>(Lcom/avira/android/idsafeguard/b/d;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->a:Lcom/avira/android/idsafeguard/c/c;

    new-instance v0, Lcom/avira/android/idsafeguard/a/c;

    invoke-direct {v0, p0}, Lcom/avira/android/idsafeguard/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->f:Lcom/avira/android/idsafeguard/a/c;

    const v0, 0x7f0e0157

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->b:Landroid/widget/ListView;

    const v0, 0x7f030068

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0e0159

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f0e015a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0e015b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->c:Landroid/widget/ImageView;

    const v2, 0x7f0200c5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->e:Landroid/widget/TextView;

    const v2, 0x7f0802ef

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const v0, 0x7f0e013e

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->f:Lcom/avira/android/idsafeguard/a/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISContactsActivity;->a:Lcom/avira/android/idsafeguard/c/c;

    invoke-virtual {v0, p1}, Lcom/avira/android/idsafeguard/c/c;->a(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public onItemClicked(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method
