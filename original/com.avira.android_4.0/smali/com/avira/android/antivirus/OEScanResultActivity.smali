.class public Lcom/avira/android/antivirus/OEScanResultActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/antivirus/ad;


# instance fields
.field private a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

.field private b:Lcom/avira/android/utilities/q;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/antivirus/OEScanResultActivity;)Lcom/avira/android/antivirus/OEScanResultActivityPresenter;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 194
    const v0, 0x7f0e0198

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/OEScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    const v1, 0x7f080316

    invoke-virtual {p0, v1}, Lcom/avira/android/antivirus/OEScanResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->d:Landroid/widget/ImageView;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 199
    invoke-static {}, Lcom/avira/android/common/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Lcom/avira/android/common/a/a;

    const v1, 0x7f080373

    invoke-virtual {p0, v1}, Lcom/avira/android/antivirus/OEScanResultActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/avira/android/common/a/a;-><init>(Ljava/lang/String;B)V

    invoke-virtual {p0}, Lcom/avira/android/antivirus/OEScanResultActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    invoke-static {}, Lcom/avira/android/common/a/a;->a()V

    .line 206
    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->b:Lcom/avira/android/utilities/q;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->b:Lcom/avira/android/utilities/q;

    invoke-virtual {v0}, Lcom/avira/android/utilities/q;->a()V

    .line 215
    :cond_0
    return-void
.end method

.method public final d()Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 0

    .prologue
    .line 167
    return-object p0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c()V

    .line 124
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 125
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 148
    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    .line 150
    invoke-static {}, Lcom/avira/android/antivirus/AntivirusComponentFactory;->a()Lcom/avira/android/antivirus/Antivirus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->updateScanEngineSettings()V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-virtual {v0, p1}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e004f

    if-ne v0, v1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/avira/android/antivirus/OEScanResultActivity;->finish()V

    .line 189
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0e0197

    .line 42
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030081

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/OEScanResultActivity;->setContentView(I)V

    const v0, 0x7f0e0196

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/OEScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->c:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Lcom/avira/android/antivirus/OEScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->c:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const v0, 0x7f0e004f

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/OEScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/avira/android/antivirus/ai;

    invoke-direct {v1, p0}, Lcom/avira/android/antivirus/ai;-><init>(Lcom/avira/android/antivirus/OEScanResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/avira/android/antivirus/OEScanResultActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030082

    iget-object v2, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->c:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/avira/android/utilities/q;

    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->c:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Lcom/avira/android/antivirus/OEScanResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/avira/android/utilities/q;-><init>(Landroid/widget/AbsListView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->b:Lcom/avira/android/utilities/q;

    .line 46
    new-instance v0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-direct {v0, p0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;-><init>(Lcom/avira/android/antivirus/ad;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    .line 48
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a()V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onDestroy()V

    .line 142
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->d()V

    .line 143
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivity;->a:Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b()V

    .line 113
    return-void
.end method
