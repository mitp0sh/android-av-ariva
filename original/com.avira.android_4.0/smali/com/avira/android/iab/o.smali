.class final Lcom/avira/android/iab/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/web/a;


# instance fields
.field final synthetic a:Lcom/avira/android/iab/IABRequestService;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/IABRequestService;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/avira/android/iab/o;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/applock/common/web/HttpErrorResponse;)V
    .locals 2

    .prologue
    .line 543
    invoke-static {}, Lcom/avira/android/iab/IABRequestService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IAB Server Error"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/avira/applock/common/web/HttpErrorResponse;->errorCode:I

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/avira/android/iab/o;->a:Lcom/avira/android/iab/IABRequestService;

    iget v1, p1, Lcom/avira/applock/common/web/HttpErrorResponse;->errorCode:I

    invoke-static {v0, v1}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;I)V

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/avira/android/iab/o;->a:Lcom/avira/android/iab/IABRequestService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;I)V

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 522
    invoke-static {}, Lcom/avira/android/iab/IABRequestService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    const-string v0, "subscription"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_0

    const-string v1, "enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/avira/android/iab/o;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v0, p1}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;Lorg/json/JSONObject;)V

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    invoke-static {v3}, Lcom/avira/android/premium/b;->a(Z)Z

    .line 529
    sput-boolean v3, Lcom/avira/android/iab/a/k;->c:Z

    .line 530
    iget-object v0, p0, Lcom/avira/android/iab/o;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v0}, Lcom/avira/android/iab/IABRequestService;->e(Lcom/avira/android/iab/IABRequestService;)V

    .line 531
    iget-object v0, p0, Lcom/avira/android/iab/o;->a:Lcom/avira/android/iab/IABRequestService;

    new-instance v1, Lcom/avira/android/iab/models/IABResponse;

    const-string v2, "purchase success"

    invoke-direct {v1, v2}, Lcom/avira/android/iab/models/IABResponse;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;Landroid/os/Parcelable;)V

    .line 532
    invoke-static {}, Lcom/avira/android/b;->a()Lcom/avira/android/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/avira/android/b;->a(I)V

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/avira/android/iab/o;->a:Lcom/avira/android/iab/IABRequestService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;I)V

    goto :goto_0
.end method
