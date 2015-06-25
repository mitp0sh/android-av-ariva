.class public Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/avira/android/blacklist/d/r;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContactHistory;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/avira/android/blacklist/d/n;

.field private c:Lcom/avira/android/blacklist/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;)Lcom/avira/android/blacklist/d/n;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->b:Lcom/avira/android/blacklist/d/n;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->b:Lcom/avira/android/blacklist/d/n;

    sget-object v2, Lcom/avira/android/blacklist/b/f;->ALL:Lcom/avira/android/blacklist/b/f;

    sget-object v3, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/blacklist/d/n;->a(Lcom/avira/android/blacklist/b/f;Lcom/avira/android/blacklist/d/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/avira/android/blacklist/model/e;

    invoke-direct {v1}, Lcom/avira/android/blacklist/model/e;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->c:Lcom/avira/android/blacklist/a/k;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/k;->notifyDataSetChanged()V

    .line 119
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->a()V

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0075

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const v0, 0x7f0802c5

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f08022f

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-ne v1, v6, :cond_1

    const v3, 0x7f080250

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->a:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/android/blacklist/model/BLContactHistory;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLContactHistory;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p0, v3, v5}, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v1, 0x0

    sget-object v3, Lcom/avira/android/custom/x;->DeleteCancelButtons:Lcom/avira/android/custom/x;

    sget-object v5, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-static/range {v0 .. v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/avira/android/blacklist/activities/i;

    invoke-direct {v1, p0}, Lcom/avira/android/blacklist/activities/i;-><init>(Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 74
    :cond_0
    return-void

    .line 72
    :cond_1
    const v3, 0x7f08024f

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p0, v3, v5}, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->setContentView(I)V

    .line 46
    const v0, 0x7f0e0075

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->a:Ljava/util/List;

    .line 49
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->d()Lcom/avira/android/blacklist/d/n;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->b:Lcom/avira/android/blacklist/d/n;

    .line 50
    new-instance v0, Lcom/avira/android/blacklist/a/k;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->a:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/blacklist/a/k;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->c:Lcom/avira/android/blacklist/a/k;

    .line 53
    const v0, 0x7f0e0076

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 54
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->c:Lcom/avira/android/blacklist/a/k;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistTable"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 58
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onDestroy()V

    .line 104
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistTable"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->b(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 105
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->b(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 106
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 79
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContactHistory;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContactHistory;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContactHistory;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 97
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/avira/android/blacklist/d/j;->NONE:Lcom/avira/android/blacklist/d/j;

    sget-object v3, Lcom/avira/android/blacklist/b/f;->NONE:Lcom/avira/android/blacklist/b/f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Lcom/avira/android/blacklist/b/f;)V

    .line 98
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 85
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 87
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    sget-object v3, Lcom/avira/android/blacklist/b/f;->ALL:Lcom/avira/android/blacklist/b/f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Lcom/avira/android/blacklist/b/f;)V

    .line 88
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    invoke-static {}, Lcom/avira/android/blacklist/d/a;->d()V

    .line 89
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLContactHistoryActivity;->a()V

    .line 90
    return-void
.end method
