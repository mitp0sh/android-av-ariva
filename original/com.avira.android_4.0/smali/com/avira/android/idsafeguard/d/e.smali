.class final Lcom/avira/android/idsafeguard/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/avira/android/idsafeguard/d/b;


# direct methods
.method constructor <init>(Lcom/avira/android/idsafeguard/d/b;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/avira/android/idsafeguard/d/e;->c:Lcom/avira/android/idsafeguard/d/b;

    iput-boolean p2, p0, Lcom/avira/android/idsafeguard/d/e;->a:Z

    iput-object p3, p0, Lcom/avira/android/idsafeguard/d/e;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/e;->c:Lcom/avira/android/idsafeguard/d/b;

    invoke-static {}, Lcom/avira/android/idsafeguard/d/b;->a()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/avira/android/idsafeguard/d/e;->b:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/avira/android/idsafeguard/d/b;->a(Lcom/avira/android/idsafeguard/d/b;FLandroid/view/View;)V

    .line 273
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/e;->c:Lcom/avira/android/idsafeguard/d/b;

    invoke-static {v0}, Lcom/avira/android/idsafeguard/d/b;->a(Lcom/avira/android/idsafeguard/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/e;->c:Lcom/avira/android/idsafeguard/d/b;

    iget-boolean v1, p0, Lcom/avira/android/idsafeguard/d/e;->a:Z

    iget-object v2, p0, Lcom/avira/android/idsafeguard/d/e;->b:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/avira/android/idsafeguard/d/b;->a(Lcom/avira/android/idsafeguard/d/b;ZLandroid/view/View;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/e;->c:Lcom/avira/android/idsafeguard/d/b;

    invoke-static {}, Lcom/avira/android/idsafeguard/d/b;->a()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/avira/android/idsafeguard/d/e;->b:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/avira/android/idsafeguard/d/b;->a(Lcom/avira/android/idsafeguard/d/b;FLandroid/view/View;)V

    .line 267
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method
