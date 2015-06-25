.class public Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final BLACKLIST_CONTACT_NAME_TAG:Ljava/lang/String; = "blacklistContactNameTag"

.field private static final BLACKLIST_CONTACT_NUMBER_TAG:Ljava/lang/String; = "blacklistContactNumberTag"


# instance fields
.field private a:Lcom/avira/android/blacklist/d/n;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/avira/android/blacklist/a/m;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string v1, "blacklistContactNumberTag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "blacklistContactNameTag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e004f

    if-ne v0, v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->finish()V

    .line 103
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    const-string v1, "blacklistContactNumberTag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->e:Ljava/lang/String;

    .line 54
    const-string v1, "blacklistContactNameTag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->d:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->d()Lcom/avira/android/blacklist/d/n;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->a:Lcom/avira/android/blacklist/d/n;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->b:Ljava/util/List;

    .line 59
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->setContentView(I)V

    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/avira/android/blacklist/a/m;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->b:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/blacklist/a/m;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->c:Lcom/avira/android/blacklist/a/m;

    const v0, 0x7f0e007c

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->c:Lcom/avira/android/blacklist/a/m;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->a:Lcom/avira/android/blacklist/d/n;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->e:Ljava/lang/String;

    sget-object v2, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/blacklist/d/n;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->a:Lcom/avira/android/blacklist/d/n;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContactHistory;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContactHistory;->a()J

    move-result-wide v2

    sget-object v0, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/blacklist/d/n;->a(JLcom/avira/android/blacklist/d/j;)V

    :cond_0
    const v0, 0x7f0e007b

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
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
    .line 108
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    .line 111
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/avira/android/blacklist/activities/BLHistoryMessageDetailsActivity;->a(Landroid/content/Context;Lcom/avira/android/blacklist/model/BLHistoryItem;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->a:Lcom/avira/android/blacklist/d/n;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->e:Ljava/lang/String;

    sget-object v2, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/blacklist/d/n;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContactHistory;

    sget-object v2, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v2}, Lcom/avira/android/blacklist/model/BLContactHistory;->a(Lcom/avira/android/blacklist/d/j;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->b:Ljava/util/List;

    new-instance v1, Lcom/avira/android/blacklist/model/h;

    invoke-direct {v1}, Lcom/avira/android/blacklist/model/h;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLOEHistoryDetailsActivity;->c:Lcom/avira/android/blacklist/a/m;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/m;->notifyDataSetInvalidated()V

    .line 94
    return-void
.end method
