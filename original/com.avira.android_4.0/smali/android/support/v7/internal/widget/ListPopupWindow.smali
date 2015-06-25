.class public Landroid/support/v7/internal/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final FILL_PARENT:I = -0x1

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private A:Z

.field a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/PopupWindow;

.field private d:Landroid/widget/ListAdapter;

.field private e:Landroid/support/v7/internal/widget/ae;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/view/View;

.field private n:I

.field private o:Landroid/database/DataSetObserver;

.field private p:Landroid/view/View;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/widget/AdapterView$OnItemClickListener;

.field private s:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final t:Landroid/support/v7/internal/widget/aj;

.field private final u:Landroid/support/v7/internal/widget/ai;

.field private final v:Landroid/support/v7/internal/widget/ah;

.field private final w:Landroid/support/v7/internal/widget/af;

.field private x:Ljava/lang/Runnable;

.field private y:Landroid/os/Handler;

.field private z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 178
    sget v0, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v0, -0x2

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I

    .line 72
    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    .line 77
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:Z

    .line 78
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:Z

    .line 79
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->a:I

    .line 82
    iput v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:I

    .line 93
    new-instance v0, Landroid/support/v7/internal/widget/aj;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/aj;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->t:Landroid/support/v7/internal/widget/aj;

    .line 94
    new-instance v0, Landroid/support/v7/internal/widget/ai;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/ai;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->u:Landroid/support/v7/internal/widget/ai;

    .line 95
    new-instance v0, Landroid/support/v7/internal/widget/ah;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/ah;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->v:Landroid/support/v7/internal/widget/ah;

    .line 96
    new-instance v0, Landroid/support/v7/internal/widget/af;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/af;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->w:Landroid/support/v7/internal/widget/af;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/os/Handler;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    .line 190
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/content/Context;

    .line 191
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    .line 192
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 194
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 196
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ae;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/aj;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->t:Landroid/support/v7/internal/widget/aj;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:I

    .line 230
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 393
    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->h:I

    .line 394
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;

    .line 378
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->r:Landroid/widget/AdapterView$OnItemClickListener;

    .line 473
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 206
    new-instance v0, Landroid/support/v7/internal/widget/ag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/ag;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/database/DataSetObserver;

    .line 210
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 215
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ae;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    :cond_2
    return-void

    .line 207
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->o:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 614
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 250
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Z

    .line 251
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 252
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 412
    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:I

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->j:Z

    .line 414
    return-void
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_0

    .line 442
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 443
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    iput p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    goto :goto_0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;

    return-object v0
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    .line 657
    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 658
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ae;->a(Landroid/support/v7/internal/widget/ae;Z)Z

    .line 659
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ae;->setSelection(I)V

    .line 660
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ae;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/internal/widget/ae;->setItemChecked(IZ)V

    .line 664
    :cond_0
    return-void
.end method

.method public e()V
    .locals 13

    .prologue
    const/high16 v12, -0x80000000

    const/4 v11, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 514
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    if-nez v0, :cond_7

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/content/Context;

    new-instance v0, Landroid/support/v7/internal/widget/ac;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/widget/ac;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->x:Ljava/lang/Runnable;

    new-instance v3, Landroid/support/v7/internal/widget/ae;

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_0
    invoke-direct {v3, v4, v0}, Landroid/support/v7/internal/widget/ae;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ae;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->d:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ae;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->r:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ae;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ae;->setFocusable(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ae;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    new-instance v3, Landroid/support/v7/internal/widget/ad;

    invoke-direct {v3, p0}, Landroid/support/v7/internal/widget/ad;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ae;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->v:Landroid/support/v7/internal/widget/ah;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ae;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->s:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->s:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ae;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/view/View;

    if-eqz v5, :cond_1f

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:I

    packed-switch v7, :pswitch_data_0

    const-string v0, "ListPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Invalid hint position "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->n:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v5, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v4

    :goto_2
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_3
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->j:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:I

    :cond_2
    :goto_4
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    move v4, v1

    :goto_5
    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;

    iget v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:I

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v5, 0x2

    new-array v10, v5, [I

    invoke-virtual {v7, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    if-eqz v4, :cond_1d

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_6
    aget v5, v10, v1

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    sub-int/2addr v4, v5

    sub-int/2addr v4, v8

    aget v5, v10, v1

    iget v7, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    add-int/2addr v5, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v7

    sub-int/2addr v4, v5

    :cond_3
    iget-boolean v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:Z

    if-nez v5, :cond_4

    iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I

    if-ne v5, v6, :cond_a

    :cond_4
    add-int v0, v4, v3

    .line 519
    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->j()Z

    move-result v3

    .line 521
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 522
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    if-ne v4, v6, :cond_c

    move v4, v6

    .line 532
    :goto_8
    iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I

    if-ne v5, v6, :cond_12

    .line 535
    if-eqz v3, :cond_e

    move v5, v0

    .line 536
    :goto_9
    if-eqz v3, :cond_10

    .line 537
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    if-ne v3, v6, :cond_f

    :goto_a
    invoke-virtual {v0, v6, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 552
    :goto_b
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:Z

    if-nez v3, :cond_14

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:Z

    if-nez v3, :cond_14

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 554
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->h:I

    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 594
    :cond_5
    :goto_d
    return-void

    :cond_6
    move v0, v2

    .line 514
    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/view/View;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v3

    goto/16 :goto_3

    :cond_8
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    move v3, v2

    goto/16 :goto_4

    :cond_9
    move v4, v2

    goto/16 :goto_5

    :cond_a
    iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    packed-switch v5, :pswitch_data_1

    iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    :goto_e
    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    sub-int/2addr v4, v0

    invoke-virtual {v7, v5, v4}, Landroid/support/v7/internal/widget/ae;->a(II)I

    move-result v4

    if-lez v4, :cond_b

    add-int/2addr v0, v3

    :cond_b
    add-int/2addr v0, v4

    goto/16 :goto_7

    :pswitch_2
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_e

    :pswitch_3
    iget-object v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_e

    .line 526
    :cond_c
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    if-ne v4, v11, :cond_d

    .line 527
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    goto/16 :goto_8

    .line 529
    :cond_d
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    goto/16 :goto_8

    :cond_e
    move v5, v6

    .line 535
    goto/16 :goto_9

    :cond_f
    move v6, v2

    .line 537
    goto/16 :goto_a

    .line 541
    :cond_10
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    if-ne v0, v6, :cond_11

    move v0, v6

    :goto_f
    invoke-virtual {v3, v0, v6}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto/16 :goto_b

    :cond_11
    move v0, v2

    goto :goto_f

    .line 546
    :cond_12
    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I

    if-ne v3, v11, :cond_13

    move v5, v0

    .line 547
    goto/16 :goto_b

    .line 549
    :cond_13
    iget v5, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I

    goto/16 :goto_b

    :cond_14
    move v1, v2

    .line 552
    goto/16 :goto_c

    .line 557
    :cond_15
    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    if-ne v3, v6, :cond_18

    move v3, v6

    .line 567
    :goto_10
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I

    if-ne v4, v6, :cond_1a

    move v0, v6

    .line 577
    :goto_11
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 581
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->l:Z

    if-nez v3, :cond_1c

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->k:Z

    if-nez v3, :cond_1c

    :goto_12
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 582
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->u:Landroid/support/v7/internal/widget/ai;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 583
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->h:I

    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->i:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 585
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/ae;->setSelection(I)V

    .line 587
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ae;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 588
    :cond_16
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ListPopupWindow;->h()V

    .line 590
    :cond_17
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->A:Z

    if-nez v0, :cond_5

    .line 591
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->w:Landroid/support/v7/internal/widget/af;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_d

    .line 560
    :cond_18
    iget v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    if-ne v3, v11, :cond_19

    .line 561
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->p:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v3, v2

    goto :goto_10

    .line 563
    :cond_19
    iget-object v3, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->g:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    move v3, v2

    goto :goto_10

    .line 570
    :cond_1a
    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I

    if-ne v4, v11, :cond_1b

    .line 571
    iget-object v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto :goto_11

    .line 573
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->f:I

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto :goto_11

    :cond_1c
    move v1, v2

    .line 581
    goto :goto_12

    :cond_1d
    move v4, v5

    goto/16 :goto_6

    :cond_1e
    move v0, v2

    goto/16 :goto_3

    :cond_1f
    move-object v3, v0

    move v0, v2

    goto/16 :goto_2

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 601
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 602
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 603
    iput-object v2, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    .line 604
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->y:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->t:Landroid/support/v7/internal/widget/aj;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 605
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 639
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 670
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    .line 671
    if-eqz v0, :cond_0

    .line 673
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ae;->a(Landroid/support/v7/internal/widget/ae;Z)Z

    .line 675
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ae;->requestLayout()V

    .line 677
    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow;->e:Landroid/support/v7/internal/widget/ae;

    return-object v0
.end method
