.class public Lcom/avira/android/sauth/SauthApiIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final NAME:Ljava/lang/String; = "SauthService"

.field private static final TAG:Ljava/lang/String; = "STHAPIINTSRV"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "SauthService"

    invoke-direct {p0, v0}, Lcom/avira/android/sauth/SauthApiIntentService;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/avira/android/sauth/api/b;

    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avira/android/sauth/api/b;-><init>(Landroid/content/Context;Lcom/avira/android/database/f;)V

    .line 51
    new-instance v1, Lcom/avira/android/sauth/api/a;

    invoke-static {}, Lcom/avira/android/common/web/o;->a()Lcom/avira/android/common/web/o;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/avira/android/sauth/api/a;-><init>(Lcom/avira/android/sauth/api/b;Lcom/avira/android/common/web/o;)V

    .line 52
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v2, "STHAPIINTSRV"

    const-string v3, "Sending Sauth Request"

    invoke-static {v2, v3}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Lcom/avira/android/sauth/api/a;->a()Lcom/avira/android/sauth/api/gson/SauthResponseData;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/avira/android/sauth/api/gson/SauthResponseData;->isStatusOk()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v2, "STHAPIINTSRV"

    const-string v3, "Sauth Response OK"

    invoke-static {v2, v3}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Lcom/avira/android/sauth/api/gson/SauthResponseData;->getSauthId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/avira/android/sauth/api/gson/SauthResponseData;->getSauthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v2, v1}, Lcom/avira/android/sauth/api/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    const-string v1, "STHAPIINTSRV"

    const-string v2, "Failed to get Sauth response"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
