.class final Lcom/avira/android/custom/k;
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
    .line 392
    iput-object p1, p0, Lcom/avira/android/custom/k;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avira/android/custom/k;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-virtual {v1}, Lcom/avira/android/custom/OEMessageDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/avira/android/license/ThirdPartyLicenseActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    iget-object v1, p0, Lcom/avira/android/custom/k;->a:Lcom/avira/android/custom/OEMessageDialogFragment;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/OEMessageDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 399
    return-void
.end method
