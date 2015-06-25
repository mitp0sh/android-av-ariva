.class public Lcom/avira/android/ux/ParallaxDashboardActivity;
.super Lcom/avira/android/custom/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/ux/c;


# instance fields
.field private a:Lcom/avira/applock/common/ux/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avira/android/custom/BaseFragmentActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/android/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/applock/common/ux/f;I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avira/android/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    invoke-virtual {v0, p1, p2}, Lcom/avira/applock/common/ux/e;->a(Lcom/avira/applock/common/ux/f;I)V

    .line 59
    return-void
.end method

.method protected final i()Lcom/avira/applock/common/ux/ParallaxDashboard;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/avira/android/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    invoke-virtual {v0}, Lcom/avira/applock/common/ux/e;->c()Lcom/avira/applock/common/ux/ParallaxDashboard;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lcom/avira/applock/common/ux/e;

    invoke-direct {v0, p0}, Lcom/avira/applock/common/ux/e;-><init>(Lcom/avira/applock/common/ux/c;)V

    iput-object v0, p0, Lcom/avira/android/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    .line 31
    iget-object v0, p0, Lcom/avira/android/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    invoke-virtual {v0}, Lcom/avira/applock/common/ux/e;->a()V

    .line 32
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->setContentView(I)V

    .line 38
    iget-object v0, p0, Lcom/avira/android/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    invoke-virtual {v0}, Lcom/avira/applock/common/ux/e;->b()V

    .line 39
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/avira/android/custom/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/avira/android/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    invoke-virtual {v0}, Lcom/avira/applock/common/ux/e;->b()V

    .line 46
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/avira/android/custom/BaseFragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p0, Lcom/avira/android/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    invoke-virtual {v0}, Lcom/avira/applock/common/ux/e;->b()V

    .line 53
    return-void
.end method
