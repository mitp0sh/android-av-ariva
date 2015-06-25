.class public final Lcom/avira/android/dashboard/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/avira/android/dashboard/z;

.field private final b:Lcom/avira/android/custom/BaseFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/avira/android/dashboard/z;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/avira/android/dashboard/v;->a:Lcom/avira/android/dashboard/z;

    .line 28
    invoke-interface {p1}, Lcom/avira/android/dashboard/z;->d()Lcom/avira/android/custom/BaseFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/dashboard/v;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    .line 29
    invoke-direct {p0}, Lcom/avira/android/dashboard/v;->f()V

    .line 30
    iget-object v0, p0, Lcom/avira/android/dashboard/v;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    const v1, 0x7f0e00fc

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-boolean v0, Lcom/avira/android/debug/f;->ENABLED:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    return-void

    .line 30
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Lcom/avira/android/dashboard/v;->a:Lcom/avira/android/dashboard/z;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08027e

    :goto_0
    invoke-interface {v1, v0}, Lcom/avira/android/dashboard/z;->a(I)V

    .line 37
    return-void

    .line 35
    :cond_0
    const v0, 0x7f08027f

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/avira/android/dashboard/v;->f()V

    .line 50
    invoke-static {}, Lcom/avira/android/securebrowsing/c/aa;->a()Z

    iget-object v0, p0, Lcom/avira/android/dashboard/v;->a:Lcom/avira/android/dashboard/z;

    invoke-interface {v0}, Lcom/avira/android/dashboard/z;->a()V

    iget-object v0, p0, Lcom/avira/android/dashboard/v;->a:Lcom/avira/android/dashboard/z;

    invoke-static {}, Lcom/avira/android/premium/b;->a()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/avira/android/dashboard/z;->a(Z)V

    .line 51
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avira/android/dashboard/v;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-static {v0}, Lcom/avira/android/dashboard/DashboardDeviceAdministratorActivity;->a(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/debug/DebuggingPreferencesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    iget-object v1, p0, Lcom/avira/android/dashboard/v;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avira/android/dashboard/v;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/avira/android/custom/BaseFragmentActivity;->finish()V

    .line 76
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const-class v2, Lcom/avira/android/dashboard/DashboardSecureBrowsingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    iget-object v1, p0, Lcom/avira/android/dashboard/v;->b:Lcom/avira/android/custom/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/avira/android/custom/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method
