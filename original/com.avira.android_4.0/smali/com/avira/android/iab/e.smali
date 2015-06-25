.class final Lcom/avira/android/iab/e;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/iab/IABPurchaseActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/IABPurchaseActivity;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/avira/android/iab/e;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 277
    invoke-static {}, Lcom/avira/android/iab/IABPurchaseActivity;->a()Ljava/lang/String;

    .line 279
    const-string v0, "error_code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 280
    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/avira/android/iab/e;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v0}, Lcom/avira/android/iab/IABPurchaseActivity;->f(Lcom/avira/android/iab/IABPurchaseActivity;)V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/avira/android/iab/e;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v0}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/iab/e;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v1}, Lcom/avira/android/iab/IABPurchaseActivity;->b(Lcom/avira/android/iab/IABPurchaseActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 311
    return-void

    .line 285
    :cond_0
    const/4 v1, -0x6

    if-ne v0, v1, :cond_1

    .line 289
    invoke-static {}, Lcom/avira/android/iab/IABPurchaseActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recevied Error: Purchase flow is denied, product is already bought, waiting for restore request to finish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/iab/e;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    iget-object v1, p0, Lcom/avira/android/iab/e;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-virtual {v1}, Lcom/avira/android/iab/IABPurchaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/iab/IABPurchaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    iget-object v0, p0, Lcom/avira/android/iab/e;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-virtual {v0}, Lcom/avira/android/iab/IABPurchaseActivity;->finish()V

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    invoke-static {}, Lcom/avira/android/iab/IABPurchaseActivity;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caught exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/avira/android/iab/e;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v1, v0}, Lcom/avira/android/iab/IABPurchaseActivity;->a(Lcom/avira/android/iab/IABPurchaseActivity;I)V

    goto :goto_0
.end method
