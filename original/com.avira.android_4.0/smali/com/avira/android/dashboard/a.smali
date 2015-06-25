.class final Lcom/avira/android/dashboard/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/avira/applock/common/ux/ParallaxDashboard;

.field final synthetic c:Lcom/avira/android/dashboard/DashboardActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/dashboard/DashboardActivity;Landroid/view/ViewGroup;Lcom/avira/applock/common/ux/ParallaxDashboard;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/avira/android/dashboard/a;->c:Lcom/avira/android/dashboard/DashboardActivity;

    iput-object p2, p0, Lcom/avira/android/dashboard/a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/avira/android/dashboard/a;->b:Lcom/avira/applock/common/ux/ParallaxDashboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .prologue
    .line 223
    iget-object v0, p0, Lcom/avira/android/dashboard/a;->c:Lcom/avira/android/dashboard/DashboardActivity;

    iget-object v0, p0, Lcom/avira/android/dashboard/a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/avira/android/dashboard/DashboardActivity;->a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 225
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 226
    iget-object v1, p0, Lcom/avira/android/dashboard/a;->c:Lcom/avira/android/dashboard/DashboardActivity;

    invoke-virtual {v1}, Lcom/avira/android/dashboard/DashboardActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 227
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 229
    iget-object v1, p0, Lcom/avira/android/dashboard/a;->c:Lcom/avira/android/dashboard/DashboardActivity;

    invoke-static {v1}, Lcom/avira/android/dashboard/DashboardActivity;->a(Lcom/avira/android/dashboard/DashboardActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    new-instance v1, Lcom/avira/android/ux/a;

    iget-object v2, p0, Lcom/avira/android/dashboard/a;->a:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/avira/android/dashboard/a;->b:Lcom/avira/applock/common/ux/ParallaxDashboard;

    iget-object v4, p0, Lcom/avira/android/dashboard/a;->c:Lcom/avira/android/dashboard/DashboardActivity;

    invoke-static {v4}, Lcom/avira/android/dashboard/DashboardActivity;->b(Lcom/avira/android/dashboard/DashboardActivity;)I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/avira/android/dashboard/a;->c:Lcom/avira/android/dashboard/DashboardActivity;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/avira/android/ux/a;-><init>(Landroid/view/ViewGroup;Lcom/avira/applock/common/ux/ParallaxDashboard;ILandroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1}, Lcom/avira/android/ux/a;->a()V

    .line 234
    :cond_0
    return-void
.end method
