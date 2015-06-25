.class public Lcom/avira/android/antivirus/AntivirusSettingsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/antivirus/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/antivirus/AntivirusSettingsActivity;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 20
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/u;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->c()Z

    move-result v3

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->d()Z

    move-result v0

    if-eq v3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->d:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/avira/android/antivirus/s;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->setResult(I)V

    .line 106
    invoke-virtual {p0}, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->finish()V

    .line 107
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->setContentView(I)V

    .line 33
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->c:Landroid/view/LayoutInflater;

    .line 35
    invoke-static {p0}, Lcom/avira/android/antivirus/s;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->d:Ljava/util/List;

    .line 37
    const v0, 0x7f0e0010

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0e0011

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/u;

    iget-object v1, p0, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030070

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0e00cd

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e0164

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->a()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->c()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v0, v3}, Lcom/avira/android/antivirus/u;->a(Landroid/widget/CheckBox;)V

    new-instance v2, Lcom/avira/android/antivirus/t;

    invoke-direct {v2, p0, v0}, Lcom/avira/android/antivirus/t;-><init>(Lcom/avira/android/antivirus/AntivirusSettingsActivity;Lcom/avira/android/antivirus/u;)V

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/AntivirusSettingsActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/u;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->f()Lcom/avira/android/antivirus/u;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->f()Lcom/avira/android/antivirus/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avira/android/antivirus/u;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/avira/android/antivirus/u;->g()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    .line 38
    :cond_2
    return-void
.end method
