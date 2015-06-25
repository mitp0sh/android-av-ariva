.class final Lcom/avira/android/iab/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/iab/IABPurchaseActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/IABPurchaseActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/avira/android/iab/d;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Lcom/avira/android/iab/IABPurchaseActivity;->a()Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/avira/android/iab/d;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v0}, Lcom/avira/android/iab/IABPurchaseActivity;->d(Lcom/avira/android/iab/IABPurchaseActivity;)Z

    .line 257
    const-string v0, "error_code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 258
    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/avira/android/premium/b;->a(Z)Z

    .line 261
    iget-object v0, p0, Lcom/avira/android/iab/d;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v0}, Lcom/avira/android/iab/IABPurchaseActivity;->e(Lcom/avira/android/iab/IABPurchaseActivity;)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/avira/android/iab/d;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/iab/d;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v1}, Lcom/avira/android/iab/IABPurchaseActivity;->c(Lcom/avira/android/iab/IABPurchaseActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 269
    return-void

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/avira/android/iab/d;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v1, v0}, Lcom/avira/android/iab/IABPurchaseActivity;->a(Lcom/avira/android/iab/IABPurchaseActivity;I)V

    goto :goto_0
.end method
