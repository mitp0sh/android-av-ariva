.class public Lcom/avira/applock/activities/AppListActivity;
.super Lcom/avira/applock/activities/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/avira/applock/common/b/b;


# static fields
.field private static final MENU_OPTION_SETTINGS:I


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:[Ljava/lang/String;

.field private c:Lcom/avira/applock/e/a;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/avira/applock/activities/BaseFragmentActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->c:Lcom/avira/applock/e/a;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    return-void
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->c:Lcom/avira/applock/e/a;

    invoke-virtual {v0}, Lcom/avira/applock/e/a;->d()V

    .line 116
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/avira/applock/activities/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    iget-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->c:Lcom/avira/applock/e/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avira/applock/e/a;->a(IILandroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 103
    sget v1, Lcom/avira/applock/d;->applist_header_menu_btn:I

    if-ne v0, v1, :cond_0

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/avira/applock/activities/AppListActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    new-instance v1, Lcom/avira/applock/common/b/a;

    iget-object v2, p0, Lcom/avira/applock/activities/AppListActivity;->b:[Ljava/lang/String;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {v1, p0, v2, v0}, Lcom/avira/applock/common/b/a;-><init>(Lcom/avira/applock/common/b/b;[Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/avira/applock/activities/AppListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "popup_menu_tag"

    invoke-virtual {v1, v0, v2}, Lcom/avira/applock/common/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void

    .line 105
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/avira/applock/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Lcom/avira/applock/e/a;

    invoke-direct {v0, p0}, Lcom/avira/applock/e/a;-><init>(Lcom/avira/applock/activities/AppListActivity;)V

    iput-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->c:Lcom/avira/applock/e/a;

    .line 48
    sget v0, Lcom/avira/applock/e;->parallax_listview:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/AppListActivity;->setContentView(I)V

    sget v0, Lcom/avira/applock/d;->parallax_listview_container:I

    invoke-virtual {p0, v0}, Lcom/avira/applock/activities/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;

    sget v1, Lcom/avira/applock/e;->app_list_activity_background:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->inflateInnerLayouts(I)V

    sget v1, Lcom/avira/applock/d;->parallax_listview:I

    invoke-virtual {v0, v1}, Lcom/avira/applock/common/ux/ParallaxListViewDashboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->e:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget v0, Lcom/avira/applock/e;->app_list_activity_header:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/avira/applock/d;->applist_header_subtitle:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->d:Landroid/widget/TextView;

    sget v0, Lcom/avira/applock/d;->applist_header_menu_btn:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lcom/avira/applock/f;->app_list_screen_header_settings:I

    invoke-virtual {p0, v2}, Lcom/avira/applock/activities/AppListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->b:[Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->c:Lcom/avira/applock/e/a;

    invoke-virtual {v0, p1}, Lcom/avira/applock/e/a;->a(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/avira/applock/activities/BaseFragmentActivity;->onDestroy()V

    .line 78
    iget-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->c:Lcom/avira/applock/e/a;

    invoke-virtual {v0}, Lcom/avira/applock/e/a;->c()V

    .line 79
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    .line 93
    sget v0, Lcom/avira/applock/d;->applist_list_item_checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 94
    iget-object v1, p0, Lcom/avira/applock/activities/AppListActivity;->c:Lcom/avira/applock/e/a;

    long-to-int v2, p4

    invoke-virtual {v1, v2, v0}, Lcom/avira/applock/e/a;->a(ILandroid/widget/CheckBox;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/avira/applock/activities/BaseFragmentActivity;->onPause()V

    .line 71
    iget-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->c:Lcom/avira/applock/e/a;

    invoke-virtual {v0}, Lcom/avira/applock/e/a;->b()V

    .line 72
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/avira/applock/activities/BaseFragmentActivity;->onResume()V

    .line 57
    iget-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->c:Lcom/avira/applock/e/a;

    invoke-virtual {v0}, Lcom/avira/applock/e/a;->a()V

    .line 58
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/avira/applock/activities/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/avira/applock/activities/AppListActivity;->c:Lcom/avira/applock/e/a;

    invoke-virtual {v0, p1}, Lcom/avira/applock/e/a;->b(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method
