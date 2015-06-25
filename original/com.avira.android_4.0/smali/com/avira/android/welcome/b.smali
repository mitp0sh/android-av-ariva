.class final Lcom/avira/android/welcome/b;
.super Landroid/support/v4/view/bz;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/welcome/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/welcome/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/avira/android/welcome/b;->a:Lcom/avira/android/welcome/WelcomeActivity;

    invoke-direct {p0}, Landroid/support/v4/view/bz;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avira/android/welcome/b;->a:Lcom/avira/android/welcome/WelcomeActivity;

    invoke-static {v0}, Lcom/avira/android/welcome/WelcomeActivity;->a(Lcom/avira/android/welcome/WelcomeActivity;)Lcom/avira/android/welcome/WelcomeActivityPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avira/android/welcome/WelcomeActivityPresenter;->a(I)V

    .line 63
    return-void
.end method
