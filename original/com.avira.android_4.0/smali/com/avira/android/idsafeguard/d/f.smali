.class final Lcom/avira/android/idsafeguard/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/avira/android/idsafeguard/d/b;


# direct methods
.method constructor <init>(Lcom/avira/android/idsafeguard/d/b;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/avira/android/idsafeguard/d/f;->c:Lcom/avira/android/idsafeguard/d/b;

    iput-object p2, p0, Lcom/avira/android/idsafeguard/d/f;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/avira/android/idsafeguard/d/f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 292
    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/f;->c:Lcom/avira/android/idsafeguard/d/b;

    invoke-static {v0}, Lcom/avira/android/idsafeguard/d/b;->a(Lcom/avira/android/idsafeguard/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 296
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 297
    iget-object v1, p0, Lcom/avira/android/idsafeguard/d/f;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/f;->c:Lcom/avira/android/idsafeguard/d/b;

    iget-boolean v1, p0, Lcom/avira/android/idsafeguard/d/f;->b:Z

    iget-object v2, p0, Lcom/avira/android/idsafeguard/d/f;->a:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/avira/android/idsafeguard/d/b;->a(Lcom/avira/android/idsafeguard/d/b;ZLandroid/view/View;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/avira/android/idsafeguard/d/f;->c:Lcom/avira/android/idsafeguard/d/b;

    invoke-static {}, Lcom/avira/android/idsafeguard/d/b;->a()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/avira/android/idsafeguard/d/f;->a:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/avira/android/idsafeguard/d/b;->a(Lcom/avira/android/idsafeguard/d/b;FLandroid/view/View;)V

    .line 303
    return-void
.end method
