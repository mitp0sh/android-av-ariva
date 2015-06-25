.class public final Lcom/avira/android/firstscan/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FirstVDFDownloadActivityPresenter"


# instance fields
.field private a:Lcom/avira/android/firstscan/f;

.field private final b:Lcom/avira/android/custom/BaseFragmentActivity;

.field private c:Lcom/avira/android/firstscan/e;

.field private d:Landroid/content/IntentFilter;

.field private e:Lcom/avira/android/firstscan/d;

.field private f:Landroid/content/IntentFilter;

.field private g:Lcom/avira/android/i;


# direct methods
.method public constructor <init>(Lcom/avira/android/firstscan/f;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/firstscan/b;->a:Lcom/avira/android/firstscan/f;

    .line 38
    sget-object v0, Lcom/avira/android/i;->ACTION_FIRST_SCAN_EXIT:Lcom/avira/android/i;

    iput-object v0, p0, Lcom/avira/android/firstscan/b;->g:Lcom/avira/android/i;

    .line 42
    iput-object p1, p0, Lcom/avira/android/firstscan/b;->a:Lcom/avira/android/firstscan/f;

    .line 43
    iget-object v0, p0, Lcom/avira/android/firstscan/b;->a:Lcom/avira/android/firstscan/f;

    invoke-interface {v0}, Lcom/avira/android/firstscan/f;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/firstscan/b;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 44
    return-void
.end method

.method private a(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/firstscan/b;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 140
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/avira/android/firstscan/b;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0, p1, p2}, Lcom/avira/android/custom/BaseFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/avira/android/firstscan/b;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/avira/android/firstscan/b;->f()V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/firstscan/b;Z)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/avira/android/firstscan/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 115
    invoke-static {}, Lcom/avira/android/firstscan/a;->f()V

    .line 118
    :cond_0
    sget-object v0, Lcom/avira/android/i;->ACTION_FIRST_SCAN_OK:Lcom/avira/android/i;

    iput-object v0, p0, Lcom/avira/android/firstscan/b;->g:Lcom/avira/android/i;

    .line 119
    iget-object v0, p0, Lcom/avira/android/firstscan/b;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 120
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    .line 183
    iget-object v0, p0, Lcom/avira/android/firstscan/b;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avira/android/firstscan/b;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v3, 0x7f08016c

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    const/4 v4, 0x0

    sget-object v5, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-static/range {v0 .. v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    .line 187
    new-instance v1, Lcom/avira/android/firstscan/c;

    invoke-direct {v1, p0}, Lcom/avira/android/firstscan/c;-><init>(Lcom/avira/android/firstscan/b;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/ab;)V

    .line 195
    iget-object v1, p0, Lcom/avira/android/firstscan/b;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 196
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/avira/android/firstscan/e;

    invoke-direct {v0, p0, v2}, Lcom/avira/android/firstscan/e;-><init>(Lcom/avira/android/firstscan/b;B)V

    iput-object v0, p0, Lcom/avira/android/firstscan/b;->c:Lcom/avira/android/firstscan/e;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_VDF_DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/firstscan/b;->d:Landroid/content/IntentFilter;

    .line 54
    new-instance v0, Lcom/avira/android/firstscan/d;

    invoke-direct {v0, p0, v2}, Lcom/avira/android/firstscan/d;-><init>(Lcom/avira/android/firstscan/b;B)V

    iput-object v0, p0, Lcom/avira/android/firstscan/b;->e:Lcom/avira/android/firstscan/d;

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_UPDATER_FAILED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avira/android/firstscan/b;->f:Landroid/content/IntentFilter;

    .line 56
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/avira/android/firstscan/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avira/android/firstscan/b;->a(Z)V

    .line 76
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/avira/android/firstscan/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/avira/android/firstscan/b;->c:Lcom/avira/android/firstscan/e;

    iget-object v1, p0, Lcom/avira/android/firstscan/b;->d:Landroid/content/IntentFilter;

    invoke-direct {p0, v0, v1}, Lcom/avira/android/firstscan/b;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 70
    iget-object v0, p0, Lcom/avira/android/firstscan/b;->e:Lcom/avira/android/firstscan/d;

    iget-object v1, p0, Lcom/avira/android/firstscan/b;->f:Landroid/content/IntentFilter;

    invoke-direct {p0, v0, v1}, Lcom/avira/android/firstscan/b;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0}, Lcom/avira/android/firstscan/b;->f()V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/avira/android/firstscan/b;->c:Lcom/avira/android/firstscan/e;

    invoke-direct {p0, v0}, Lcom/avira/android/firstscan/b;->a(Landroid/content/BroadcastReceiver;)V

    .line 84
    iget-object v0, p0, Lcom/avira/android/firstscan/b;->e:Lcom/avira/android/firstscan/d;

    invoke-direct {p0, v0}, Lcom/avira/android/firstscan/b;->a(Landroid/content/BroadcastReceiver;)V

    .line 85
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/firstscan/b;->g:Lcom/avira/android/i;

    invoke-virtual {v1}, Lcom/avira/android/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/avira/android/firstscan/b;->a(Z)V

    .line 102
    return-void
.end method
