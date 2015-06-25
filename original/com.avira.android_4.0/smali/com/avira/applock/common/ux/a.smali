.class final Lcom/avira/applock/common/ux/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/applock/common/ux/ElasticScrollView;


# direct methods
.method constructor <init>(Lcom/avira/applock/common/ux/ElasticScrollView;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/avira/applock/common/ux/a;->a:Lcom/avira/applock/common/ux/ElasticScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avira/applock/common/ux/a;->a:Lcom/avira/applock/common/ux/ElasticScrollView;

    # getter for: Lcom/avira/applock/common/ux/ElasticScrollView;->mIsTouched:Z
    invoke-static {v0}, Lcom/avira/applock/common/ux/ElasticScrollView;->access$000(Lcom/avira/applock/common/ux/ElasticScrollView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/avira/applock/common/ux/a;->a:Lcom/avira/applock/common/ux/ElasticScrollView;

    iget-object v1, p0, Lcom/avira/applock/common/ux/a;->a:Lcom/avira/applock/common/ux/ElasticScrollView;

    invoke-virtual {v1}, Lcom/avira/applock/common/ux/ElasticScrollView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/avira/applock/common/ux/a;->a:Lcom/avira/applock/common/ux/ElasticScrollView;

    # getter for: Lcom/avira/applock/common/ux/ElasticScrollView;->mBounceBackHackTargetPosition:I
    invoke-static {v2}, Lcom/avira/applock/common/ux/ElasticScrollView;->access$100(Lcom/avira/applock/common/ux/ElasticScrollView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/applock/common/ux/ElasticScrollView;->smoothScrollTo(II)V

    .line 48
    :cond_0
    return-void
.end method
