.class final Lcom/avira/android/iab/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/iab/models/IABRequest;

.field final synthetic b:Lcom/avira/android/iab/IABRequestService;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/IABRequestService;Lcom/avira/android/iab/models/IABRequest;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/avira/android/iab/f;->b:Lcom/avira/android/iab/IABRequestService;

    iput-object p2, p0, Lcom/avira/android/iab/f;->a:Lcom/avira/android/iab/models/IABRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/avira/android/iab/f;->b:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v0}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;)Lcom/avira/android/iab/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/avira/android/iab/f;->b:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v0}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;)Lcom/avira/android/iab/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/iab/a/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/iab/f;->b:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v0}, Lcom/avira/android/iab/IABRequestService;->b(Lcom/avira/android/iab/IABRequestService;)Lcom/avira/android/iab/models/IABRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/avira/android/iab/IABRequestService;->b()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Waiting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/avira/android/iab/f;->b:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v1}, Lcom/avira/android/iab/IABRequestService;->b(Lcom/avira/android/iab/IABRequestService;)Lcom/avira/android/iab/models/IABRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isBussy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/iab/f;->b:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v1}, Lcom/avira/android/iab/IABRequestService;->a(Lcom/avira/android/iab/IABRequestService;)Lcom/avira/android/iab/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/iab/a/b;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/avira/android/iab/f;->b:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v0}, Lcom/avira/android/iab/IABRequestService;->c(Lcom/avira/android/iab/IABRequestService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/avira/android/iab/g;

    invoke-direct {v1, p0}, Lcom/avira/android/iab/g;-><init>(Lcom/avira/android/iab/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method
