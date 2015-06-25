.class public Lcom/avira/android/blacklist/activities/BLContactsListActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/blacklist/d/r;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/avira/android/blacklist/a/f;

.field private c:Lcom/avira/android/blacklist/activities/l;

.field private d:Lcom/avira/android/blacklist/d/ab;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 160
    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/activities/BLContactsListActivity;)Lcom/avira/android/blacklist/d/ab;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->d:Lcom/avira/android/blacklist/d/ab;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->c()Lcom/avira/android/blacklist/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/h;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 153
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/avira/android/blacklist/model/b;

    invoke-direct {v1}, Lcom/avira/android/blacklist/model/b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->b:Lcom/avira/android/blacklist/a/f;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/f;->notifyDataSetChanged()V

    .line 158
    return-void
.end method

.method static synthetic b(Lcom/avira/android/blacklist/activities/BLContactsListActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->a()V

    .line 108
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0062

    if-ne v0, v1, :cond_0

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/blacklist/activities/BLAddContactOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x7f0e0164

    const v6, 0x7f0e00cd

    .line 48
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->setContentView(I)V

    const v0, 0x7f0e0062

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->a:Ljava/util/List;

    new-instance v0, Lcom/avira/android/blacklist/a/f;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->a:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/blacklist/a/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->b:Lcom/avira/android/blacklist/a/f;

    new-instance v0, Lcom/avira/android/blacklist/activities/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avira/android/blacklist/activities/l;-><init>(Lcom/avira/android/blacklist/activities/BLContactsListActivity;B)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->c:Lcom/avira/android/blacklist/activities/l;

    const v0, 0x7f0e0063

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030018

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0e0068

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0e0069

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v1, Lcom/avira/android/blacklist/d/ab;

    invoke-direct {v1, p0}, Lcom/avira/android/blacklist/d/ab;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->d:Lcom/avira/android/blacklist/d/ab;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v5, 0x7f08036d

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->e:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->e:Landroid/widget/CheckBox;

    new-instance v3, Lcom/avira/android/blacklist/activities/j;

    invoke-direct {v3, p0}, Lcom/avira/android/blacklist/activities/j;-><init>(Lcom/avira/android/blacklist/activities/BLContactsListActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f08036e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->f:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->f:Landroid/widget/CheckBox;

    new-instance v3, Lcom/avira/android/blacklist/activities/k;

    invoke-direct {v3, p0}, Lcom/avira/android/blacklist/activities/k;-><init>(Lcom/avira/android/blacklist/activities/BLContactsListActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->b:Lcom/avira/android/blacklist/a/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistTable"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onDestroy()V

    .line 142
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistTable"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->b(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 143
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->c:Lcom/avira/android/blacklist/activities/l;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->c:Lcom/avira/android/blacklist/activities/l;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.avira.android.action.ON_COLLECTION_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->a()V

    .line 126
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->e:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->d:Lcom/avira/android/blacklist/d/ab;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/ab;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->f:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLContactsListActivity;->d:Lcom/avira/android/blacklist/d/ab;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/ab;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    return-void
.end method
