.class final Lcom/avira/android/custom/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/custom/OEMessageDialogFragment;


# direct methods
.method constructor <init>(Lcom/avira/android/custom/OEMessageDialogFragment;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/avira/android/custom/j;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 379
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    .line 380
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/custom/j;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-virtual {v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v3, 0x7f080130

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avira/android/custom/j;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    const v5, 0x7f0800ba

    invoke-virtual {v4, v5}, Lcom/avira/android/custom/OEMessageDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/avira/android/custom/j;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    const v6, 0x7f0800c3

    invoke-virtual {v5, v6}, Lcom/avira/android/custom/OEMessageDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/avira/android/utilities/ak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/avira/android/custom/x;->CloseButton:Lcom/avira/android/custom/x;

    const/4 v6, 0x0

    sget-object v7, Lcom/avira/android/custom/z;->WebviewContent:Lcom/avira/android/custom/z;

    invoke-virtual/range {v0 .. v7}, Lcom/avira/android/ApplicationService;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)V

    .line 387
    return-void
.end method
