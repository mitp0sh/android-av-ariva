.class final Lcom/avira/android/iab/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/iab/models/IABSkuDetails;

.field final synthetic b:Lcom/avira/android/iab/h;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/h;Lcom/avira/android/iab/models/IABSkuDetails;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/avira/android/iab/i;->b:Lcom/avira/android/iab/h;

    iput-object p2, p0, Lcom/avira/android/iab/i;->a:Lcom/avira/android/iab/models/IABSkuDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/avira/android/iab/i;->a:Lcom/avira/android/iab/models/IABSkuDetails;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/avira/android/iab/i;->b:Lcom/avira/android/iab/h;

    iget-object v0, v0, Lcom/avira/android/iab/h;->a:Lcom/avira/android/iab/IABRequestService;

    iget-object v1, p0, Lcom/avira/android/iab/i;->a:Lcom/avira/android/iab/models/IABSkuDetails;

    invoke-static {v0, v1}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;Landroid/os/Parcelable;)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/avira/android/iab/i;->b:Lcom/avira/android/iab/h;

    iget-object v0, v0, Lcom/avira/android/iab/h;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v0}, Lcom/avira/android/iab/IABRequestService;->d(Lcom/avira/android/iab/IABRequestService;)V

    goto :goto_0
.end method
