.class public abstract Landroid/support/v7/internal/view/menu/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ad;


# instance fields
.field private a:Landroid/support/v7/internal/view/menu/ae;

.field private b:I

.field protected c:Landroid/content/Context;

.field protected d:Landroid/content/Context;

.field protected e:Landroid/support/v7/internal/view/menu/o;

.field protected f:Landroid/view/LayoutInflater;

.field protected g:Landroid/view/LayoutInflater;

.field protected h:Landroid/support/v7/internal/view/menu/af;

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/j;->c:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/j;->f:Landroid/view/LayoutInflater;

    .line 59
    iput p2, p0, Landroid/support/v7/internal/view/menu/j;->b:I

    .line 60
    iput p3, p0, Landroid/support/v7/internal/view/menu/j;->i:I

    .line 61
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/af;
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->h:Landroid/support/v7/internal/view/menu/af;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->f:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/internal/view/menu/j;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/af;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/j;->h:Landroid/support/v7/internal/view/menu/af;

    .line 73
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->h:Landroid/support/v7/internal/view/menu/af;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/j;->e:Landroid/support/v7/internal/view/menu/o;

    invoke-interface {v0, v1}, Landroid/support/v7/internal/view/menu/af;->initialize(Landroid/support/v7/internal/view/menu/o;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/j;->c(Z)V

    .line 77
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->h:Landroid/support/v7/internal/view/menu/af;

    return-object v0
.end method

.method public a(Landroid/support/v7/internal/view/menu/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 175
    instance-of v0, p2, Landroid/support/v7/internal/view/menu/ag;

    if-eqz v0, :cond_0

    .line 176
    check-cast p2, Landroid/support/v7/internal/view/menu/ag;

    move-object v0, p2

    .line 180
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/s;Landroid/support/v7/internal/view/menu/ag;)V

    .line 181
    check-cast v0, Landroid/view/View;

    return-object v0

    .line 178
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->f:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/internal/view/menu/j;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ag;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/o;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/j;->d:Landroid/content/Context;

    .line 66
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/j;->g:Landroid/view/LayoutInflater;

    .line 67
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/j;->e:Landroid/support/v7/internal/view/menu/o;

    .line 68
    return-void
.end method

.method public final a(Landroid/support/v7/internal/view/menu/ae;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/ae;

    .line 151
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/o;Z)V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/ae;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/ae;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/ae;->a(Landroid/support/v7/internal/view/menu/o;Z)V

    .line 207
    :cond_0
    return-void
.end method

.method public abstract a(Landroid/support/v7/internal/view/menu/s;Landroid/support/v7/internal/view/menu/ag;)V
.end method

.method public a(Landroid/support/v7/internal/view/menu/aj;)Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/ae;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->a:Landroid/support/v7/internal/view/menu/ae;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/ae;->b(Landroid/support/v7/internal/view/menu/o;)Z

    move-result v0

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method protected a(Landroid/view/ViewGroup;I)Z
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 233
    iput p1, p0, Landroid/support/v7/internal/view/menu/j;->j:I

    .line 234
    return-void
.end method

.method public final b(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 84
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/j;->h:Landroid/support/v7/internal/view/menu/af;

    check-cast v0, Landroid/view/ViewGroup;

    .line 85
    if-nez v0, :cond_1

    .line 121
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/j;->e:Landroid/support/v7/internal/view/menu/o;

    if-eqz v1, :cond_8

    .line 91
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/j;->e:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/o;->k()V

    .line 92
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/j;->e:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/o;->j()Ljava/util/ArrayList;

    move-result-object v7

    .line 93
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v5

    move v4, v5

    .line 94
    :goto_0
    if-ge v6, v8, :cond_6

    .line 95
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/s;

    .line 96
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/s;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 97
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 98
    instance-of v2, v3, Landroid/support/v7/internal/view/menu/ag;

    if-eqz v2, :cond_5

    move-object v2, v3

    check-cast v2, Landroid/support/v7/internal/view/menu/ag;

    invoke-interface {v2}, Landroid/support/v7/internal/view/menu/ag;->getItemData()Landroid/support/v7/internal/view/menu/s;

    move-result-object v2

    .line 100
    :goto_1
    invoke-virtual {p0, v1, v3, v0}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/support/v7/internal/view/menu/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 101
    if-eq v1, v2, :cond_2

    .line 103
    invoke-virtual {v9, v5}, Landroid/view/View;->setPressed(Z)V

    .line 107
    :cond_2
    if-eq v9, v3, :cond_4

    .line 108
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/j;->h:Landroid/support/v7/internal/view/menu/af;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 110
    :cond_4
    add-int/lit8 v1, v4, 0x1

    .line 94
    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    goto :goto_0

    .line 98
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 116
    :cond_6
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 117
    invoke-virtual {p0, v0, v4}, Landroid/support/v7/internal/view/menu/j;->a(Landroid/view/ViewGroup;I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    move v1, v4

    goto :goto_2

    :cond_8
    move v4, v5

    goto :goto_3
.end method

.method public final c(Landroid/support/v7/internal/view/menu/s;)Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method
