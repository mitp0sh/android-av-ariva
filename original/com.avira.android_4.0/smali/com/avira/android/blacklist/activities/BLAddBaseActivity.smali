.class public abstract Lcom/avira/android/blacklist/activities/BLAddBaseActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/j;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/avira/android/blacklist/a/a;

.field protected c:Lcom/avira/android/blacklist/d/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract b()V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 86
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avira/android/blacklist/activities/BLContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->finish()V

    .line 93
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->setContentView(I)V

    .line 40
    const v0, 0x7f0e004b

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->a:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/avira/android/blacklist/a/a;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->a:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/blacklist/a/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->b:Lcom/avira/android/blacklist/a/a;

    .line 44
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->d()Lcom/avira/android/blacklist/d/v;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->c:Lcom/avira/android/blacklist/d/v;

    .line 46
    const v0, 0x7f0e004c

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 47
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->b:Lcom/avira/android/blacklist/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->b()V

    .line 51
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
    .line 61
    const v0, 0x7f0e004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    const v0, 0x7f0e004e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/avira/android/blacklist/activities/BLAddEditContactActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-static {v1}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    const-string v3, "import_contact_name"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    :cond_0
    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string v1, "import_contact_number"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_1
    const/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0}, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 74
    return-void
.end method
