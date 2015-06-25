.class final Landroid/support/v7/internal/widget/aq;
.super Landroid/support/v7/internal/widget/AbsSpinnerICS;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field static final MODE_DIALOG:I = 0x0

.field static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field E:I

.field private F:Landroid/support/v7/internal/widget/av;

.field private G:Landroid/support/v7/internal/widget/as;

.field private H:I

.field private I:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/aq;-><init>(Landroid/content/Context;IB)V

    .line 128
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IB)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;-><init>(Landroid/content/Context;I)V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/aq;->I:Landroid/graphics/Rect;

    .line 150
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->Spinner:[I

    invoke-virtual {p1, v5, v0, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 153
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 157
    packed-switch v1, :pswitch_data_0

    .line 185
    :goto_0
    const/16 v1, 0x11

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/aq;->H:I

    .line 191
    iget-object v1, p0, Landroid/support/v7/internal/widget/aq;->F:Landroid/support/v7/internal/widget/av;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/internal/widget/av;->a(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->G:Landroid/support/v7/internal/widget/as;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->F:Landroid/support/v7/internal/widget/av;

    iget-object v1, p0, Landroid/support/v7/internal/widget/aq;->G:Landroid/support/v7/internal/widget/as;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/av;->a(Landroid/widget/ListAdapter;)V

    .line 199
    iput-object v5, p0, Landroid/support/v7/internal/widget/aq;->G:Landroid/support/v7/internal/widget/as;

    .line 201
    :cond_0
    return-void

    .line 159
    :pswitch_0
    new-instance v1, Landroid/support/v7/internal/widget/ar;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/ar;-><init>(Landroid/support/v7/internal/widget/aq;B)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/aq;->F:Landroid/support/v7/internal/widget/av;

    goto :goto_0

    .line 164
    :pswitch_1
    new-instance v1, Landroid/support/v7/internal/widget/at;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/internal/widget/at;-><init>(Landroid/support/v7/internal/widget/aq;Landroid/content/Context;I)V

    .line 166
    const/4 v2, 0x3

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/internal/widget/aq;->E:I

    .line 169
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/at;->a(Landroid/graphics/drawable/Drawable;)V

    .line 172
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 174
    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/at;->b(I)V

    .line 178
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 180
    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/at;->a(I)V

    .line 184
    :cond_2
    iput-object v1, p0, Landroid/support/v7/internal/widget/aq;->F:Landroid/support/v7/internal/widget/av;

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/aq;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->I:Landroid/graphics/Rect;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 402
    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 406
    :cond_0
    invoke-virtual {p0, p1, v5, v0}, Landroid/support/v7/internal/widget/aq;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 408
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 411
    iget v1, p0, Landroid/support/v7/internal/widget/aq;->b:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/aq;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/aq;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 413
    iget v2, p0, Landroid/support/v7/internal/widget/aq;->c:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/aq;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/aq;->i:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 417
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 423
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/aq;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/internal/widget/aq;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 428
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 429
    add-int/lit8 v2, v2, 0x0

    .line 432
    invoke-virtual {p1, v5, v0, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 433
    return-void
.end method

.method private d(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 372
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/aq;->u:Z

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->j:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/c;->a(I)Landroid/view/View;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_0

    .line 376
    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/aq;->a(Landroid/view/View;)V

    .line 388
    :goto_0
    return-object v0

    .line 383
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->a:Landroid/widget/SpinnerAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 386
    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/aq;->a(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x2

    const/4 v0, 0x0

    .line 479
    if-nez p1, :cond_0

    .line 519
    :goto_0
    return v0

    .line 486
    :cond_0
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 488
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 493
    iget v1, p0, Landroid/support/v7/internal/widget/v;->v:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 494
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v4, v1, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 495
    sub-int v3, v8, v1

    .line 496
    rsub-int/lit8 v3, v3, 0xf

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v5, v1

    move-object v3, v2

    move v4, v0

    move v1, v0

    .line 497
    :goto_1
    if-ge v5, v8, :cond_2

    .line 498
    invoke-interface {p1, v5}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v0

    .line 499
    if-eq v0, v1, :cond_4

    move-object v1, v2

    .line 503
    :goto_2
    invoke-interface {p1, v5, v1, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 504
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 505
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    :cond_1
    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 510
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 497
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    .line 514
    :cond_2
    if-eqz p2, :cond_3

    .line 515
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->I:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 516
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->I:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/aq;->I:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method public final a(Landroid/support/v7/internal/widget/x;)V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/widget/SpinnerAdapter;)V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a(Landroid/widget/SpinnerAdapter;)V

    .line 225
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->F:Landroid/support/v7/internal/widget/av;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->F:Landroid/support/v7/internal/widget/av;

    new-instance v1, Landroid/support/v7/internal/widget/as;

    invoke-direct {v1, p1}, Landroid/support/v7/internal/widget/as;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Landroid/support/v7/internal/widget/av;->a(Landroid/widget/ListAdapter;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v0, Landroid/support/v7/internal/widget/as;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/widget/as;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/aq;->G:Landroid/support/v7/internal/widget/as;

    goto :goto_0
.end method

.method final b(Landroid/support/v7/internal/widget/x;)V
    .locals 0

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a(Landroid/support/v7/internal/widget/x;)V

    .line 274
    return-void
.end method

.method public final getBaseline()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 234
    const/4 v1, 0x0

    .line 236
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 237
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/aq;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 244
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v2

    .line 246
    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    .line 248
    :cond_1
    return v0

    .line 238
    :cond_2
    iget-object v2, p0, Landroid/support/v7/internal/widget/aq;->a:Landroid/widget/SpinnerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/internal/widget/aq;->a:Landroid/widget/SpinnerAdapter;

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 239
    invoke-direct {p0, v3}, Landroid/support/v7/internal/widget/aq;->d(I)Landroid/view/View;

    move-result-object v1

    .line 240
    iget-object v2, p0, Landroid/support/v7/internal/widget/aq;->j:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/internal/widget/c;->a(ILandroid/view/View;)V

    .line 241
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->removeAllViewsInLayout()V

    goto :goto_0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 451
    invoke-virtual {p0, p2}, Landroid/support/v7/internal/widget/aq;->a(I)V

    .line 452
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 453
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onDetachedFromWindow()V

    .line 256
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->F:Landroid/support/v7/internal/widget/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->F:Landroid/support/v7/internal/widget/av;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/av;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->F:Landroid/support/v7/internal/widget/av;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/av;->f()V

    .line 259
    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 296
    invoke-super/range {p0 .. p5}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onLayout(ZIIII)V

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/aq;->r:Z

    .line 298
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->i:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/internal/widget/aq;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroid/support/v7/internal/widget/aq;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v1, v3

    iget-boolean v1, p0, Landroid/support/v7/internal/widget/aq;->u:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->f()V

    :cond_0
    iget v1, p0, Landroid/support/v7/internal/widget/aq;->z:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->a()V

    .line 299
    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/aq;->r:Z

    .line 300
    return-void

    .line 298
    :cond_1
    iget v1, p0, Landroid/support/v7/internal/widget/aq;->v:I

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/support/v7/internal/widget/aq;->v:I

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/aq;->b(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildCount()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->j:Landroid/support/v7/internal/widget/c;

    iget v6, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->k:I

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v8, v6, v1

    invoke-virtual {v5, v8, v7}, Landroid/support/v7/internal/widget/c;->a(ILandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->removeAllViewsInLayout()V

    iget v1, p0, Landroid/support/v7/internal/widget/aq;->x:I

    iput v1, p0, Landroid/support/v7/internal/widget/aq;->k:I

    iget v1, p0, Landroid/support/v7/internal/widget/aq;->x:I

    invoke-direct {p0, v1}, Landroid/support/v7/internal/widget/aq;->d(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Landroid/support/v7/internal/widget/aq;->H:I

    and-int/lit8 v5, v5, 0x7

    sparse-switch v5, :sswitch_data_0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->j:Landroid/support/v7/internal/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/c;->a()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->invalidate()V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->g()V

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/aq;->u:Z

    iput-boolean v2, p0, Landroid/support/v7/internal/widget/aq;->p:Z

    iget v0, p0, Landroid/support/v7/internal/widget/aq;->x:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/aq;->c(I)V

    goto :goto_0

    :sswitch_0
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v3, v4, 0x2

    sub-int/2addr v0, v3

    goto :goto_2

    :sswitch_1
    add-int/2addr v0, v3

    sub-int/2addr v0, v4

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final onMeasure(II)V
    .locals 3

    .prologue
    .line 278
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->onMeasure(II)V

    .line 279
    iget-object v0, p0, Landroid/support/v7/internal/widget/aq;->F:Landroid/support/v7/internal/widget/av;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 280
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->getMeasuredWidth()I

    move-result v0

    .line 281
    iget-object v1, p0, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/internal/widget/aq;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/aq;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/aq;->setMeasuredDimension(II)V

    .line 286
    :cond_0
    return-void
.end method

.method public final performClick()Z
    .locals 2

    .prologue
    .line 437
    invoke-super {p0}, Landroid/support/v7/internal/widget/AbsSpinnerICS;->performClick()Z

    move-result v0

    .line 439
    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x1

    .line 442
    iget-object v1, p0, Landroid/support/v7/internal/widget/aq;->F:Landroid/support/v7/internal/widget/av;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/av;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Landroid/support/v7/internal/widget/aq;->F:Landroid/support/v7/internal/widget/av;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/av;->e()V

    .line 447
    :cond_0
    return v0
.end method
