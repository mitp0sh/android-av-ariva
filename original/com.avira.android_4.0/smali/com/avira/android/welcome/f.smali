.class final Lcom/avira/android/welcome/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/utilities/y;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/avira/android/welcome/WelcomeActivityPresenter;


# direct methods
.method constructor <init>(Lcom/avira/android/welcome/WelcomeActivityPresenter;Z)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/avira/android/welcome/f;->b:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    iput-boolean p2, p0, Lcom/avira/android/welcome/f;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/avira/android/welcome/f;->a:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/avira/android/welcome/f;->b:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    sget-object v1, Lcom/avira/android/i;->ACTION_SHOW_LOGIN:Lcom/avira/android/i;

    invoke-static {v0, v1}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Lcom/avira/android/welcome/WelcomeActivityPresenter;Lcom/avira/android/i;)V

    .line 230
    :goto_0
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 232
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/avira/android/welcome/f;->b:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    sget-object v1, Lcom/avira/android/i;->ACTION_SHOW_CREATE_ACCOUNT:Lcom/avira/android/i;

    invoke-static {v0, v1}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Lcom/avira/android/welcome/WelcomeActivityPresenter;Lcom/avira/android/i;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 237
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->i()V

    .line 244
    :try_start_0
    new-instance v0, Lcom/avira/applock/common/a/a;

    iget-object v1, p0, Lcom/avira/android/welcome/f;->b:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-static {v1}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->c(Lcom/avira/android/welcome/WelcomeActivityPresenter;)Lcom/avira/android/welcome/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/avira/android/welcome/a;->a()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v1

    const v2, 0x7f080159

    invoke-virtual {v1, v2}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/welcome/f;->b:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-static {v2}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Lcom/avira/android/welcome/WelcomeActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v2

    const v3, 0x7f080157

    invoke-virtual {v2, v3}, Lcom/avira/android/custom/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/avira/applock/common/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;B)V

    iget-object v1, p0, Lcom/avira/android/welcome/f;->b:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-static {v1}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Lcom/avira/android/welcome/WelcomeActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/custom/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/avira/applock/common/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 251
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    invoke-static {}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
