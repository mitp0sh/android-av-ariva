.class public final Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
.super Landroid/support/v7/internal/view/menu/j;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/o;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field final a:Landroid/support/v7/internal/view/menu/g;

.field b:I

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private final t:Landroid/util/SparseBooleanArray;

.field private u:Landroid/view/View;

.field private v:Landroid/support/v7/internal/view/menu/f;

.field private w:Landroid/support/v7/internal/view/menu/c;

.field private x:Landroid/support/v7/internal/view/menu/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 76
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/view/menu/j;-><init>(Landroid/content/Context;II)V

    .line 63
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->t:Landroid/util/SparseBooleanArray;

    .line 72
    new-instance v0, Landroid/support/v7/internal/view/menu/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/view/menu/g;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;B)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a:Landroid/support/v7/internal/view/menu/g;

    .line 77
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/c;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->w:Landroid/support/v7/internal/view/menu/c;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)Landroid/support/v7/internal/view/menu/f;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->v:Landroid/support/v7/internal/view/menu/f;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/d;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->x:Landroid/support/v7/internal/view/menu/d;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/af;
    .locals 2

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/af;

    move-result-object v1

    move-object v0, v1

    .line 152
    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setPresenter(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V

    .line 153
    return-object v1
.end method

.method public final a(Landroid/support/v7/internal/view/menu/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    :cond_0
    instance-of v0, p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    if-nez v0, :cond_1

    .line 161
    const/4 p2, 0x0

    .line 163
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 165
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    check-cast p3, Landroid/support/v7/internal/view/menu/ActionMenuView;

    .line 168
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 169
    invoke-virtual {p3, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 170
    invoke-virtual {p3, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_3
    return-object v0

    .line 165
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->o:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$integer;->abc_max_action_buttons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->n:I

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/o;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 127
    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 130
    iput p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->l:I

    .line 131
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->p:Z

    .line 132
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->q:Z

    .line 133
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 85
    invoke-static {p1}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v3

    .line 86
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->k:Z

    if-nez v0, :cond_0

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Z

    .line 90
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->q:Z

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {v3}, Landroid/support/v7/internal/view/a;->b()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->l:I

    .line 95
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->o:Z

    if-nez v0, :cond_2

    .line 96
    invoke-virtual {v3}, Landroid/support/v7/internal/view/a;->a()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->n:I

    .line 99
    :cond_2
    iget v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->l:I

    .line 100
    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Z

    if-eqz v3, :cond_5

    .line 101
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    if-nez v3, :cond_3

    .line 102
    new-instance v3, Landroid/support/v7/internal/view/menu/e;

    iget-object v4, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/support/v7/internal/view/menu/e;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    .line 103
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 104
    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v3, v1, v1}, Landroid/view/View;->measure(II)V

    .line 106
    :cond_3
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 111
    :goto_1
    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->m:I

    .line 113
    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->s:I

    .line 116
    iput-object v5, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->u:Landroid/view/View;

    .line 117
    return-void

    :cond_4
    move v0, v1

    .line 87
    goto :goto_0

    .line 108
    :cond_5
    iput-object v5, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/internal/view/menu/o;Z)V
    .locals 0

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->f()Z

    .line 507
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/o;Z)V

    .line 508
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/s;Landroid/support/v7/internal/view/menu/ag;)V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/support/v7/internal/view/menu/ag;->initialize(Landroid/support/v7/internal/view/menu/s;I)V

    .line 179
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;

    .line 180
    check-cast p2, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 181
    invoke-virtual {p2, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/internal/view/menu/q;)V

    .line 182
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 531
    if-eqz p1, :cond_0

    .line 533
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/aj;)Z

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->a(Z)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/aj;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/aj;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 269
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 254
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/aj;->t()Landroid/view/Menu;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/o;

    if-eq v1, v2, :cond_1

    .line 255
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/aj;->t()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/aj;

    goto :goto_1

    .line 257
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/aj;->getItem()Landroid/view/MenuItem;

    move-result-object v5

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v4, v3

    :goto_2
    if-ge v4, v6, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v1, v2, Landroid/support/v7/internal/view/menu/ag;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/support/v7/internal/view/menu/ag;

    invoke-interface {v1}, Landroid/support/v7/internal/view/menu/ag;->getItemData()Landroid/support/v7/internal/view/menu/s;

    move-result-object v1

    if-ne v1, v5, :cond_2

    .line 258
    :goto_3
    if-nez v2, :cond_5

    .line 259
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    if-nez v0, :cond_4

    move v0, v3

    .line 260
    goto :goto_0

    .line 257
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 262
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    .line 265
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/aj;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b:I

    .line 266
    new-instance v0, Landroid/support/v7/internal/view/menu/c;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/view/menu/c;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/aj;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->w:Landroid/support/v7/internal/view/menu/c;

    .line 267
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->w:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->a()V

    .line 268
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/aj;)Z

    .line 269
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/s;->i()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/ViewGroup;I)Z
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    if-ne v0, v1, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Z

    .line 137
    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->k:Z

    .line 138
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->r:Z

    .line 147
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 141
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->n:I

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->o:Z

    .line 143
    return-void
.end method

.method public final c(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/j;->c(Z)V

    .line 193
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/o;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->l()Ljava/util/ArrayList;

    move-result-object v4

    .line 199
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 200
    :goto_1
    if-ge v3, v5, :cond_2

    .line 201
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->m()Landroid/support/v4/view/n;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0, p0}, Landroid/support/v4/view/n;->a(Landroid/support/v4/view/o;)V

    .line 200
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/o;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 212
    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 214
    if-ne v3, v1, :cond_9

    .line 215
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    move v2, v0

    .line 221
    :cond_3
    :goto_4
    if-eqz v2, :cond_b

    .line 222
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    if-nez v0, :cond_4

    .line 223
    new-instance v0, Landroid/support/v7/internal/view/menu/e;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/view/menu/e;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    .line 225
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 226
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    if-eq v0, v1, :cond_6

    .line 227
    if-eqz v0, :cond_5

    .line 228
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;

    .line 231
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/support/v7/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    :cond_6
    :goto_5
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    check-cast v0, Landroid/support/v7/internal/view/menu/ActionMenuView;

    iget-boolean v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    goto/16 :goto_0

    .line 208
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    move v0, v2

    .line 215
    goto :goto_3

    .line 217
    :cond_9
    if-lez v3, :cond_a

    :goto_6
    move v2, v1

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_6

    .line 233
    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    if-ne v0, v1, :cond_6

    .line 234
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 295
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->x:Landroid/support/v7/internal/view/menu/d;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/support/v7/internal/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->d:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/o;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->i:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v7/internal/view/menu/f;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;Landroid/view/View;)V

    .line 298
    new-instance v1, Landroid/support/v7/internal/view/menu/d;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/view/menu/d;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/f;)V

    iput-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->x:Landroid/support/v7/internal/view/menu/d;

    .line 300
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->x:Landroid/support/v7/internal/view/menu/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 304
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/aj;)Z

    .line 306
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 317
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->x:Landroid/support/v7/internal/view/menu/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->x:Landroid/support/v7/internal/view/menu/d;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->x:Landroid/support/v7/internal/view/menu/d;

    move v0, v1

    .line 328
    :goto_0
    return v0

    .line 323
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->v:Landroid/support/v7/internal/view/menu/f;

    .line 324
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ab;->b()V

    move v0, v1

    .line 326
    goto :goto_0

    .line 328
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e()Z

    move-result v0

    .line 338
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->g()Z

    move-result v1

    or-int/2addr v0, v1

    .line 339
    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->w:Landroid/support/v7/internal/view/menu/c;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->w:Landroid/support/v7/internal/view/menu/c;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->b()V

    .line 350
    const/4 v0, 0x1

    .line 352
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->v:Landroid/support/v7/internal/view/menu/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->v:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Z

    return v0
.end method

.method public final j()Z
    .locals 19

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->e:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/o;->j()Ljava/util/ArrayList;

    move-result-object v13

    .line 371
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 372
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->n:I

    .line 373
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->m:I

    .line 374
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->h:Landroid/support/v7/internal/view/menu/af;

    check-cast v2, Landroid/view/ViewGroup;

    .line 377
    const/4 v6, 0x0

    .line 378
    const/4 v5, 0x0

    .line 379
    const/4 v8, 0x0

    .line 380
    const/4 v4, 0x0

    .line 381
    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-ge v10, v14, :cond_2

    .line 382
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/s;

    .line 383
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/s;->k()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 384
    add-int/lit8 v6, v6, 0x1

    .line 390
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->r:Z

    if-eqz v11, :cond_1e

    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/s;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 393
    const/4 v3, 0x0

    .line 381
    :goto_2
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    move v7, v3

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/s;->j()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 386
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 388
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 398
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->j:Z

    if-eqz v3, :cond_4

    if-nez v4, :cond_3

    add-int v3, v6, v5

    if-le v3, v7, :cond_4

    .line 400
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 402
    :cond_4
    sub-int v10, v7, v6

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->t:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    .line 405
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->clear()V

    .line 407
    const/4 v3, 0x0

    .line 408
    const/4 v4, 0x0

    .line 409
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->p:Z

    if-eqz v5, :cond_1d

    .line 410
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->s:I

    div-int v4, v9, v3

    .line 411
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->s:I

    rem-int v3, v9, v3

    .line 412
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->s:I

    div-int/2addr v3, v4

    add-int/2addr v3, v5

    move v5, v3

    move v3, v4

    .line 416
    :goto_3
    const/4 v4, 0x0

    move v7, v8

    move v11, v4

    move v6, v3

    :goto_4
    if-ge v11, v14, :cond_17

    .line 417
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/support/v7/internal/view/menu/s;

    .line 419
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/s;->k()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->u:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->u:Landroid/view/View;

    if-nez v3, :cond_5

    .line 422
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->u:Landroid/view/View;

    .line 424
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->p:Z

    if-eqz v3, :cond_7

    .line 425
    const/4 v3, 0x0

    invoke-static {v8, v5, v6, v15, v3}, Landroid/support/v7/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v3

    sub-int v3, v6, v3

    .line 430
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 431
    sub-int v8, v9, v6

    .line 432
    if-nez v7, :cond_1c

    .line 435
    :goto_6
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v7

    .line 436
    if-eqz v7, :cond_6

    .line 437
    const/4 v9, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 439
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/support/v7/internal/view/menu/s;->d(Z)V

    move v4, v8

    move v7, v10

    .line 416
    :goto_7
    add-int/lit8 v8, v11, 0x1

    move v11, v8

    move v9, v4

    move v10, v7

    move v7, v6

    move v6, v3

    goto :goto_4

    .line 428
    :cond_7
    invoke-virtual {v8, v15, v15}, Landroid/view/View;->measure(II)V

    move v3, v6

    goto :goto_5

    .line 440
    :cond_8
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/s;->j()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 443
    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v17

    .line 444
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    .line 445
    if-gtz v10, :cond_9

    if-eqz v18, :cond_f

    :cond_9
    if-lez v9, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->p:Z

    if-eqz v3, :cond_a

    if-lez v6, :cond_f

    :cond_a
    const/4 v3, 0x1

    .line 448
    :goto_8
    if-eqz v3, :cond_1a

    .line 449
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->u:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 450
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->u:Landroid/view/View;

    if-nez v12, :cond_b

    .line 451
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->u:Landroid/view/View;

    .line 453
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->p:Z

    if-eqz v12, :cond_10

    .line 454
    const/4 v12, 0x0

    invoke-static {v8, v5, v6, v15, v12}, Landroid/support/v7/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v12

    .line 456
    sub-int/2addr v6, v12

    .line 457
    if-nez v12, :cond_c

    .line 458
    const/4 v3, 0x0

    .line 463
    :cond_c
    :goto_9
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 464
    sub-int/2addr v9, v8

    .line 465
    if-nez v7, :cond_d

    move v7, v8

    .line 469
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->p:Z

    if-eqz v8, :cond_12

    .line 470
    if-ltz v9, :cond_11

    const/4 v8, 0x1

    :goto_a
    and-int/2addr v3, v8

    move v12, v3

    move v8, v6

    .line 477
    :goto_b
    if-eqz v12, :cond_14

    if-eqz v17, :cond_14

    .line 478
    const/4 v3, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v3, v10

    .line 494
    :goto_c
    if-eqz v12, :cond_e

    .line 495
    add-int/lit8 v3, v3, -0x1

    .line 498
    :cond_e
    invoke-virtual {v4, v12}, Landroid/support/v7/internal/view/menu/s;->d(Z)V

    move v6, v7

    move v4, v9

    move v7, v3

    move v3, v8

    goto :goto_7

    .line 445
    :cond_f
    const/4 v3, 0x0

    goto :goto_8

    .line 461
    :cond_10
    invoke-virtual {v8, v15, v15}, Landroid/view/View;->measure(II)V

    goto :goto_9

    .line 470
    :cond_11
    const/4 v8, 0x0

    goto :goto_a

    .line 473
    :cond_12
    add-int v8, v9, v7

    if-lez v8, :cond_13

    const/4 v8, 0x1

    :goto_d
    and-int/2addr v3, v8

    move v12, v3

    move v8, v6

    goto :goto_b

    :cond_13
    const/4 v8, 0x0

    goto :goto_d

    .line 479
    :cond_14
    if-eqz v18, :cond_19

    .line 481
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 482
    const/4 v3, 0x0

    move v6, v10

    move v10, v3

    :goto_e
    if-ge v10, v11, :cond_18

    .line 483
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/internal/view/menu/s;

    .line 484
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/s;->getGroupId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 486
    invoke-virtual {v3}, Landroid/support/v7/internal/view/menu/s;->i()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 487
    add-int/lit8 v6, v6, 0x1

    .line 489
    :cond_15
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/view/menu/s;->d(Z)V

    .line 482
    :cond_16
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_e

    .line 501
    :cond_17
    const/4 v2, 0x1

    return v2

    :cond_18
    move v3, v6

    goto :goto_c

    :cond_19
    move v3, v10

    goto :goto_c

    :cond_1a
    move v12, v3

    move v8, v6

    goto :goto_b

    :cond_1b
    move v3, v6

    move v4, v9

    move v6, v7

    move v7, v10

    goto/16 :goto_7

    :cond_1c
    move v6, v7

    goto/16 :goto_6

    :cond_1d
    move v5, v3

    move v3, v4

    goto/16 :goto_3

    :cond_1e
    move v3, v7

    goto/16 :goto_2
.end method
