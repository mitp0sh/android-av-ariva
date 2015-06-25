.class final Lcom/avira/android/ux/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/animation/AnimationSet;

.field final synthetic c:Lcom/avira/android/ux/a;


# direct methods
.method constructor <init>(Lcom/avira/android/ux/a;Landroid/view/View;Landroid/view/animation/AnimationSet;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/avira/android/ux/b;->c:Lcom/avira/android/ux/a;

    iput-object p2, p0, Lcom/avira/android/ux/b;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/avira/android/ux/b;->b:Landroid/view/animation/AnimationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/avira/android/ux/b;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/avira/android/ux/b;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/avira/android/ux/b;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/avira/android/ux/b;->c:Lcom/avira/android/ux/a;

    invoke-static {v0}, Lcom/avira/android/ux/a;->a(Lcom/avira/android/ux/a;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/avira/android/ux/b;->c:Lcom/avira/android/ux/a;

    invoke-static {v0}, Lcom/avira/android/ux/a;->a(Lcom/avira/android/ux/a;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 171
    :cond_0
    return-void
.end method
