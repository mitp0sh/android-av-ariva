.class public final Lcom/avira/android/custom/OEMessageDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final EULA_TIMEOUT_MILISECONDS:I = 0x3a98

.field public static final TAG:Ljava/lang/String; = "com.avira.android.custom.MessageDialogFragment"

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Lcom/avira/android/custom/x;

.field private static e:Z

.field private static f:Lcom/avira/android/custom/z;

.field private static j:Landroid/view/View;

.field private static k:Landroid/widget/ScrollView;

.field private static l:Landroid/widget/LinearLayout;

.field private static o:Lcom/avira/android/antivirus/data/a;

.field private static p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/a/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:Lcom/avira/android/custom/ab;

.field private final h:Lcom/avira/android/custom/OEMessageDialogFragment$EulaWebViewEventBroadcastReceiver;

.field private final i:Lcom/avira/android/custom/n;

.field private m:Ljava/util/Timer;

.field private n:Lcom/avira/android/custom/m;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->g:Lcom/avira/android/custom/ab;

    .line 77
    invoke-virtual {p0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->setCancelable(Z)V

    .line 78
    const v0, 0x7f090003

    invoke-virtual {p0, v1, v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->setStyle(II)V

    .line 79
    new-instance v0, Lcom/avira/android/custom/OEMessageDialogFragment$EulaWebViewEventBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/avira/android/custom/OEMessageDialogFragment$EulaWebViewEventBroadcastReceiver;-><init>(Lcom/avira/android/custom/OEMessageDialogFragment;)V

    iput-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->h:Lcom/avira/android/custom/OEMessageDialogFragment$EulaWebViewEventBroadcastReceiver;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.avira.android.ACTION_PAGE_LOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v1, "com.avira.android.ACTION_WEBVIEW_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "com.avira.android.ACTION_WEBVIEW_DIALOG_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "com.avira.android.ACTION_EULA_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->h:Lcom/avira/android/custom/OEMessageDialogFragment$EulaWebViewEventBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/avira/android/ApplicationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    new-instance v0, Lcom/avira/android/custom/n;

    invoke-direct {v0, p0}, Lcom/avira/android/custom/n;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->i:Lcom/avira/android/custom/n;

    .line 87
    return-void
.end method

.method public static a()Lcom/avira/android/custom/OEMessageDialogFragment;
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-direct {v0}, Lcom/avira/android/custom/OEMessageDialogFragment;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/avira/android/custom/x;Lcom/avira/android/custom/z;Ljava/util/ArrayList;)Lcom/avira/android/custom/OEMessageDialogFragment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avira/android/custom/x;",
            "Lcom/avira/android/custom/z;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/a/b;",
            ">;)",
            "Lcom/avira/android/custom/OEMessageDialogFragment;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 197
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    .line 199
    sput-object p3, Lcom/avira/android/custom/OEMessageDialogFragment;->p:Ljava/util/ArrayList;

    .line 200
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;Lcom/avira/android/custom/z;Lcom/avira/android/antivirus/data/a;)Lcom/avira/android/custom/OEMessageDialogFragment;
    .locals 6

    .prologue
    .line 164
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;

    move-result-object v0

    .line 166
    sput-object p4, Lcom/avira/android/custom/OEMessageDialogFragment;->o:Lcom/avira/android/antivirus/data/a;

    .line 167
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)Lcom/avira/android/custom/OEMessageDialogFragment;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-direct {v0}, Lcom/avira/android/custom/OEMessageDialogFragment;-><init>()V

    .line 118
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "title cannot be null or have zero length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    sput-object p0, Lcom/avira/android/custom/OEMessageDialogFragment;->a:Ljava/lang/String;

    .line 124
    sput-object p1, Lcom/avira/android/custom/OEMessageDialogFragment;->b:Ljava/lang/String;

    .line 125
    sput-object p2, Lcom/avira/android/custom/OEMessageDialogFragment;->c:Ljava/lang/String;

    .line 126
    sput-object p3, Lcom/avira/android/custom/OEMessageDialogFragment;->d:Lcom/avira/android/custom/x;

    .line 127
    sput-boolean p4, Lcom/avira/android/custom/OEMessageDialogFragment;->e:Z

    .line 128
    sput-object p5, Lcom/avira/android/custom/OEMessageDialogFragment;->f:Lcom/avira/android/custom/z;

    .line 129
    sput-object v2, Lcom/avira/android/custom/OEMessageDialogFragment;->o:Lcom/avira/android/antivirus/data/a;

    .line 130
    sput-object v2, Lcom/avira/android/custom/OEMessageDialogFragment;->p:Ljava/util/ArrayList;

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->setCancelable(Z)V

    .line 134
    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/custom/OEMessageDialogFragment;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->m:Ljava/util/Timer;

    return-object v0
.end method

.method static b()Landroid/view/View;
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/android/custom/OEMessageDialogFragment;)Lcom/avira/android/custom/n;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->i:Lcom/avira/android/custom/n;

    return-object v0
.end method

.method static d()Z
    .locals 1

    .prologue
    .line 510
    sget-boolean v0, Lcom/avira/android/custom/OEMessageDialogFragment;->e:Z

    return v0
.end method

.method static synthetic e()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->k:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic f()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/avira/android/custom/OEMessageDialogFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/avira/android/custom/OEMessageDialogFragment;->dismiss()V

    .line 474
    :cond_0
    :try_start_0
    const-string v0, "com.avira.android.custom.MessageDialogFragment"

    invoke-virtual {p0, p1, v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/avira/android/custom/ab;)V
    .locals 1

    .prologue
    .line 444
    iput-object p1, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->g:Lcom/avira/android/custom/ab;

    .line 445
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->i:Lcom/avira/android/custom/n;

    invoke-virtual {v0}, Lcom/avira/android/custom/n;->a()V

    .line 446
    return-void
.end method

.method public final a(Lcom/avira/android/custom/m;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->n:Lcom/avira/android/custom/m;

    .line 457
    return-void
.end method

.method final c()Lcom/avira/android/custom/ab;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->g:Lcom/avira/android/custom/ab;

    return-object v0
.end method

.method public final dismiss()V
    .locals 1

    .prologue
    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/avira/android/custom/OEMessageDialogFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final finalize()V
    .locals 2

    .prologue
    .line 254
    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->h:Lcom/avira/android/custom/OEMessageDialogFragment$EulaWebViewEventBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 261
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f0e006d

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 362
    invoke-virtual {p0}, Lcom/avira/android/custom/OEMessageDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 364
    const v0, 0x7f03007d

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 366
    sput-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->j:Landroid/view/View;

    const v1, 0x7f0e018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    sput-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->k:Landroid/widget/ScrollView;

    .line 368
    sget-object v0, Lcom/avira/android/custom/l;->$SwitchMap$com$avira$android$custom$OEMessageDialogHelper$ContentLayoutMode:[I

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->f:Lcom/avira/android/custom/z;

    invoke-virtual {v1}, Lcom/avira/android/custom/z;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 433
    :cond_0
    :goto_0
    sget-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->j:Landroid/view/View;

    return-object v0

    .line 371
    :pswitch_0
    const v0, 0x7f030078

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->k:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 373
    sget-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->k:Landroid/widget/ScrollView;

    const v1, 0x7f0e01bb

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 374
    new-instance v1, Lcom/avira/android/custom/j;

    invoke-direct {v1, p0}, Lcom/avira/android/custom/j;-><init>(Lcom/avira/android/custom/OEMessageDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    sget-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->k:Landroid/widget/ScrollView;

    const v1, 0x7f0e0206

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 391
    new-instance v1, Lcom/avira/android/custom/k;

    invoke-direct {v1, p0}, Lcom/avira/android/custom/k;-><init>(Lcom/avira/android/custom/OEMessageDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 403
    :pswitch_1
    const v0, 0x7f030079

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->k:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 406
    :pswitch_2
    const v0, 0x7f030080

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->k:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 409
    :pswitch_3
    sget-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->j:Landroid/view/View;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 410
    const v0, 0x7f0300b0

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->k:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 411
    sget-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 413
    sget-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 414
    sput-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 419
    :pswitch_4
    const v0, 0x7f03007f

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->k:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 420
    sget-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 421
    sput-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 425
    :pswitch_5
    sget-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->k:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 426
    sget-object v0, Lcom/avira/android/custom/OEMessageDialogFragment;->j:Landroid/view/View;

    const v1, 0x7f0e018b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 428
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 429
    const v1, 0x7f03007e

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 243
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->n:Lcom/avira/android/custom/m;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->n:Lcom/avira/android/custom/m;

    invoke-interface {v0}, Lcom/avira/android/custom/m;->a()V

    .line 247
    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 233
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->g:Lcom/avira/android/custom/ab;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->g:Lcom/avira/android/custom/ab;

    .line 237
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 5

    .prologue
    .line 311
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->i:Lcom/avira/android/custom/n;

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->d:Lcom/avira/android/custom/x;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/n;->a(Lcom/avira/android/custom/x;)V

    .line 312
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->i:Lcom/avira/android/custom/n;

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/n;->b(Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/avira/android/custom/l;->$SwitchMap$com$avira$android$custom$OEMessageDialogHelper$ContentLayoutMode:[I

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->f:Lcom/avira/android/custom/z;

    invoke-virtual {v1}, Lcom/avira/android/custom/z;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 351
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 357
    return-void

    .line 317
    :pswitch_0
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->i:Lcom/avira/android/custom/n;

    const v1, 0x7f08013c

    invoke-virtual {p0, v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0802a0

    invoke-virtual {p0, v2}, Lcom/avira/android/custom/OEMessageDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08012e

    invoke-virtual {p0, v3}, Lcom/avira/android/custom/OEMessageDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080261

    invoke-virtual {p0, v4}, Lcom/avira/android/custom/OEMessageDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avira/android/custom/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->i:Lcom/avira/android/custom/n;

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->b:Ljava/lang/String;

    sget-object v2, Lcom/avira/android/custom/OEMessageDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :pswitch_2
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->i:Lcom/avira/android/custom/n;

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/n;->a(Ljava/lang/String;)V

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avira.android.ACTION_WEBVIEW_DIALOG_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-static {v0}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 330
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->m:Ljava/util/Timer;

    .line 331
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->m:Ljava/util/Timer;

    new-instance v1, Lcom/avira/android/custom/i;

    invoke-direct {v1, p0}, Lcom/avira/android/custom/i;-><init>(Lcom/avira/android/custom/OEMessageDialogFragment;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 342
    :pswitch_3
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->i:Lcom/avira/android/custom/n;

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->b:Ljava/lang/String;

    sget-object v2, Lcom/avira/android/custom/OEMessageDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :pswitch_4
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->i:Lcom/avira/android/custom/n;

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->o:Lcom/avira/android/antivirus/data/a;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/n;->a(Lcom/avira/android/antivirus/data/a;)V

    goto :goto_0

    .line 350
    :pswitch_5
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment;->i:Lcom/avira/android/custom/n;

    sget-object v1, Lcom/avira/android/custom/OEMessageDialogFragment;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/n;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
