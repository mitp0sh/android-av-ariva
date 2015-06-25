.class public final Lcom/avira/applock/common/ux/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;

.field private b:[I

.field private c:Lcom/avira/applock/common/ux/ParallaxDashboard;


# direct methods
.method public constructor <init>(Lcom/avira/applock/common/ux/c;)V
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/avira/applock/common/ux/f;->values()[Lcom/avira/applock/common/ux/f;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/avira/applock/common/ux/e;->b:[I

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/avira/applock/common/ux/e;->c:Lcom/avira/applock/common/ux/ParallaxDashboard;

    .line 40
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    move-object v1, v0

    iput-object v1, p0, Lcom/avira/applock/common/ux/e;->a:Landroid/support/v4/app/FragmentActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    return-void

    .line 44
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avira/applock/common/ux/e;->b:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 55
    return-void
.end method

.method public final a(Lcom/avira/applock/common/ux/f;I)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/avira/applock/common/ux/e;->b:[I

    invoke-virtual {p1}, Lcom/avira/applock/common/ux/f;->a()I

    move-result v1

    aput p2, v0, v1

    .line 75
    return-void
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avira/applock/common/ux/e;->a:Landroid/support/v4/app/FragmentActivity;

    sget v1, Lcom/avira/applock/d;->parallax_dashboard:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/common/ux/ParallaxDashboard;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/avira/applock/common/ux/e;->b:[I

    sget-object v2, Lcom/avira/applock/common/ux/f;->SCROLLVIEW_CONTENT:Lcom/avira/applock/common/ux/f;

    invoke-virtual {v2}, Lcom/avira/applock/common/ux/f;->a()I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p0, Lcom/avira/applock/common/ux/e;->b:[I

    sget-object v3, Lcom/avira/applock/common/ux/f;->PARALLAX_HEADER:Lcom/avira/applock/common/ux/f;

    invoke-virtual {v3}, Lcom/avira/applock/common/ux/f;->a()I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p0, Lcom/avira/applock/common/ux/e;->b:[I

    sget-object v4, Lcom/avira/applock/common/ux/f;->BACKGROUND:Lcom/avira/applock/common/ux/f;

    invoke-virtual {v4}, Lcom/avira/applock/common/ux/f;->a()I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p0, Lcom/avira/applock/common/ux/e;->b:[I

    sget-object v5, Lcom/avira/applock/common/ux/f;->HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

    invoke-virtual {v5}, Lcom/avira/applock/common/ux/f;->a()I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p0, Lcom/avira/applock/common/ux/e;->b:[I

    sget-object v6, Lcom/avira/applock/common/ux/f;->NON_HIDEABLE_OVERLAY_TOP:Lcom/avira/applock/common/ux/f;

    invoke-virtual {v6}, Lcom/avira/applock/common/ux/f;->a()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/avira/applock/common/ux/ParallaxDashboard;->inflateInnerLayouts(IIIII)V

    iput-object v0, p0, Lcom/avira/applock/common/ux/e;->c:Lcom/avira/applock/common/ux/ParallaxDashboard;

    .line 63
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "R.id.parallax_dashboard have to be inflated before calling this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Lcom/avira/applock/common/ux/ParallaxDashboard;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avira/applock/common/ux/e;->c:Lcom/avira/applock/common/ux/ParallaxDashboard;

    return-object v0
.end method
