.class final Lcom/avira/android/iab/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/iab/IABPremiumLandingActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/IABPremiumLandingActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/avira/android/iab/b;->a:Lcom/avira/android/iab/IABPremiumLandingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    const-string v1, "7.95 euro"

    .line 86
    const-string v0, "error_code"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 87
    if-nez v0, :cond_0

    .line 89
    const-string v0, "result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/iab/models/IABSkuDetails;

    .line 90
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/avira/android/iab/models/IABSkuDetails;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/avira/android/iab/b;->a:Lcom/avira/android/iab/IABPremiumLandingActivity;

    const v2, 0x7f0e0132

    invoke-virtual {v0, v2}, Lcom/avira/android/iab/IABPremiumLandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    iget-object v2, p0, Lcom/avira/android/iab/b;->a:Lcom/avira/android/iab/IABPremiumLandingActivity;

    const v3, 0x7f080352

    invoke-virtual {v2, v3}, Lcom/avira/android/iab/IABPremiumLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/avira/android/iab/b;->a:Lcom/avira/android/iab/IABPremiumLandingActivity;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/iab/b;->a:Lcom/avira/android/iab/IABPremiumLandingActivity;

    invoke-static {v1}, Lcom/avira/android/iab/IABPremiumLandingActivity;->a(Lcom/avira/android/iab/IABPremiumLandingActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method
