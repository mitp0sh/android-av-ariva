.class final Lcom/avira/android/welcome/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/web/a;


# instance fields
.field final synthetic a:Lcom/avira/android/welcome/WelcomeActivityPresenter;


# direct methods
.method constructor <init>(Lcom/avira/android/welcome/WelcomeActivityPresenter;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/avira/android/welcome/g;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/applock/common/web/HttpErrorResponse;)V
    .locals 2

    .prologue
    .line 363
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "auto login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/avira/applock/common/web/HttpErrorResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/avira/android/welcome/g;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Lcom/avira/android/welcome/WelcomeActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    const-string v1, "prefs_token"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/avira/android/welcome/g;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Lcom/avira/android/welcome/WelcomeActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    const-string v1, "user_auto_logged_in"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/avira/android/utilities/ad;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 347
    invoke-static {}, Lcom/avira/android/registration/j;->a()Lcom/avira/android/registration/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/j;->c()V

    .line 351
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avira/android/antitheft/a;->a(Z)V

    .line 353
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/avira/android/i;->ACTION_LOGIN_OK:Lcom/avira/android/i;

    invoke-virtual {v2}, Lcom/avira/android/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    invoke-static {}, Lcom/avira/android/common/gcm/b;->a()Lcom/avira/android/common/gcm/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/common/gcm/b;->b()V

    .line 357
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 358
    return-void
.end method
