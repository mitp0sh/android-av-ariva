.class public Lcom/avira/android/blacklist/activities/BLDeleteActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/blacklist/c/b;


# static fields
.field public static final BLACKLIST_OPTION_FILTER_TAG:Ljava/lang/String; = "blacklistOptionFilterTag"

.field public static final ON_COLLECTION_UPDATED_ACTION:Ljava/lang/String; = "com.avira.android.action.ON_COLLECTION_UPDATED"


# instance fields
.field private a:Lcom/avira/android/blacklist/a/b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/Button;

.field private final e:Lcom/avira/android/blacklist/activities/p;

.field private final f:Lcom/avira/android/blacklist/d/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/avira/android/blacklist/activities/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/avira/android/blacklist/activities/p;-><init>(Lcom/avira/android/blacklist/activities/BLDeleteActivity;B)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->e:Lcom/avira/android/blacklist/activities/p;

    .line 49
    invoke-static {}, Lcom/avira/android/blacklist/d/c;->a()Lcom/avira/android/blacklist/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->f:Lcom/avira/android/blacklist/d/c;

    .line 268
    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/activities/BLDeleteActivity;)Lcom/avira/android/blacklist/a/b;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    return-object v0
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/b;->clear()V

    .line 115
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->f:Lcom/avira/android/blacklist/d/c;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 117
    iget-object v2, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v2, v0}, Lcom/avira/android/blacklist/a/b;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/avira/android/blacklist/model/b;

    invoke-direct {v1}, Lcom/avira/android/blacklist/model/b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 122
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/avira/android/blacklist/activities/BLDeleteActivity;)Lcom/avira/android/blacklist/d/c;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->f:Lcom/avira/android/blacklist/d/c;

    return-object v0
.end method

.method static synthetic c(Lcom/avira/android/blacklist/activities/BLDeleteActivity;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v2}, Lcom/avira/android/blacklist/a/b;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/a/b;->c()V

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->c:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v2}, Lcom/avira/android/blacklist/a/b;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    iget-object v3, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->d:Landroid/widget/Button;

    if-lez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 235
    return-void

    :cond_0
    move v0, v2

    .line 233
    goto :goto_0

    :cond_1
    move v1, v2

    .line 234
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 263
    :goto_0
    return-void

    .line 243
    :sswitch_0
    check-cast p1, Landroid/widget/CheckBox;

    .line 244
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/a/b;->a(Ljava/util/ArrayList;)V

    .line 252
    :goto_1
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/b;->notifyDataSetChanged()V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/a/b;->b(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 256
    :sswitch_1
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->f:Lcom/avira/android/blacklist/d/c;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/c;->c()Lcom/avira/android/blacklist/d/e;

    move-result-object v3

    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "blacklistOptionFilterTag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/avira/android/blacklist/d/j;->valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/d/j;

    move-result-object v0

    :cond_1
    sget-object v2, Lcom/avira/android/blacklist/activities/o;->$SwitchMap$com$avira$android$blacklist$utilities$BLContactManagerHelper$BlacklistOption:[I

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/j;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/avira/android/blacklist/d/e;->CONTACT:Lcom/avira/android/blacklist/d/e;

    if-ne v3, v2, :cond_2

    const v2, 0x7f08024e

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {p0, v2, v5}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    sget-object v0, Lcom/avira/android/blacklist/d/e;->CONTACT:Lcom/avira/android/blacklist/d/e;

    if-ne v3, v0, :cond_5

    const v0, 0x7f08022e

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 v1, 0x0

    sget-object v3, Lcom/avira/android/custom/x;->DeleteCancelButtons:Lcom/avira/android/custom/x;

    sget-object v5, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-static/range {v0 .. v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    new-instance v1, Lcom/avira/android/blacklist/activities/n;

    invoke-direct {v1, p0}, Lcom/avira/android/blacklist/activities/n;-><init>(Lcom/avira/android/blacklist/activities/BLDeleteActivity;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto/16 :goto_0

    :pswitch_0
    const v0, 0x7f0802c5

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :pswitch_1
    const v0, 0x7f080234

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :pswitch_2
    const v0, 0x7f080237

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_2
    const v2, 0x7f080250

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    aput-object v0, v5, v6

    invoke-virtual {p0, v2, v5}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/avira/android/blacklist/d/e;->CONTACT:Lcom/avira/android/blacklist/d/e;

    if-ne v3, v2, :cond_4

    const v2, 0x7f08024d

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {p0, v2, v5}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    const v2, 0x7f08024f

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    aput-object v0, v5, v6

    invoke-virtual {p0, v2, v5}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_5
    const v0, 0x7f08022f

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 260
    :sswitch_2
    invoke-virtual {p0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->finish()V

    goto/16 :goto_0

    .line 240
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e005e -> :sswitch_1
        0x7f0e006b -> :sswitch_0
        0x7f0e006c -> :sswitch_2
    .end sparse-switch

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->setContentView(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/avira/android/blacklist/a/b;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->b:Ljava/util/ArrayList;

    sget-object v2, Lcom/avira/android/blacklist/a/c;->HISTORY_ITEM:Lcom/avira/android/blacklist/a/c;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/avira/android/blacklist/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/avira/android/blacklist/a/c;Lcom/avira/android/blacklist/c/b;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    const v0, 0x7f0e005f

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0e006b

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e005e

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e006c

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/b;->notifyDataSetChanged()V

    .line 56
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->e:Lcom/avira/android/blacklist/activities/p;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onPause()V

    .line 96
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Lcom/avira/android/custom/BaseFragmentActivity;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->e:Lcom/avira/android/blacklist/activities/p;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.avira.android.action.ON_COLLECTION_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/blacklist/activities/BLDeleteActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    return-void
.end method
