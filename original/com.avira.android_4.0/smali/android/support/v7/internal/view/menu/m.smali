.class public final Landroid/support/v7/internal/view/menu/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ad;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Landroid/support/v7/internal/view/menu/o;

.field d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

.field e:I

.field f:I

.field g:Landroid/support/v7/internal/view/menu/n;

.field private h:I

.field private i:Landroid/support/v7/internal/view/menu/ae;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Landroid/support/v7/internal/view/menu/m;->f:I

    .line 79
    iput p2, p0, Landroid/support/v7/internal/view/menu/m;->e:I

    .line 80
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/m;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->h:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/af;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/support/v7/internal/view/menu/n;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/support/v7/internal/view/menu/n;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/n;-><init>(Landroid/support/v7/internal/view/menu/m;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/support/v7/internal/view/menu/n;

    .line 105
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    .line 109
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    .line 116
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/support/v7/internal/view/menu/n;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Landroid/support/v7/internal/view/menu/n;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/n;-><init>(Landroid/support/v7/internal/view/menu/m;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/support/v7/internal/view/menu/n;

    .line 130
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/support/v7/internal/view/menu/n;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;)V
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Landroid/support/v7/internal/view/menu/m;->e:I

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroid/support/v7/internal/view/menu/m;->e:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/view/LayoutInflater;

    .line 93
    :cond_0
    :goto_0
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/m;->c:Landroid/support/v7/internal/view/menu/o;

    .line 94
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/support/v7/internal/view/menu/n;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->notifyDataSetChanged()V

    .line 97
    :cond_1
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/m;->b:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/internal/view/menu/ae;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/m;->i:Landroid/support/v7/internal/view/menu/ae;

    .line 141
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/o;Z)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->i:Landroid/support/v7/internal/view/menu/ae;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->i:Landroid/support/v7/internal/view/menu/ae;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/ae;->a(Landroid/support/v7/internal/view/menu/o;Z)V

    .line 160
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/aj;)Z
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/aj;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 148
    :cond_0
    new-instance v0, Landroid/support/v7/internal/view/menu/r;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/r;-><init>(Landroid/support/v7/internal/view/menu/o;)V

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/r;->a()V

    .line 149
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->i:Landroid/support/v7/internal/view/menu/ae;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->i:Landroid/support/v7/internal/view/menu/ae;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/ae;->b(Landroid/support/v7/internal/view/menu/o;)Z

    .line 152
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Z)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/support/v7/internal/view/menu/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->notifyDataSetChanged()V

    .line 136
    :cond_0
    return-void
.end method

.method public final c(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/m;->c:Landroid/support/v7/internal/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/m;->g:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v1, p3}, Landroid/support/v7/internal/view/menu/n;->a(I)Landroid/support/v7/internal/view/menu/s;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/view/MenuItem;I)Z

    .line 176
    return-void
.end method
