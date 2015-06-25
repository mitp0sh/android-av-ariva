.class public Lcom/avira/android/custom/OEMessageDialogFragment$EulaWebViewEventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final EULA_DIALOG_ATTACHED_ACTION:Ljava/lang/String; = "com.avira.android.ACTION_WEBVIEW_DIALOG_ATTACHED"

.field static final EULA_LOAD_COMPLETED_ACTION:Ljava/lang/String; = "com.avira.android.ACTION_PAGE_LOAD_COMPLETED"

.field private static final EULA_TIMEOUT_ACTION:Ljava/lang/String; = "com.avira.android.ACTION_EULA_TIMEOUT"

.field static final EULA_WEBVIEW_ATTACHED_ACTION:Ljava/lang/String; = "com.avira.android.ACTION_WEBVIEW_ATTACHED"


# instance fields
.field final synthetic a:Lcom/avira/android/custom/OEMessageDialogFragment;


# direct methods
.method public constructor <init>(Lcom/avira/android/custom/OEMessageDialogFragment;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/avira/android/custom/OEMessageDialogFragment$EulaWebViewEventBroadcastReceiver;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avira.android.ACTION_PAGE_LOAD_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment$EulaWebViewEventBroadcastReceiver;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/OEMessageDialogFragment;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment$EulaWebViewEventBroadcastReceiver;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->a(Lcom/avira/android/custom/OEMessageDialogFragment;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avira.android.ACTION_WEBVIEW_ATTACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avira.android.ACTION_WEBVIEW_DIALOG_ATTACHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/custom/OEMessageDialogFragment$EulaWebViewEventBroadcastReceiver;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-virtual {v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    const v3, 0x7f08014f

    invoke-virtual {v2, v3}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avira.android.ACTION_EULA_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 293
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 296
    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->e()Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ScrollView;->removeAllViews()V

    .line 298
    const v1, 0x7f030079

    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->e()Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 300
    invoke-static {}, Lcom/avira/android/custom/OEMessageDialogFragment;->f()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/avira/android/custom/OEMessageDialogFragment$EulaWebViewEventBroadcastReceiver;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-static {v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->b(Lcom/avira/android/custom/OEMessageDialogFragment;)Lcom/avira/android/custom/n;

    move-result-object v0

    const v1, 0x7f080222

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080223

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
