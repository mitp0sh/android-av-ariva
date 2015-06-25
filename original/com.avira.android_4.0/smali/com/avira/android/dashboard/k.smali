.class final Lcom/avira/android/dashboard/k;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/DashboardActivityPresenter;


# direct methods
.method private constructor <init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V
    .locals 0

    .prologue
    .line 828
    iput-object p1, p0, Lcom/avira/android/dashboard/k;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;B)V
    .locals 0

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/avira/android/dashboard/k;-><init>(Lcom/avira/android/dashboard/DashboardActivityPresenter;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Lcom/avira/android/dashboard/k;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->h(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/userprofile/x;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/dashboard/k;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v1}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->g(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/userprofile/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/userprofile/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/userprofile/x;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 835
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 837
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 838
    iget-object v1, p0, Lcom/avira/android/dashboard/k;->a:Lcom/avira/android/dashboard/DashboardActivityPresenter;

    invoke-static {v1}, Lcom/avira/android/dashboard/DashboardActivityPresenter;->b(Lcom/avira/android/dashboard/DashboardActivityPresenter;)Lcom/avira/android/dashboard/w;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/avira/android/dashboard/w;->a(Landroid/graphics/Bitmap;)V

    .line 840
    :cond_0
    return-void
.end method
