.class final Lcom/avira/android/uninstallation/h;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/uninstallation/g;


# direct methods
.method constructor <init>(Lcom/avira/android/uninstallation/g;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/avira/android/uninstallation/h;->a:Lcom/avira/android/uninstallation/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/avira/android/uninstallation/h;->a:Lcom/avira/android/uninstallation/g;

    iget-object v0, v0, Lcom/avira/android/uninstallation/g;->a:Lcom/avira/android/uninstallation/e;

    invoke-static {v0}, Lcom/avira/android/uninstallation/e;->c(Lcom/avira/android/uninstallation/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 121
    return-void
.end method
