.class public final Lcom/avira/android/blacklist/b/a;
.super Lcom/avira/android/utilities/af;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/avira/android/blacklist/c/a;
.implements Lcom/avira/android/blacklist/d/r;
.implements Lcom/avira/android/custom/ac;


# static fields
.field private static final MAX_LISTVIEW_HEIGHT:I = 0x3e8


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

.field private c:Lcom/avira/android/custom/ad;

.field private d:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/avira/android/custom/SpinnerDialogItem;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/avira/android/utilities/af;-><init>()V

    .line 283
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(IILjava/lang/Class;Lcom/avira/android/blacklist/activities/u;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/avira/android/blacklist/activities/u;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0, p2}, Lcom/avira/android/blacklist/b/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/avira/android/custom/SpinnerDialogItem;

    const v2, 0x7f02000c

    invoke-direct {v1, v0, v2}, Lcom/avira/android/custom/SpinnerDialogItem;-><init>(Ljava/lang/String;I)V

    .line 145
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    if-eqz p4, :cond_0

    .line 148
    const-string v3, "header_text_tag"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v0, "import_type_tag"

    invoke-virtual {p4}, Lcom/avira/android/blacklist/activities/u;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {v1}, Lcom/avira/android/custom/SpinnerDialogItem;->b()V

    .line 152
    :cond_0
    invoke-virtual {v1, p1}, Lcom/avira/android/custom/SpinnerDialogItem;->a(I)V

    .line 154
    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->d:Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/b/a;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/avira/android/blacklist/b/a;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 243
    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/b;->clear()V

    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->c()Lcom/avira/android/blacklist/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/h;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/b/a;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v1, v0}, Lcom/avira/android/blacklist/a/b;->addAll(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/avira/android/blacklist/model/b;

    invoke-direct {v1}, Lcom/avira/android/blacklist/model/b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/a/b;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->e:Ljava/util/concurrent/Semaphore;

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 257
    return-void

    .line 243
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avira/android/blacklist/b/a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->e:Ljava/util/concurrent/Semaphore;

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->e:Ljava/util/concurrent/Semaphore;

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->c:Lcom/avira/android/custom/ad;

    invoke-virtual {v0}, Lcom/avira/android/custom/ad;->a()Lcom/avira/android/custom/SpinnerDialogItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/SpinnerDialogItem;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f080263

    invoke-virtual {p0, v3}, Lcom/avira/android/blacklist/b/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/avira/android/custom/SpinnerDialogItem;->a()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080247

    invoke-virtual {p0, v2}, Lcom/avira/android/blacklist/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/f;->d()Lcom/avira/android/blacklist/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/v;->b()Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/avira/android/blacklist/b/a;->d:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/b/a;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    const-string v0, "blacklistTable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/avira/android/blacklist/b/b;

    invoke-direct {v1, p0}, Lcom/avira/android/blacklist/b/b;-><init>(Lcom/avira/android/blacklist/b/a;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/f;->c()Lcom/avira/android/blacklist/d/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/blacklist/d/h;->a(Ljava/util/ArrayList;)V

    .line 281
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0061

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->c:Lcom/avira/android/custom/ad;

    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "com.avira.android.custom.MessageDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/ad;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 190
    const v0, 0x7f0d0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 191
    invoke-super {p0, p1, p2}, Lcom/avira/android/utilities/af;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 192
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 62
    const v0, 0x7f030015

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistTable"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->b(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 91
    invoke-super {p0}, Lcom/avira/android/utilities/af;->onDestroy()V

    .line 92
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 207
    :pswitch_0
    invoke-static {}, Lcom/avira/android/blacklist/d/c;->a()Lcom/avira/android/blacklist/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/b/a;->b:Ljava/util/ArrayList;

    sget-object v2, Lcom/avira/android/blacklist/d/e;->CONTACT:Lcom/avira/android/blacklist/d/e;

    invoke-virtual {v0, p0, v1, v2}, Lcom/avira/android/blacklist/d/c;->a(Lcom/avira/android/blacklist/c/a;Ljava/util/ArrayList;Lcom/avira/android/blacklist/d/e;)V

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/avira/android/blacklist/activities/BLDeleteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/avira/android/blacklist/b/a;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0249
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 197
    const v1, 0x7f0e0248

    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 198
    invoke-super {p0, p1}, Lcom/avira/android/utilities/af;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 199
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onResume()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/avira/android/blacklist/b/a;->b()V

    .line 184
    invoke-super {p0}, Lcom/avira/android/utilities/af;->onResume()V

    .line 185
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-super {p0, p1, p2}, Lcom/avira/android/utilities/af;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/avira/android/blacklist/b/a;->setHasOptionsMenu(Z)V

    .line 71
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/blacklist/b/a;->e:Ljava/util/concurrent/Semaphore;

    .line 73
    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->d:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/avira/android/blacklist/b/c;

    invoke-direct {v1, v4}, Lcom/avira/android/blacklist/b/c;-><init>(B)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/b/a;->d:Ljava/util/TreeMap;

    const v0, 0x7f080247

    const-class v1, Lcom/avira/android/blacklist/activities/BLImportActivity;

    sget-object v2, Lcom/avira/android/blacklist/activities/u;->PHONEBOOK:Lcom/avira/android/blacklist/activities/u;

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/avira/android/blacklist/b/a;->a(IILjava/lang/Class;Lcom/avira/android/blacklist/activities/u;)V

    const v0, 0x7f080248

    const-class v1, Lcom/avira/android/blacklist/activities/BLImportActivity;

    sget-object v2, Lcom/avira/android/blacklist/activities/u;->CALL_LOG:Lcom/avira/android/blacklist/activities/u;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/avira/android/blacklist/b/a;->a(IILjava/lang/Class;Lcom/avira/android/blacklist/activities/u;)V

    const/4 v0, 0x2

    const v1, 0x7f080249

    const-class v2, Lcom/avira/android/blacklist/activities/BLImportActivity;

    sget-object v3, Lcom/avira/android/blacklist/activities/u;->SMS_LOG:Lcom/avira/android/blacklist/activities/u;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/avira/android/blacklist/b/a;->a(IILjava/lang/Class;Lcom/avira/android/blacklist/activities/u;)V

    const/4 v0, 0x3

    const v1, 0x7f08024b

    const-class v2, Lcom/avira/android/blacklist/activities/BLContactEditActivity;

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/avira/android/blacklist/b/a;->a(IILjava/lang/Class;Lcom/avira/android/blacklist/activities/u;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avira/android/blacklist/b/a;->d:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    new-instance v1, Lcom/avira/android/custom/ad;

    const v2, 0x7f080239

    invoke-virtual {p0, v2}, Lcom/avira/android/blacklist/b/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Lcom/avira/android/custom/SpinnerDialogItem;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/custom/SpinnerDialogItem;

    invoke-direct {v1, v2, v0}, Lcom/avira/android/custom/ad;-><init>(Ljava/lang/String;[Lcom/avira/android/custom/SpinnerDialogItem;)V

    iput-object v1, p0, Lcom/avira/android/blacklist/b/a;->c:Lcom/avira/android/custom/ad;

    .line 78
    iget-object v0, p0, Lcom/avira/android/blacklist/b/a;->c:Lcom/avira/android/custom/ad;

    invoke-virtual {v0, p0}, Lcom/avira/android/custom/ad;->a(Lcom/avira/android/custom/ac;)V

    .line 80
    const v0, 0x7f0e0061

    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v0

    const-string v1, "blacklistTable"

    invoke-virtual {v0, v1, p0}, Lcom/avira/android/blacklist/d/l;->a(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V

    .line 84
    const v0, 0x7f0e005f

    invoke-direct {p0, v0}, Lcom/avira/android/blacklist/b/a;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, 0x3e8

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/avira/android/blacklist/b/a;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/avira/android/blacklist/a/b;

    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/avira/android/blacklist/b/a;->b:Ljava/util/ArrayList;

    sget-object v4, Lcom/avira/android/blacklist/a/c;->BLACKLIST_ITEM:Lcom/avira/android/blacklist/a/c;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/avira/android/blacklist/a/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/avira/android/blacklist/a/c;Lcom/avira/android/blacklist/c/b;)V

    iput-object v1, p0, Lcom/avira/android/blacklist/b/a;->a:Lcom/avira/android/blacklist/a/b;

    iget-object v1, p0, Lcom/avira/android/blacklist/b/a;->a:Lcom/avira/android/blacklist/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    return-void
.end method
