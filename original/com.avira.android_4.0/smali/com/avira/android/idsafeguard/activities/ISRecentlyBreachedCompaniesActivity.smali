.class public Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/idsafeguard/b/e;
.implements Lcom/avira/android/idsafeguard/b/g;


# instance fields
.field private a:Lcom/avira/android/idsafeguard/c/f;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/avira/android/idsafeguard/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;->c:Lcom/avira/android/idsafeguard/a/d;

    invoke-virtual {v0, p1}, Lcom/avira/android/idsafeguard/a/d;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 83
    return-void
.end method

.method public final a(ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0094

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;->a:Lcom/avira/android/idsafeguard/c/f;

    invoke-virtual {v0}, Lcom/avira/android/idsafeguard/c/f;->a()V

    .line 65
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f03006d

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;->setContentView(I)V

    new-instance v0, Lcom/avira/android/idsafeguard/c/f;

    invoke-direct {v0, p0}, Lcom/avira/android/idsafeguard/c/f;-><init>(Lcom/avira/android/idsafeguard/b/g;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;->a:Lcom/avira/android/idsafeguard/c/f;

    const v0, 0x7f0e0162

    invoke-virtual {p0, v0}, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;->b:Landroid/widget/ListView;

    const v0, 0x7f03006e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/avira/android/idsafeguard/a/d;

    invoke-direct {v0, p0}, Lcom/avira/android/idsafeguard/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;->c:Lcom/avira/android/idsafeguard/a/d;

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;->c:Lcom/avira/android/idsafeguard/a/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;->a:Lcom/avira/android/idsafeguard/c/f;

    invoke-virtual {v0, p1}, Lcom/avira/android/idsafeguard/c/f;->a(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public onItemClicked(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/idsafeguard/a/e;

    .line 76
    iget-object v1, p0, Lcom/avira/android/idsafeguard/activities/ISRecentlyBreachedCompaniesActivity;->a:Lcom/avira/android/idsafeguard/c/f;

    invoke-virtual {v1, v0}, Lcom/avira/android/idsafeguard/c/f;->a(Lcom/avira/android/idsafeguard/a/e;)V

    .line 77
    return-void
.end method
