.class final Lcom/avira/android/f;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 328
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_1

    .line 336
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avira.android.ACTION_POSTDATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    const-string v2, "bundle_data_tag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator;

    .line 338
    if-eqz v0, :cond_0

    .line 340
    const-string v2, "bundle_data_tag"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 342
    :cond_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->B()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    :cond_1
    return-void
.end method
