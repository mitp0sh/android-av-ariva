.class final Lcom/avira/android/ux/c;
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
    .line 186
    iput-object p1, p0, Lcom/avira/android/ux/c;->c:Lcom/avira/android/ux/a;

    iput-object p2, p0, Lcom/avira/android/ux/c;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/avira/android/ux/c;->b:Landroid/view/animation/AnimationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/avira/android/ux/c;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/avira/android/ux/c;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 197
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method
