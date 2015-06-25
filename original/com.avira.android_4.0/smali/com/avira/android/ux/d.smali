.class final Lcom/avira/android/ux/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/avira/android/ux/a;


# direct methods
.method constructor <init>(Lcom/avira/android/ux/a;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/avira/android/ux/d;->b:Lcom/avira/android/ux/a;

    iput-object p2, p0, Lcom/avira/android/ux/d;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 224
    iget-object v0, p0, Lcom/avira/android/ux/d;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/avira/android/ux/d;->b:Lcom/avira/android/ux/a;

    invoke-static {v0}, Lcom/avira/android/ux/a;->b(Lcom/avira/android/ux/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/avira/android/ux/d;->b:Lcom/avira/android/ux/a;

    invoke-static {v0}, Lcom/avira/android/ux/a;->a(Lcom/avira/android/ux/a;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/avira/android/ux/d;->b:Lcom/avira/android/ux/a;

    invoke-static {v0}, Lcom/avira/android/ux/a;->a(Lcom/avira/android/ux/a;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 232
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method
