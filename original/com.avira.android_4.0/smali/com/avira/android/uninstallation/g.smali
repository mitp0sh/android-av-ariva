.class final Lcom/avira/android/uninstallation/g;
.super Lcom/avira/android/custom/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/uninstallation/e;


# direct methods
.method constructor <init>(Lcom/avira/android/uninstallation/e;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/avira/android/uninstallation/g;->a:Lcom/avira/android/uninstallation/e;

    invoke-direct {p0}, Lcom/avira/android/custom/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avira/android/uninstallation/g;->a:Lcom/avira/android/uninstallation/e;

    invoke-static {v0}, Lcom/avira/android/uninstallation/e;->b(Lcom/avira/android/uninstallation/e;)Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/deviceadmin/b;->a(Landroid/content/Context;)Z

    .line 108
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 110
    new-instance v1, Lcom/avira/android/uninstallation/h;

    invoke-direct {v1, p0}, Lcom/avira/android/uninstallation/h;-><init>(Lcom/avira/android/uninstallation/g;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 123
    return-void
.end method
