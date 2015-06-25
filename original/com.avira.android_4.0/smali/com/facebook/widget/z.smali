.class public final Lcom/facebook/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_POPUP_DISPLAY_TIME:J = 0x1770L


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:Lcom/facebook/widget/ad;

.field private e:Landroid/widget/PopupWindow;

.field private f:Lcom/facebook/widget/ae;

.field private g:J

.field private final h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/facebook/widget/ae;->BLUE:Lcom/facebook/widget/ae;

    iput-object v0, p0, Lcom/facebook/widget/z;->f:Lcom/facebook/widget/ae;

    .line 60
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/widget/z;->g:J

    .line 62
    new-instance v0, Lcom/facebook/widget/aa;

    invoke-direct {v0, p0}, Lcom/facebook/widget/aa;-><init>(Lcom/facebook/widget/z;)V

    iput-object v0, p0, Lcom/facebook/widget/z;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 84
    iput-object p1, p0, Lcom/facebook/widget/z;->a:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/widget/z;->b:Ljava/lang/ref/WeakReference;

    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/z;->c:Landroid/content/Context;

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/z;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/widget/z;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/widget/z;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/widget/z;->e:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/widget/z;)Lcom/facebook/widget/ad;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/widget/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/facebook/widget/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/z;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 101
    iget-object v0, p0, Lcom/facebook/widget/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 102
    new-instance v0, Lcom/facebook/widget/ad;

    iget-object v1, p0, Lcom/facebook/widget/z;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/ad;-><init>(Lcom/facebook/widget/z;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    .line 103
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    sget v1, Lcom/facebook/a/e;->com_facebook_tooltip_bubble_view_text_body:I

    invoke-virtual {v0, v1}, Lcom/facebook/widget/ad;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/facebook/widget/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/facebook/widget/z;->f:Lcom/facebook/widget/ae;

    sget-object v1, Lcom/facebook/widget/ae;->BLUE:Lcom/facebook/widget/ae;

    if-ne v0, v1, :cond_4

    .line 107
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-static {v0}, Lcom/facebook/widget/ad;->a(Lcom/facebook/widget/ad;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/a/d;->com_facebook_tooltip_blue_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-static {v0}, Lcom/facebook/widget/ad;->b(Lcom/facebook/widget/ad;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/a/d;->com_facebook_tooltip_blue_bottomnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-static {v0}, Lcom/facebook/widget/ad;->c(Lcom/facebook/widget/ad;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/a/d;->com_facebook_tooltip_blue_topnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-static {v0}, Lcom/facebook/widget/ad;->d(Lcom/facebook/widget/ad;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/a/d;->com_facebook_tooltip_blue_xout:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/z;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 127
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 128
    invoke-direct {p0}, Lcom/facebook/widget/z;->c()V

    iget-object v0, p0, Lcom/facebook/widget/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/widget/z;->h:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/ad;->onMeasure(II)V

    .line 132
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    iget-object v2, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-virtual {v2}, Lcom/facebook/widget/ad;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-virtual {v3}, Lcom/facebook/widget/ad;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/facebook/widget/z;->e:Landroid/widget/PopupWindow;

    .line 136
    iget-object v1, p0, Lcom/facebook/widget/z;->e:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/facebook/widget/z;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/facebook/widget/z;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/z;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/widget/z;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-virtual {v0}, Lcom/facebook/widget/ad;->b()V

    .line 138
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcom/facebook/widget/z;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    new-instance v1, Lcom/facebook/widget/ab;

    invoke-direct {v1, p0}, Lcom/facebook/widget/ab;-><init>(Lcom/facebook/widget/z;)V

    iget-wide v2, p0, Lcom/facebook/widget/z;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/widget/ad;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/facebook/widget/z;->e:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 147
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    new-instance v1, Lcom/facebook/widget/ac;

    invoke-direct {v1, p0}, Lcom/facebook/widget/ac;-><init>(Lcom/facebook/widget/z;)V

    invoke-virtual {v0, v1}, Lcom/facebook/widget/ad;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_3
    return-void

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-static {v0}, Lcom/facebook/widget/ad;->a(Lcom/facebook/widget/ad;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/a/d;->com_facebook_tooltip_black_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-static {v0}, Lcom/facebook/widget/ad;->b(Lcom/facebook/widget/ad;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/a/d;->com_facebook_tooltip_black_bottomnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-static {v0}, Lcom/facebook/widget/ad;->c(Lcom/facebook/widget/ad;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/a/d;->com_facebook_tooltip_black_topnub:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-static {v0}, Lcom/facebook/widget/ad;->d(Lcom/facebook/widget/ad;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/facebook/a/d;->com_facebook_tooltip_black_xout:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/facebook/widget/z;->d:Lcom/facebook/widget/ad;

    invoke-virtual {v0}, Lcom/facebook/widget/ad;->a()V

    goto :goto_1
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/facebook/widget/z;->g:J

    .line 163
    return-void
.end method

.method public final a(Lcom/facebook/widget/ae;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/facebook/widget/z;->f:Lcom/facebook/widget/ae;

    .line 95
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/facebook/widget/z;->c()V

    .line 180
    iget-object v0, p0, Lcom/facebook/widget/z;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/facebook/widget/z;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 183
    :cond_0
    return-void
.end method
