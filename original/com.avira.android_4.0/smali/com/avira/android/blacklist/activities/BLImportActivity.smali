.class public Lcom/avira/android/blacklist/activities/BLImportActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final HEADER_TEXT_TAG:Ljava/lang/String; = "header_text_tag"

.field public static final IMPORT_TYPE_TAG:Ljava/lang/String; = "import_type_tag"


# instance fields
.field private a:Lcom/avira/android/blacklist/a/o;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/avira/android/blacklist/activities/BLImportActivity$BlacklistContactManagerUpdated;

.field private d:Lcom/avira/android/blacklist/d/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/activities/BLImportActivity;)V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "import_type_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v0}, Lcom/avira/android/blacklist/activities/u;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/activities/u;

    move-result-object v0

    sget-object v1, Lcom/avira/android/blacklist/activities/t;->$SwitchMap$com$avira$android$blacklist$activities$BLImportActivity$ImportOption:[I

    invoke-virtual {v0}, Lcom/avira/android/blacklist/activities/u;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->d:Lcom/avira/android/blacklist/d/v;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/v;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->d:Lcom/avira/android/blacklist/d/v;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/v;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->d:Lcom/avira/android/blacklist/d/v;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/v;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/avira/android/blacklist/activities/BLImportActivity;)Lcom/avira/android/blacklist/a/o;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->a:Lcom/avira/android/blacklist/a/o;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0071

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLImportActivity;->finish()V

    .line 100
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLImportActivity;->setContentView(I)V

    .line 54
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->d()Lcom/avira/android/blacklist/d/v;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->d:Lcom/avira/android/blacklist/d/v;

    .line 55
    new-instance v0, Lcom/avira/android/blacklist/activities/BLImportActivity$BlacklistContactManagerUpdated;

    invoke-direct {v0, p0}, Lcom/avira/android/blacklist/activities/BLImportActivity$BlacklistContactManagerUpdated;-><init>(Lcom/avira/android/blacklist/activities/BLImportActivity;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->c:Lcom/avira/android/blacklist/activities/BLImportActivity$BlacklistContactManagerUpdated;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.action.data_update"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->c:Lcom/avira/android/blacklist/activities/BLImportActivity$BlacklistContactManagerUpdated;

    invoke-virtual {p0, v1, v0}, Lcom/avira/android/blacklist/activities/BLImportActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/avira/android/blacklist/a/o;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->b:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/blacklist/a/o;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->a:Lcom/avira/android/blacklist/a/o;

    const v0, 0x7f0e005f

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->a:Lcom/avira/android/blacklist/a/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "header_text_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0e008b

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e0071

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v0, Lcom/avira/android/blacklist/activities/v;

    invoke-direct {v0, p0, v2}, Lcom/avira/android/blacklist/activities/v;-><init>(Lcom/avira/android/blacklist/activities/BLImportActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/activities/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLImportActivity;->c:Lcom/avira/android/blacklist/activities/BLImportActivity$BlacklistContactManagerUpdated;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onDestroy()V

    .line 84
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 90
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 91
    return-void
.end method
