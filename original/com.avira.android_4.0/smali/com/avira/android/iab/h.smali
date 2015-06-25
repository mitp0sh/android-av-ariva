.class final Lcom/avira/android/iab/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/iab/IABRequestService;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/IABRequestService;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/avira/android/iab/h;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    sget-object v1, Lcom/avira/android/iab/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/avira/android/iab/h;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v1}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;)Lcom/avira/android/iab/a/b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/avira/android/iab/a/b;->b(ZLjava/util/List;)Lcom/avira/android/iab/a/i;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/avira/android/iab/h;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v1, v0}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;Lcom/avira/android/iab/a/i;)Lcom/avira/android/iab/models/IABSkuDetails;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/avira/android/iab/h;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v1}, Lcom/avira/android/iab/IABRequestService;->c(Lcom/avira/android/iab/IABRequestService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/avira/android/iab/i;

    invoke-direct {v2, p0, v0}, Lcom/avira/android/iab/i;-><init>(Lcom/avira/android/iab/h;Lcom/avira/android/iab/models/IABSkuDetails;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 337
    iget-object v1, p0, Lcom/avira/android/iab/h;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v1}, Lcom/avira/android/iab/IABRequestService;->c(Lcom/avira/android/iab/IABRequestService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/avira/android/iab/j;

    invoke-direct {v2, p0}, Lcom/avira/android/iab/j;-><init>(Lcom/avira/android/iab/h;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    invoke-static {}, Lcom/avira/android/iab/IABRequestService;->b()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
