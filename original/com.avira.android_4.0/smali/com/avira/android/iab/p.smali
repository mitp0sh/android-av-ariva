.class final Lcom/avira/android/iab/p;
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
    .line 795
    iput-object p1, p0, Lcom/avira/android/iab/p;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 802
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/iab/p;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v0}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;)Lcom/avira/android/iab/a/b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/iab/a/b;->b(ZLjava/util/List;)Lcom/avira/android/iab/a/i;

    move-result-object v1

    .line 804
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 805
    sget-object v3, Lcom/avira/android/iab/a/k;->TEST_SKUS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 807
    invoke-virtual {v1, v5}, Lcom/avira/android/iab/a/i;->b(Ljava/lang/String;)Lcom/avira/android/iab/models/IABPurchase;

    move-result-object v5

    .line 808
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/avira/android/iab/models/IABPurchase;->d()I

    move-result v6

    if-nez v6, :cond_0

    .line 810
    invoke-virtual {v5}, Lcom/avira/android/iab/models/IABPurchase;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 805
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "orderIds"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
