.class final Lcom/avira/android/iab/k;
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
    .line 357
    iput-object p1, p0, Lcom/avira/android/iab/k;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/iab/k;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v0}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;)Lcom/avira/android/iab/a/b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/iab/a/b;->b(ZLjava/util/List;)Lcom/avira/android/iab/a/i;

    move-result-object v0

    .line 366
    sget-object v1, Lcom/avira/android/iab/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avira/android/iab/a/i;->b(Ljava/lang/String;)Lcom/avira/android/iab/models/IABPurchase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/iab/models/IABPurchase;->d()I

    move-result v0

    if-nez v0, :cond_0

    .line 368
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avira/android/iab/a/k;->c:Z

    .line 369
    iget-object v0, p0, Lcom/avira/android/iab/k;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v0}, Lcom/avira/android/iab/IABRequestService;->c(Lcom/avira/android/iab/IABRequestService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/avira/android/iab/l;

    invoke-direct {v1, p0}, Lcom/avira/android/iab/l;-><init>(Lcom/avira/android/iab/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    :goto_0
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avira/android/iab/a/k;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 388
    sput-boolean v3, Lcom/avira/android/iab/a/k;->c:Z

    .line 389
    iget-object v1, p0, Lcom/avira/android/iab/k;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v1}, Lcom/avira/android/iab/IABRequestService;->c(Lcom/avira/android/iab/IABRequestService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/avira/android/iab/m;

    invoke-direct {v2, p0}, Lcom/avira/android/iab/m;-><init>(Lcom/avira/android/iab/k;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    invoke-static {}, Lcom/avira/android/iab/IABRequestService;->b()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
