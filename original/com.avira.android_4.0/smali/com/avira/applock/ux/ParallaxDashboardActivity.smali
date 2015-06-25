.class public Lcom/avira/applock/ux/ParallaxDashboardActivity;
.super Lcom/avira/applock/activities/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/avira/applock/common/ux/c;


# instance fields
.field private a:Lcom/avira/applock/common/ux/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/avira/applock/activities/BaseFragmentActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avira/applock/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/applock/common/ux/f;I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avira/applock/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    invoke-virtual {v0, p1, p2}, Lcom/avira/applock/common/ux/e;->a(Lcom/avira/applock/common/ux/f;I)V

    .line 58
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/avira/applock/activities/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/avira/applock/common/ux/e;

    invoke-direct {v0, p0}, Lcom/avira/applock/common/ux/e;-><init>(Lcom/avira/applock/common/ux/c;)V

    iput-object v0, p0, Lcom/avira/applock/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    .line 30
    iget-object v0, p0, Lcom/avira/applock/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    invoke-virtual {v0}, Lcom/avira/applock/common/ux/e;->a()V

    .line 31
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/avira/applock/activities/BaseFragmentActivity;->setContentView(I)V

    .line 37
    iget-object v0, p0, Lcom/avira/applock/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    invoke-virtual {v0}, Lcom/avira/applock/common/ux/e;->b()V

    .line 38
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/avira/applock/activities/BaseFragmentActivity;->setContentView(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/avira/applock/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    invoke-virtual {v0}, Lcom/avira/applock/common/ux/e;->b()V

    .line 45
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/avira/applock/activities/BaseFragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v0, p0, Lcom/avira/applock/ux/ParallaxDashboardActivity;->a:Lcom/avira/applock/common/ux/e;

    invoke-virtual {v0}, Lcom/avira/applock/common/ux/e;->b()V

    .line 52
    return-void
.end method
