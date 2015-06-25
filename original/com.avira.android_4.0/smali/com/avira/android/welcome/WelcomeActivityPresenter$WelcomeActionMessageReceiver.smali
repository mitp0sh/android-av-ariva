.class public Lcom/avira/android/welcome/WelcomeActivityPresenter$WelcomeActionMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION_SIGNAL_WELCOME_EXIT:Ljava/lang/String; = "com.avira.android.welcome.ACTION_SIGNAL_WELCOME_EXIT"


# instance fields
.field final synthetic a:Lcom/avira/android/welcome/WelcomeActivityPresenter;


# direct methods
.method public constructor <init>(Lcom/avira/android/welcome/WelcomeActivityPresenter;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter$WelcomeActionMessageReceiver;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avira.android.welcome.ACTION_SIGNAL_WELCOME_EXIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/avira/android/welcome/WelcomeActivityPresenter$WelcomeActionMessageReceiver;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Lcom/avira/android/welcome/WelcomeActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 422
    :cond_0
    return-void
.end method
