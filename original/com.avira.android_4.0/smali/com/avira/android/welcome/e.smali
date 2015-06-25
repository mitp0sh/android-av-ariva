.class final Lcom/avira/android/welcome/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/avira/android/welcome/WelcomeActivityPresenter;


# direct methods
.method constructor <init>(Lcom/avira/android/welcome/WelcomeActivityPresenter;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/avira/android/welcome/e;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/avira/android/welcome/e;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(Lcom/avira/android/welcome/WelcomeActivityPresenter;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 81
    iget-object v0, p0, Lcom/avira/android/welcome/e;->a:Lcom/avira/android/welcome/WelcomeActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->b(Lcom/avira/android/welcome/WelcomeActivityPresenter;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 82
    return-void
.end method
