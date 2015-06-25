.class final Lcom/avira/android/iab/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/avira/android/iab/IABPurchaseActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/IABPurchaseActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/avira/android/iab/c;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 206
    invoke-static {}, Lcom/avira/android/iab/IABPurchaseActivity;->a()Ljava/lang/String;

    .line 208
    check-cast p2, Lcom/avira/android/iab/r;

    .line 209
    iget-object v0, p0, Lcom/avira/android/iab/c;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-virtual {p2}, Lcom/avira/android/iab/r;->a()Lcom/avira/android/iab/IABRequestService;

    move-result-object v1

    iput-object v1, v0, Lcom/avira/android/iab/IABPurchaseActivity;->a:Lcom/avira/android/iab/IABRequestService;

    .line 210
    iget-object v0, p0, Lcom/avira/android/iab/c;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/avira/android/iab/IABPurchaseActivity;->b:Z

    .line 212
    iget-object v0, p0, Lcom/avira/android/iab/c;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v0}, Lcom/avira/android/iab/IABPurchaseActivity;->a(Lcom/avira/android/iab/IABPurchaseActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/avira/android/iab/models/IABRequest;

    sget-object v1, Lcom/avira/android/iab/models/d;->SEND_REQUEST:Lcom/avira/android/iab/models/d;

    invoke-direct {v0, v1}, Lcom/avira/android/iab/models/IABRequest;-><init>(Lcom/avira/android/iab/models/d;)V

    .line 220
    iget-object v1, p0, Lcom/avira/android/iab/c;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v1}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/iab/c;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v2}, Lcom/avira/android/iab/IABPurchaseActivity;->b(Lcom/avira/android/iab/IABPurchaseActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-virtual {v0}, Lcom/avira/android/iab/models/IABRequest;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 223
    iget-object v1, p0, Lcom/avira/android/iab/c;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v1}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/iab/c;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    invoke-static {v2}, Lcom/avira/android/iab/IABPurchaseActivity;->c(Lcom/avira/android/iab/IABPurchaseActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "IABPurchaseFinished"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 225
    iget-object v1, p0, Lcom/avira/android/iab/c;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    iget-object v1, v1, Lcom/avira/android/iab/IABPurchaseActivity;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-virtual {v1, v0}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/models/IABRequest;)V

    .line 228
    :cond_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lcom/avira/android/iab/IABPurchaseActivity;->a()Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/avira/android/iab/c;->a:Lcom/avira/android/iab/IABPurchaseActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/avira/android/iab/IABPurchaseActivity;->b:Z

    .line 235
    return-void
.end method
