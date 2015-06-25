.class Landroid/support/v7/app/e;
.super Landroid/support/v7/app/d;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ae;
.implements Landroid/support/v7/internal/view/menu/p;


# static fields
.field private static final ACTION_BAR_DRAWABLE_TOGGLE_ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarActivityDelegateBase"


# instance fields
.field private d:Landroid/support/v7/internal/widget/ActionBarView;

.field private e:Landroid/support/v7/internal/view/menu/m;

.field private f:Landroid/support/v7/internal/view/menu/o;

.field private g:Landroid/support/v7/a/a;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private final l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Landroid/support/v7/appcompat/R$attr;->homeAsUpIndicator:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/app/e;->ACTION_BAR_DRAWABLE_TOGGLE_ATTRS:[I

    return-void
.end method

.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1}, Landroid/support/v7/app/d;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 65
    new-instance v0, Landroid/support/v7/app/f;

    invoke-direct {v0, p0}, Landroid/support/v7/app/f;-><init>(Landroid/support/v7/app/e;)V

    iput-object v0, p0, Landroid/support/v7/app/e;->l:Ljava/lang/Runnable;

    .line 82
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/e;)Landroid/support/v7/internal/view/menu/o;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/support/v7/app/e;->n()Landroid/support/v7/internal/view/menu/o;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/app/e;Landroid/support/v7/internal/view/menu/o;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/app/e;->c(Landroid/support/v7/internal/view/menu/o;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/app/e;)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/e;->k:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/app/e;)Landroid/support/v7/internal/widget/ActionBarView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    return-object v0
.end method

.method private c(Landroid/support/v7/internal/view/menu/o;)V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v7/app/e;->f:Landroid/support/v7/internal/view/menu/o;

    if-ne p1, v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/e;->f:Landroid/support/v7/internal/view/menu/o;

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Landroid/support/v7/app/e;->f:Landroid/support/v7/internal/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/app/e;->e:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Landroid/support/v7/internal/view/menu/ad;)V

    .line 427
    :cond_2
    iput-object p1, p0, Landroid/support/v7/app/e;->f:Landroid/support/v7/internal/view/menu/o;

    .line 429
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/support/v7/app/e;->e:Landroid/support/v7/internal/view/menu/m;

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Landroid/support/v7/app/e;->e:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/ad;)V

    .line 433
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1, p0}, Landroid/support/v7/internal/widget/ActionBarView;->setMenu(Landroid/support/v4/a/a/a;Landroid/support/v7/internal/view/menu/ae;)V

    goto :goto_0
.end method

.method static synthetic m()[I
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/support/v7/app/e;->ACTION_BAR_DRAWABLE_TOGGLE_ATTRS:[I

    return-object v0
.end method

.method private n()Landroid/support/v7/internal/view/menu/o;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {p0}, Landroid/support/v7/app/e;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/o;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/p;)V

    .line 377
    return-object v0
.end method


# virtual methods
.method public a()Landroid/support/v7/app/ActionBar;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/support/v7/app/e;->l()V

    .line 87
    new-instance v0, Landroid/support/v7/app/k;

    iget-object v1, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/k;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Landroid/support/v7/app/e;->l()V

    .line 134
    iget-boolean v0, p0, Landroid/support/v7/app/e;->b:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 137
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 138
    iget-object v1, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 139
    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->a(I)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/o;)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->showOverflowMenu()Z

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->hideOverflowMenu()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/o;->close()V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/o;Z)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->closeOptionsMenu()V

    .line 336
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/support/v7/app/e;->l()V

    .line 121
    iget-boolean v0, p0, Landroid/support/v7/app/e;->b:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 125
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/support/v7/app/e;->l()V

    .line 148
    iget-boolean v0, p0, Landroid/support/v7/app/e;->b:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 151
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 152
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    return-void
.end method

.method public final a(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .line 302
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    invoke-static {p2}, Landroid/support/v7/internal/view/menu/ah;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p2

    .line 320
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 310
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/ActionBarActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 256
    .line 258
    if-nez p1, :cond_2

    .line 259
    const/4 v2, 0x1

    .line 260
    iget-object v1, p0, Landroid/support/v7/app/e;->f:Landroid/support/v7/internal/view/menu/o;

    .line 262
    iget-object v3, p0, Landroid/support/v7/app/e;->g:Landroid/support/v7/a/a;

    if-nez v3, :cond_1

    .line 266
    if-nez v1, :cond_0

    .line 268
    invoke-direct {p0}, Landroid/support/v7/app/e;->n()Landroid/support/v7/internal/view/menu/o;

    move-result-object v1

    .line 269
    invoke-direct {p0, v1}, Landroid/support/v7/app/e;->c(Landroid/support/v7/internal/view/menu/o;)V

    .line 272
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/o;->f()V

    .line 274
    iget-object v2, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2, v4, v1}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z

    move-result v2

    .line 277
    :cond_0
    if-eqz v2, :cond_1

    .line 279
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/o;->f()V

    .line 281
    iget-object v2, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2, v4, v0, v1}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    .line 285
    :cond_1
    if-eqz v2, :cond_5

    .line 286
    iget-object v2, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v3, p0, Landroid/support/v7/app/e;->f:Landroid/support/v7/internal/view/menu/o;

    if-nez v3, :cond_3

    :goto_0
    check-cast v0, Landroid/view/View;

    .line 289
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/o;->g()V

    .line 296
    :cond_2
    :goto_1
    return-object v0

    .line 286
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/e;->e:Landroid/support/v7/internal/view/menu/m;

    if-nez v0, :cond_4

    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x4

    sget v4, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/support/v7/internal/view/menu/m;

    sget v4, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v0, v4, v3}, Landroid/support/v7/internal/view/menu/m;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/app/e;->e:Landroid/support/v7/internal/view/menu/m;

    iget-object v0, p0, Landroid/support/v7/app/e;->e:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/m;->a(Landroid/support/v7/internal/view/menu/ae;)V

    iget-object v0, p0, Landroid/support/v7/app/e;->f:Landroid/support/v7/internal/view/menu/o;

    iget-object v3, p0, Landroid/support/v7/app/e;->e:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/ad;)V

    :goto_2
    iget-object v0, p0, Landroid/support/v7/app/e;->e:Landroid/support/v7/internal/view/menu/m;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/view/menu/m;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/af;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/e;->e:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/view/menu/m;->c(Z)V

    goto :goto_2

    .line 292
    :cond_5
    invoke-direct {p0, v0}, Landroid/support/v7/app/e;->c(Landroid/support/v7/internal/view/menu/o;)V

    goto :goto_1
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/support/v7/app/e;->l()V

    .line 161
    iget-boolean v0, p0, Landroid/support/v7/app/e;->b:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 164
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/o;)Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Landroid/support/v7/app/e;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/e;->h:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/support/v7/app/e;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/k;

    .line 98
    invoke-virtual {v0}, Landroid/support/v7/app/k;->c()V

    .line 100
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/support/v7/app/e;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/k;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->a(Z)V

    .line 108
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/support/v7/app/e;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/k;

    .line 113
    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/k;->a(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 368
    iget-boolean v0, p0, Landroid/support/v7/app/e;->k:Z

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/e;->k:Z

    .line 370
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/e;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 372
    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 441
    iget-object v1, p0, Landroid/support/v7/app/e;->g:Landroid/support/v7/a/a;

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Landroid/support/v7/app/e;->g:Landroid/support/v7/a/a;

    invoke-virtual {v1}, Landroid/support/v7/a/a;->a()V

    .line 452
    :goto_0
    return v0

    .line 447
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->hasExpandedActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->collapseActionView()V

    goto :goto_0

    .line 452
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .locals 2

    .prologue
    .line 480
    new-instance v0, Landroid/support/v7/app/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/g;-><init>(Landroid/support/v7/app/e;B)V

    return-object v0
.end method

.method final l()V
    .locals 5

    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/support/v7/app/e;->b:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/app/e;->h:Z

    if-nez v0, :cond_3

    .line 172
    iget-boolean v0, p0, Landroid/support/v7/app/e;->c:Z

    if-eqz v0, :cond_4

    .line 173
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_decor_overlay:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->a(I)V

    .line 177
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    .line 178
    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v1, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 183
    iget-boolean v0, p0, Landroid/support/v7/app/e;->i:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->initProgress()V

    .line 186
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/e;->j:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 193
    :cond_1
    const-string v0, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Landroid/support/v7/app/e;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 197
    if-eqz v3, :cond_5

    .line 198
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$bool;->abc_split_action_bar_is_narrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    move v2, v0

    .line 207
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/appcompat/R$id;->split_action_bar:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 209
    if-eqz v0, :cond_2

    .line 210
    iget-object v1, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    .line 211
    iget-object v1, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 212
    iget-object v1, p0, Landroid/support/v7/app/e;->d:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 214
    iget-object v1, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v4, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {v1, v4}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 216
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitView(Landroid/support/v7/internal/widget/ActionBarContainer;)V

    .line 217
    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 218
    invoke-virtual {v1, v3}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 221
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/e;->h:Z

    .line 223
    invoke-virtual {p0}, Landroid/support/v7/app/e;->g()V

    .line 225
    :cond_3
    return-void

    .line 175
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_bar_decor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->a(I)V

    goto :goto_0

    .line 201
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionBarWindow:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 202
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 204
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v0

    goto :goto_1
.end method
