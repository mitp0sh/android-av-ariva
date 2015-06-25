.class final Lcom/facebook/widget/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lcom/facebook/widget/z;


# direct methods
.method constructor <init>(Lcom/facebook/widget/z;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/z;

    invoke-static {v0}, Lcom/facebook/widget/z;->a(Lcom/facebook/widget/z;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/z;

    invoke-static {v0}, Lcom/facebook/widget/z;->b(Lcom/facebook/widget/z;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/z;

    invoke-static {v0}, Lcom/facebook/widget/z;->b(Lcom/facebook/widget/z;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/z;

    invoke-static {v0}, Lcom/facebook/widget/z;->b(Lcom/facebook/widget/z;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/z;

    invoke-static {v0}, Lcom/facebook/widget/z;->c(Lcom/facebook/widget/z;)Lcom/facebook/widget/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/ad;->b()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/aa;->a:Lcom/facebook/widget/z;

    invoke-static {v0}, Lcom/facebook/widget/z;->c(Lcom/facebook/widget/z;)Lcom/facebook/widget/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/widget/ad;->a()V

    goto :goto_0
.end method
