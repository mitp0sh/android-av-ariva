.class public final Lcom/avira/android/blacklist/b/d;
.super Lcom/avira/android/utilities/af;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/blacklist/c/a;
.implements Lcom/avira/android/blacklist/d/r;
.implements Lcom/avira/android/custom/g;


# static fields
.field public static final CONTACT_DATA_TAG:Ljava/lang/String; = "contact_data_tag"


# instance fields
.field private a:Lcom/avira/android/custom/CustomSpinner;

.field private b:Lcom/avira/android/custom/CustomSpinner;

.field private c:Landroid/widget/ListView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLContactHistory;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/avira/android/blacklist/a/d;

.field private f:Lcom/avira/android/blacklist/d/n;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/avira/android/utilities/af;-><init>()V

    .line 61
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/d;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContactHistory;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/BLContactHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 375
    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/blacklist/b/d;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/b/d;->d(Z)V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 275
    invoke-static {}, Lcom/avira/android/blacklist/d/t;->a()Lcom/avira/android/blacklist/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/t;->c()Lcom/avira/android/blacklist/d/aa;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/avira/android/blacklist/d/t;->a()Lcom/avira/android/blacklist/d/t;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/avira/android/blacklist/d/t;->a(Lcom/avira/android/blacklist/d/aa;)V

    .line 280
    iget-object v1, p0, Lcom/avira/android/blacklist/b/d;->a:Lcom/avira/android/custom/CustomSpinner;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/aa;->b()Lcom/avira/android/custom/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/avira/android/custom/CustomSpinner;->selectItem(Lcom/avira/android/custom/h;)V

    .line 281
    iget-object v1, p0, Lcom/avira/android/blacklist/b/d;->b:Lcom/avira/android/custom/CustomSpinner;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/aa;->a()Lcom/avira/android/custom/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/CustomSpinner;->selectItem(Lcom/avira/android/custom/h;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/b/d;->b:Lcom/avira/android/custom/CustomSpinner;

    invoke-virtual {v0}, Lcom/avira/android/custom/CustomSpinner;->getSelectedItem()Lcom/avira/android/custom/SpinnerDialogItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/SpinnerDialogItem;->f()Lcom/avira/android/custom/h;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/d/j;

    iget-object v1, p0, Lcom/avira/android/blacklist/b/d;->a:Lcom/avira/android/custom/CustomSpinner;

    invoke-virtual {v1}, Lcom/avira/android/custom/CustomSpinner;->getSelectedItem()Lcom/avira/android/custom/SpinnerDialogItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/custom/SpinnerDialogItem;->f()Lcom/avira/android/custom/h;

    move-result-object v1

    instance-of v3, v1, Lcom/avira/android/blacklist/b/f;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/avira/android/blacklist/b/f;

    iget-object v2, p0, Lcom/avira/android/blacklist/b/d;->f:Lcom/avira/android/blacklist/d/n;

    invoke-virtual {v2, v1, v0}, Lcom/avira/android/blacklist/d/n;->a(Lcom/avira/android/blacklist/b/f;Lcom/avira/android/blacklist/d/j;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/blacklist/b/d;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/avira/android/blacklist/model/f;

    invoke-direct {v1}, Lcom/avira/android/blacklist/model/f;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v1, p0, Lcom/avira/android/blacklist/b/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/avira/android/blacklist/b/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/avira/android/blacklist/b/d;->e:Lcom/avira/android/blacklist/a/d;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/d;->notifyDataSetChanged()V

    .line 284
    return-void

    .line 283
    :cond_1
    instance-of v3, v1, Lcom/avira/android/blacklist/model/BLContact;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/avira/android/blacklist/model/BLContact;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLContact;->c()Lcom/avira/android/blacklist/model/BLNumber;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/avira/android/blacklist/model/BLNumber;->a(Lcom/avira/android/blacklist/d/j;)V

    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    invoke-virtual {v2}, Lcom/avira/android/blacklist/model/BLNumber;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/avira/android/blacklist/model/BLNumber;->b()Lcom/avira/android/blacklist/d/j;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/blacklist/b/d;->f:Lcom/avira/android/blacklist/d/n;

    invoke-virtual {v2, v0, v1}, Lcom/avira/android/blacklist/d/n;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/j;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/blacklist/b/d;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/avira/android/blacklist/b/d;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/avira/android/blacklist/b/d;->b()V

    return-void
.end method

.method private c(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/avira/android/blacklist/b/d;->g:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    move-result-object v0

    sget-object v1, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    sget-object v2, Lcom/avira/android/blacklist/b/f;->ALL:Lcom/avira/android/blacklist/b/f;

    invoke-virtual {v0, v3, v1, v2}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Lcom/avira/android/blacklist/b/f;)V

    .line 154
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    invoke-static {}, Lcom/avira/android/blacklist/d/a;->d()V

    .line 155
    invoke-direct {p0}, Lcom/avira/android/blacklist/b/d;->b()V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {}, Lcom/avira/android/blacklist/d/a;->c()Lcom/avira/android/blacklist/d/a;

    move-result-object v0

    sget-object v1, Lcom/avira/android/blacklist/d/j;->NONE:Lcom/avira/android/blacklist/d/j;

    sget-object v2, Lcom/avira/android/blacklist/b/f;->NONE:Lcom/avira/android/blacklist/b/f;

    invoke-virtual {v0, v3, v1, v2}, Lcom/avira/android/blacklist/d/a;->a(Lcom/avira/android/blacklist/model/BLContact;Lcom/avira/android/blacklist/d/j;Lcom/avira/android/blacklist/b/f;)V

    goto :goto_0
.end method

.method private d(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 235
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/avira/android/blacklist/b/d;->a:Lcom/avira/android/custom/CustomSpinner;

    invoke-virtual {v0}, Lcom/avira/android/custom/CustomSpinner;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 237
    :cond_0
    invoke-static {}, Lcom/avira/android/blacklist/d/t;->a()Lcom/avira/android/blacklist/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/t;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/avira/android/blacklist/model/b;

    invoke-direct {v1}, Lcom/avira/android/blacklist/model/b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v2, Lcom/avira/android/custom/SpinnerDialogItem;

    const v3, 0x7f0802c2

    invoke-virtual {p0, v3}, Lcom/avira/android/blacklist/b/d;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avira/android/custom/SpinnerDialogItem;-><init>(Ljava/lang/String;)V

    .line 243
    sget-object v3, Lcom/avira/android/blacklist/b/f;->ALL:Lcom/avira/android/blacklist/b/f;

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/SpinnerDialogItem;->a(Lcom/avira/android/custom/h;)V

    .line 244
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v2, Lcom/avira/android/custom/SpinnerDialogItem;

    const v3, 0x7f0802c4

    invoke-virtual {p0, v3}, Lcom/avira/android/blacklist/b/d;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avira/android/custom/SpinnerDialogItem;-><init>(Ljava/lang/String;)V

    .line 247
    sget-object v3, Lcom/avira/android/blacklist/b/f;->TODAY:Lcom/avira/android/blacklist/b/f;

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/SpinnerDialogItem;->a(Lcom/avira/android/custom/h;)V

    .line 248
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v2, Lcom/avira/android/custom/SpinnerDialogItem;

    const v3, 0x7f0802c3

    invoke-virtual {p0, v3}, Lcom/avira/android/blacklist/b/d;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avira/android/custom/SpinnerDialogItem;-><init>(Ljava/lang/String;)V

    .line 251
    sget-object v3, Lcom/avira/android/blacklist/b/f;->NEW:Lcom/avira/android/blacklist/b/f;

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/SpinnerDialogItem;->a(Lcom/avira/android/custom/h;)V

    .line 252
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v2, Lcom/avira/android/custom/SpinnerDialogItem;

    invoke-direct {v2}, Lcom/avira/android/custom/SpinnerDialogItem;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContact;

    .line 259
    new-instance v4, Lcom/avira/android/custom/SpinnerDialogItem;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContact;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/avira/android/custom/SpinnerDialogItem;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v4, v0}, Lcom/avira/android/custom/SpinnerDialogItem;->a(Lcom/avira/android/custom/h;)V

    .line 261
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {v2, v6, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 265
    new-array v0, v6, [Lcom/avira/android/custom/SpinnerDialogItem;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/custom/SpinnerDialogItem;

    .line 266
    iget-object v1, p0, Lcom/avira/android/blacklist/b/d;->a:Lcom/avira/android/custom/CustomSpinner;

    const v2, 0x7f080255

    invoke-virtual {p0, v2}, Lcom/avira/android/blacklist/b/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/d;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/avira/android/custom/CustomSpinner;->setAdapter([Lcom/avira/android/custom/SpinnerDialogItem;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 268
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/avira/android/blacklist/b/d;->b()V

    .line 208
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/avira/android/blacklist/b/e;

    invoke-direct {v1, p0, p1}, Lcom/avira/android/blacklist/b/e;-><init>(Lcom/avira/android/blacklist/b/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/avira/android/blacklist/model/BLContact;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 383
    iget-object v0, p0, Lcom/avira/android/blacklist/b/d;->b:Lcom/avira/android/custom/CustomSpinner;

    invoke-virtual {v0}, Lcom/avira/android/custom/CustomSpinner;->getSelectedItem()Lcom/avira/android/custom/SpinnerDialogItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/SpinnerDialogItem;->f()Lcom/avira/android/custom/h;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/d/j;

    .line 384
    sget-object v2, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    if-ne v0, v2, :cond_0

    .line 386
    iget-object v0, p0, Lcom/avira/android/blacklist/b/d;->f:Lcom/avira/android/blacklist/d/n;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/d/n;->a(Ljava/util/List;)I

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/avira/android/blacklist/b/d;->f:Lcom/avira/android/blacklist/d/n;

    invoke-virtual {v2, v1, v0}, Lcom/avira/android/blacklist/d/n;->a(Ljava/util/List;Lcom/avira/android/blacklist/d/j;)I

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/avira/android/blacklist/b/d;->g:Z

    .line 140
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/b/d;->c(Z)V

    .line 141
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/b/d;->c(Z)V

    .line 147
    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/avira/android/utilities/af;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    invoke-static {}, Lcom/avira/android/blacklist/d/t;->a()Lcom/avira/android/blacklist/d/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/t;->c()Lcom/avira/android/blacklist/d/aa;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/b/d;->onHiddenChanged(Z)V

    .line 126
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 166
    const v0, 0x7f0d0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 167
    invoke-super {p0, p1, p2}, Lcom/avira/android/utilities/af;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 168
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 80
    const v0, 0x7f03001b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistTable"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->b(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 132
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->b(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 133
    invoke-super {p0}, Lcom/avira/android/utilities/af;->onDestroy()V

    .line 134
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 183
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-object v0, p0, Lcom/avira/android/blacklist/b/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLContactHistory;

    .line 186
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLContactHistory;->b()Lcom/avira/android/blacklist/model/BLContact;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_1
    invoke-static {}, Lcom/avira/android/blacklist/d/c;->a()Lcom/avira/android/blacklist/d/c;

    move-result-object v0

    sget-object v2, Lcom/avira/android/blacklist/d/e;->HISTORY:Lcom/avira/android/blacklist/d/e;

    invoke-virtual {v0, p0, v1, v2}, Lcom/avira/android/blacklist/d/c;->a(Lcom/avira/android/blacklist/c/a;Ljava/util/ArrayList;Lcom/avira/android/blacklist/d/e;)V

    .line 195
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v2, Lcom/avira/android/blacklist/activities/BLDeleteActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    iget-object v0, p0, Lcom/avira/android/blacklist/b/d;->b:Lcom/avira/android/custom/CustomSpinner;

    invoke-virtual {v0}, Lcom/avira/android/custom/CustomSpinner;->getSelectedItem()Lcom/avira/android/custom/SpinnerDialogItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/SpinnerDialogItem;->f()Lcom/avira/android/custom/h;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/d/j;

    .line 197
    const-string v2, "blacklistOptionFilterTag"

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/j;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v1}, Lcom/avira/android/blacklist/b/d;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0249
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 173
    const v1, 0x7f0e0248

    iget-object v0, p0, Lcom/avira/android/blacklist/b/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 174
    invoke-super {p0, p1}, Lcom/avira/android/utilities/af;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 175
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/avira/android/utilities/af;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0, v6}, Lcom/avira/android/blacklist/b/d;->setHasOptionsMenu(Z)V

    .line 89
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/l;->d()Lcom/avira/android/blacklist/d/n;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/b/d;->f:Lcom/avira/android/blacklist/d/n;

    .line 91
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistTable"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 92
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistDataStore"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 94
    const v0, 0x7f0e0072

    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/b/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/CustomSpinner;

    iput-object v0, p0, Lcom/avira/android/blacklist/b/d;->a:Lcom/avira/android/custom/CustomSpinner;

    .line 95
    iget-object v0, p0, Lcom/avira/android/blacklist/b/d;->a:Lcom/avira/android/custom/CustomSpinner;

    invoke-virtual {v0, p0}, Lcom/avira/android/custom/CustomSpinner;->setOnSelectionChanged(Lcom/avira/android/custom/g;)V

    .line 97
    const v0, 0x7f0e0073

    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/b/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/CustomSpinner;

    iput-object v0, p0, Lcom/avira/android/blacklist/b/d;->b:Lcom/avira/android/custom/CustomSpinner;

    .line 99
    new-instance v0, Lcom/avira/android/custom/SpinnerDialogItem;

    const v1, 0x7f080233

    invoke-virtual {p0, v1}, Lcom/avira/android/blacklist/b/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avira/android/custom/SpinnerDialogItem;-><init>(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/avira/android/blacklist/d/j;->BOTH:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/SpinnerDialogItem;->a(Lcom/avira/android/custom/h;)V

    .line 102
    new-instance v1, Lcom/avira/android/custom/SpinnerDialogItem;

    const v2, 0x7f080234

    invoke-virtual {p0, v2}, Lcom/avira/android/blacklist/b/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/avira/android/custom/SpinnerDialogItem;-><init>(Ljava/lang/String;)V

    .line 103
    sget-object v2, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/SpinnerDialogItem;->a(Lcom/avira/android/custom/h;)V

    .line 105
    new-instance v2, Lcom/avira/android/custom/SpinnerDialogItem;

    const v3, 0x7f080236

    invoke-virtual {p0, v3}, Lcom/avira/android/blacklist/b/d;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avira/android/custom/SpinnerDialogItem;-><init>(Ljava/lang/String;)V

    .line 106
    sget-object v3, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/SpinnerDialogItem;->a(Lcom/avira/android/custom/h;)V

    .line 108
    iget-object v3, p0, Lcom/avira/android/blacklist/b/d;->b:Lcom/avira/android/custom/CustomSpinner;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/avira/android/custom/SpinnerDialogItem;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const v0, 0x7f080254

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/b/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/d;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v3, v4, v0, v1}, Lcom/avira/android/custom/CustomSpinner;->setAdapter([Lcom/avira/android/custom/SpinnerDialogItem;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 110
    iget-object v0, p0, Lcom/avira/android/blacklist/b/d;->b:Lcom/avira/android/custom/CustomSpinner;

    invoke-virtual {v0, p0}, Lcom/avira/android/custom/CustomSpinner;->setOnSelectionChanged(Lcom/avira/android/custom/g;)V

    .line 112
    const v0, 0x7f0e0074

    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/b/d;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/avira/android/blacklist/b/d;->c:Landroid/widget/ListView;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/b/d;->d:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Lcom/avira/android/blacklist/a/d;

    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/blacklist/b/d;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/avira/android/blacklist/a/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/b/d;->e:Lcom/avira/android/blacklist/a/d;

    .line 115
    iget-object v0, p0, Lcom/avira/android/blacklist/b/d;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/avira/android/blacklist/b/d;->e:Lcom/avira/android/blacklist/a/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    invoke-direct {p0, v5}, Lcom/avira/android/blacklist/b/d;->d(Z)V

    .line 118
    invoke-direct {p0}, Lcom/avira/android/blacklist/b/d;->b()V

    .line 119
    return-void
.end method
