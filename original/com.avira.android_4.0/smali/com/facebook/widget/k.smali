.class final Lcom/facebook/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/b/be;


# instance fields
.field final synthetic a:Lcom/facebook/widget/LikeView;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LikeView;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/facebook/widget/k;->a:Lcom/facebook/widget/LikeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LikeView;B)V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lcom/facebook/widget/k;-><init>(Lcom/facebook/widget/LikeView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/widget/k;->b:Z

    .line 679
    return-void
.end method

.method public final a(Lcom/facebook/b/an;)V
    .locals 2

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/facebook/widget/k;->b:Z

    if-eqz v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/k;->a:Lcom/facebook/widget/LikeView;

    # invokes: Lcom/facebook/widget/LikeView;->associateWithLikeActionController(Lcom/facebook/b/an;)V
    invoke-static {v0, p1}, Lcom/facebook/widget/LikeView;->access$1000(Lcom/facebook/widget/LikeView;Lcom/facebook/b/an;)V

    .line 688
    iget-object v0, p0, Lcom/facebook/widget/k;->a:Lcom/facebook/widget/LikeView;

    # invokes: Lcom/facebook/widget/LikeView;->updateLikeStateAndLayout()V
    invoke-static {v0}, Lcom/facebook/widget/LikeView;->access$700(Lcom/facebook/widget/LikeView;)V

    .line 690
    iget-object v0, p0, Lcom/facebook/widget/k;->a:Lcom/facebook/widget/LikeView;

    const/4 v1, 0x0

    # setter for: Lcom/facebook/widget/LikeView;->creationCallback:Lcom/facebook/widget/k;
    invoke-static {v0, v1}, Lcom/facebook/widget/LikeView;->access$1102(Lcom/facebook/widget/LikeView;Lcom/facebook/widget/k;)Lcom/facebook/widget/k;

    goto :goto_0
.end method
