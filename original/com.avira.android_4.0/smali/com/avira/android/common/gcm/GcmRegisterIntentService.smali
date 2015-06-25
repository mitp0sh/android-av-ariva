.class public Lcom/avira/android/common/gcm/GcmRegisterIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "GcmRegisterIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 26
    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v1

    .line 31
    :try_start_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/a;->a(Landroid/content/Context;)Lcom/google/android/gms/c/a;

    move-result-object v0

    .line 33
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "550938343285"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/c/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/avira/android/common/gcm/b;->a(Ljava/lang/String;)Z

    .line 36
    invoke-virtual {v1, v0}, Lcom/avira/android/common/gcm/b;->c(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/avira/android/common/web/d;->a()Lcom/avira/android/common/web/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/common/web/d;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 42
    const-string v2, ""

    invoke-static {v2}, Lcom/avira/android/common/gcm/b;->a(Ljava/lang/String;)Z

    .line 43
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avira/android/common/gcm/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
