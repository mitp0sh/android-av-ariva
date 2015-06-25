.class final Lcom/avira/android/googleconnect/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/web/a;


# instance fields
.field final synthetic a:Lcom/avira/android/googleconnect/GoogleConnectActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/googleconnect/GoogleConnectActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/avira/android/googleconnect/b;->a:Lcom/avira/android/googleconnect/GoogleConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/applock/common/web/HttpErrorResponse;)V
    .locals 8

    .prologue
    .line 82
    invoke-static {}, Lcom/avira/android/googleconnect/GoogleConnectActivity;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "google login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/avira/applock/common/web/HttpErrorResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/googleconnect/b;->a:Lcom/avira/android/googleconnect/GoogleConnectActivity;

    invoke-virtual {v1}, Lcom/avira/android/googleconnect/GoogleConnectActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "Bubu"

    const-string v3, "bubu"

    const-string v4, "bubu"

    sget-object v5, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    sget-object v6, Lcom/avira/android/custom/aa;->InfoIcon:Lcom/avira/android/custom/aa;

    const/4 v6, 0x0

    sget-object v7, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    invoke-virtual/range {v0 .. v7}, Lcom/avira/android/ApplicationService;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/custom/x;ZLcom/avira/android/custom/z;)V

    .line 85
    iget-object v0, p0, Lcom/avira/android/googleconnect/b;->a:Lcom/avira/android/googleconnect/GoogleConnectActivity;

    invoke-static {v0}, Lcom/avira/android/googleconnect/GoogleConnectActivity;->a(Lcom/avira/android/googleconnect/GoogleConnectActivity;)V

    .line 87
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/avira/android/googleconnect/GoogleConnectActivity;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response for google login is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->c()V

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avira/android/antitheft/a;->a(Z)V

    .line 74
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/avira/android/i;->ACTION_LOGIN_OK:Lcom/avira/android/i;

    invoke-virtual {v2}, Lcom/avira/android/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    return-void
.end method
