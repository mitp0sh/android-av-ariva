.class public final Lcom/avira/android/utilities/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final a:Ljava/util/Dictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Dictionary",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/widget/AbsListView;

.field private final c:Landroid/view/View;

.field private d:I

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const v0, 0x7fffffff

    iput v0, p0, Lcom/avira/android/utilities/q;->d:I

    .line 21
    iput v1, p0, Lcom/avira/android/utilities/q;->e:F

    .line 22
    iput v1, p0, Lcom/avira/android/utilities/q;->f:F

    .line 26
    iput-object p1, p0, Lcom/avira/android/utilities/q;->b:Landroid/widget/AbsListView;

    .line 27
    iput-object p2, p0, Lcom/avira/android/utilities/q;->c:Landroid/view/View;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/avira/android/utilities/q;->a:Ljava/util/Dictionary;

    .line 29
    iget-object v0, p0, Lcom/avira/android/utilities/q;->b:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/utilities/q;->b:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    iget-object v3, p0, Lcom/avira/android/utilities/q;->a:Ljava/util/Dictionary;

    iget-object v4, p0, Lcom/avira/android/utilities/q;->b:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/avira/android/utilities/q;->b:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/utilities/q;->a:Ljava/util/Dictionary;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/avira/android/utilities/q;->a:Ljava/util/Dictionary;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_0
    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_2

    .line 154
    :cond_1
    :goto_2
    return-void

    .line 138
    :cond_2
    iget v0, p0, Lcom/avira/android/utilities/q;->e:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget v0, p0, Lcom/avira/android/utilities/q;->f:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/avira/android/utilities/q;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v3, v3

    iput v3, p0, Lcom/avira/android/utilities/q;->e:F

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iput v0, p0, Lcom/avira/android/utilities/q;->f:F

    :cond_3
    iget v0, p0, Lcom/avira/android/utilities/q;->e:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    iget v0, p0, Lcom/avira/android/utilities/q;->f:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/avira/android/utilities/q;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/avira/android/utilities/q;->e:F

    iget-object v0, p0, Lcom/avira/android/utilities/q;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/avira/android/utilities/q;->f:F

    :cond_4
    iget v0, p0, Lcom/avira/android/utilities/q;->d:I

    const v3, 0x7fffffff

    if-ne v0, v3, :cond_5

    iput v1, p0, Lcom/avira/android/utilities/q;->d:I

    .line 140
    :cond_5
    int-to-float v0, v1

    iget v1, p0, Lcom/avira/android/utilities/q;->d:I

    int-to-float v1, v1

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_6

    move v0, v2

    .line 142
    :goto_3
    iget v1, p0, Lcom/avira/android/utilities/q;->f:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/avira/android/utilities/q;->e:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/avira/android/utilities/q;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 145
    iget v2, p0, Lcom/avira/android/utilities/q;->e:F

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 146
    iget v2, p0, Lcom/avira/android/utilities/q;->f:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    iget-object v0, p0, Lcom/avira/android/utilities/q;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 154
    :catch_0
    move-exception v0

    goto :goto_2

    .line 140
    :cond_6
    div-float/2addr v0, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/avira/android/utilities/q;->a()V

    .line 127
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method
