.class public final Lcom/avira/android/antivirus/OEScanResultActivityPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/avira/android/antivirus/ad;

.field private final c:Lcom/avira/android/custom/BaseFragmentActivity;

.field private final d:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/avira/android/antivirus/data/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/antivirus/data/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/avira/android/antivirus/au;

.field private g:Landroid/os/Handler;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0xa

    sput v0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/avira/android/antivirus/ad;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b:Lcom/avira/android/antivirus/ad;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->i:Z

    .line 69
    iput-object p1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b:Lcom/avira/android/antivirus/ad;

    .line 70
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b:Lcom/avira/android/antivirus/ad;

    invoke-interface {v0}, Lcom/avira/android/antivirus/ad;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 71
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 72
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/FragmentManager;Lcom/avira/android/antivirus/data/h;Landroid/content/res/Resources;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b(Landroid/support/v4/app/FragmentManager;Lcom/avira/android/antivirus/data/h;Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->e()V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;Lcom/avira/android/antivirus/data/a;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a(Lcom/avira/android/antivirus/data/a;)V

    return-void
.end method

.method private a(Lcom/avira/android/antivirus/data/a;)V
    .locals 4

    .prologue
    .line 284
    invoke-interface {p1}, Lcom/avira/android/antivirus/data/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v2, 0x7f08029c

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avira/android/custom/x;->OkCancelButtons:Lcom/avira/android/custom/x;

    sget-object v3, Lcom/avira/android/custom/aa;->WarningIcon:Lcom/avira/android/custom/aa;

    sget-object v3, Lcom/avira/android/custom/z;->TwoLineRegularHeaderContent:Lcom/avira/android/custom/z;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;Lcom/avira/android/custom/z;Lcom/avira/android/antivirus/data/a;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    .line 289
    new-instance v1, Lcom/avira/android/antivirus/an;

    invoke-direct {v1, p0, p1}, Lcom/avira/android/antivirus/an;-><init>(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;Lcom/avira/android/antivirus/data/a;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    .line 308
    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 310
    return-void
.end method

.method private a(Lcom/avira/android/antivirus/data/a;I)V
    .locals 4

    .prologue
    .line 315
    invoke-interface {p1}, Lcom/avira/android/antivirus/data/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, p2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    sget-object v3, Lcom/avira/android/custom/aa;->WarningIcon:Lcom/avira/android/custom/aa;

    sget-object v3, Lcom/avira/android/custom/z;->TwoLineRegularHeaderContent:Lcom/avira/android/custom/z;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;Lcom/avira/android/custom/z;Lcom/avira/android/antivirus/data/a;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    .line 318
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    .line 319
    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 320
    return-void
.end method

.method private static a(Lcom/avira/android/antivirus/data/a;Lcom/avira/android/antivirus/data/ScannerCallbackData;)V
    .locals 3

    .prologue
    .line 504
    invoke-virtual {p1}, Lcom/avira/android/antivirus/data/ScannerCallbackData;->getInfectedFileInfoList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/ScannedFileInfo;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannedFileInfo;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/MalwareInfo;

    .line 508
    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/MalwareInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/avira/android/antivirus/data/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    return-object v0
.end method

.method private static b(Landroid/support/v4/app/FragmentManager;Lcom/avira/android/antivirus/data/h;Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    .line 271
    sget-object v0, Lcom/avira/android/antivirus/data/e;->oe_threat_info_title:[I

    invoke-virtual {p1}, Lcom/avira/android/antivirus/data/h;->b()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    sget-object v1, Lcom/avira/android/antivirus/data/e;->oe_threat_info_detail:[I

    invoke-virtual {p1}, Lcom/avira/android/antivirus/data/h;->b()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    new-instance v2, Lcom/avira/android/antivirus/ay;

    invoke-direct {v2, v0, v1}, Lcom/avira/android/antivirus/ay;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v2, p0}, Lcom/avira/android/antivirus/ay;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 279
    return-void
.end method

.method static synthetic b(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;Lcom/avira/android/antivirus/data/a;)V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f08029d

    invoke-direct {p0, p1, v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a(Lcom/avira/android/antivirus/data/a;I)V

    return-void
.end method

.method static synthetic c(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v3, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const v4, 0x7f080263

    invoke-virtual {v3, v4}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/avira/android/database/n;->a()Lcom/avira/android/database/gson/ScanResultsDatabaseItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->results:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v1, Lcom/avira/android/database/gson/ScanResultsDatabaseItem;->results:Ljava/util/Collection;

    :cond_0
    invoke-static {}, Lcom/avira/android/a/c;->a()Lcom/avira/android/a/c;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/ScannerCallbackData;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannerCallbackData;->getFileInfo()Lcom/avira/android/antivirus/data/ScannedFileInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/antivirus/data/ScannedFileInfo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/avira/android/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v3, v5}, Lcom/avira/android/a/c;->a(Ljava/lang/String;)Lcom/avira/android/a/b;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v1, Lcom/avira/android/antivirus/data/g;

    invoke-direct {v1, v5}, Lcom/avira/android/antivirus/data/g;-><init>(Lcom/avira/android/a/a;)V

    invoke-static {v1, v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a(Lcom/avira/android/antivirus/data/a;Lcom/avira/android/antivirus/data/ScannerCallbackData;)V

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/avira/android/antivirus/data/g;

    new-instance v6, Lcom/avira/android/a/a;

    invoke-direct {v6, v5}, Lcom/avira/android/a/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Lcom/avira/android/antivirus/data/g;-><init>(Lcom/avira/android/a/a;)V

    invoke-static {v1, v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a(Lcom/avira/android/antivirus/data/a;Lcom/avira/android/antivirus/data/ScannerCallbackData;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    return-object v2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Lcom/avira/android/antivirus/au;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->f:Lcom/avira/android/antivirus/au;

    return-object v0
.end method

.method static synthetic e(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 407
    new-instance v0, Lcom/avira/android/antivirus/ao;

    invoke-direct {v0, p0}, Lcom/avira/android/antivirus/ao;-><init>(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 451
    return-void
.end method

.method static synthetic f(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->i:Z

    return v0
.end method

.method static synthetic g(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Lcom/avira/android/antivirus/ad;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b:Lcom/avira/android/antivirus/ad;

    return-object v0
.end method

.method static synthetic h(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->e:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Lcom/avira/android/antivirus/au;

    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v2, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->e:Ljava/util/ArrayList;

    new-instance v3, Lcom/avira/android/antivirus/aj;

    invoke-direct {v3, p0}, Lcom/avira/android/antivirus/aj;-><init>(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/android/antivirus/au;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->f:Lcom/avira/android/antivirus/au;

    .line 96
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b:Lcom/avira/android/antivirus/ad;

    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->f:Lcom/avira/android/antivirus/au;

    invoke-interface {v0, v1}, Lcom/avira/android/antivirus/ad;->a(Landroid/widget/ListAdapter;)V

    .line 97
    new-instance v0, Lcom/avira/android/antivirus/ak;

    invoke-direct {v0, p0}, Lcom/avira/android/antivirus/ak;-><init>(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->g:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter$ScanResultFileUpdated;

    invoke-direct {v0, p0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter$ScanResultFileUpdated;-><init>(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)V

    iput-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->h:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.action.file_update"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v2, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 152
    sget v0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a:I

    if-ne p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/a;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x400000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    sget v2, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 162
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 565
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->e:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/a;

    .line 569
    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 571
    invoke-static {}, Lcom/avira/android/a/c;->a()Lcom/avira/android/a/c;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/a/c;->f(Ljava/lang/String;)V

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    invoke-direct {p0, v0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a(Lcom/avira/android/antivirus/data/a;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->e()V

    .line 118
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/b;

    .line 180
    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->g()Lcom/avira/android/antivirus/data/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v1

    sget-object v2, Lcom/avira/android/antivirus/data/c;->ITEM:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v2}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 184
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/a;

    .line 186
    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avira/android/utilities/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 192
    new-instance v1, Lcom/avira/android/antivirus/al;

    invoke-direct {v1, p0}, Lcom/avira/android/antivirus/al;-><init>(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;)V

    .line 231
    :goto_1
    iget-object v2, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->e:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Lcom/avira/android/antivirus/data/e;->a(Ljava/util/List;I)Lcom/avira/android/antivirus/data/h;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/avira/android/antivirus/az;->a(Lcom/avira/android/antivirus/bb;Lcom/avira/android/antivirus/data/a;Lcom/avira/android/antivirus/data/h;)Lcom/avira/android/antivirus/az;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/antivirus/az;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 212
    :cond_1
    new-instance v1, Lcom/avira/android/antivirus/am;

    invoke-direct {v1, p0, v0}, Lcom/avira/android/antivirus/am;-><init>(Lcom/avira/android/antivirus/OEScanResultActivityPresenter;Lcom/avira/android/antivirus/data/a;)V

    goto :goto_1

    .line 237
    :cond_2
    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const v1, 0x7f08029f

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->a(Lcom/avira/android/antivirus/data/a;I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f08029e

    goto :goto_2

    .line 241
    :cond_4
    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->g()Lcom/avira/android/antivirus/data/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v1

    sget-object v2, Lcom/avira/android/antivirus/data/c;->SECTION:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v2}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 245
    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    check-cast v0, Lcom/avira/android/antivirus/data/h;

    iget-object v2, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b(Landroid/support/v4/app/FragmentManager;Lcom/avira/android/antivirus/data/h;Landroid/content/res/Resources;)V

    goto/16 :goto_0

    .line 250
    :cond_5
    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->g()Lcom/avira/android/antivirus/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/c;->a()I

    sget-object v0, Lcom/avira/android/antivirus/data/c;->EMPTY:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/c;->a()I

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    const-string v1, "remainingListSize"

    iget-boolean v2, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 131
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->c:Lcom/avira/android/custom/BaseFragmentActivity;

    iget-object v1, p0, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
