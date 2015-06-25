.class public final Lcom/avira/android/antivirus/au;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/avira/android/antivirus/data/b;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/antivirus/data/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/antivirus/data/b;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    const v0, 0x109000a

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 36
    invoke-virtual {p0}, Lcom/avira/android/antivirus/au;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/avira/android/antivirus/au;->b:Landroid/view/LayoutInflater;

    .line 37
    iput-object p2, p0, Lcom/avira/android/antivirus/au;->a:Ljava/util/List;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/au;->d:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object p3, p0, Lcom/avira/android/antivirus/au;->e:Landroid/view/View$OnClickListener;

    .line 40
    return-void
.end method

.method private a(Lcom/avira/android/antivirus/data/c;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const v5, 0x7f0e0199

    const/4 v4, 0x0

    .line 117
    iget-object v1, p0, Lcom/avira/android/antivirus/au;->b:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Lcom/avira/android/antivirus/data/c;->c()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 118
    invoke-virtual {p1}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v1

    sget-object v3, Lcom/avira/android/antivirus/data/c;->EMPTY:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v1

    sget-object v3, Lcom/avira/android/antivirus/data/c;->DISABLED:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v3

    if-ne v1, v3, :cond_2

    :cond_0
    new-instance v1, Lcom/avira/android/antivirus/ax;

    invoke-direct {v1, p0, v4}, Lcom/avira/android/antivirus/ax;-><init>(Lcom/avira/android/antivirus/au;B)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avira/android/antivirus/ax;->d:Landroid/widget/TextView;

    move-object v0, v1

    .line 120
    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    return-object v2

    .line 118
    :cond_2
    invoke-virtual {p1}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v1

    sget-object v3, Lcom/avira/android/antivirus/data/c;->ITEM:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v3

    if-ne v1, v3, :cond_3

    new-instance v1, Lcom/avira/android/antivirus/aw;

    invoke-direct {v1, p0, v4}, Lcom/avira/android/antivirus/aw;-><init>(Lcom/avira/android/antivirus/au;B)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avira/android/antivirus/aw;->d:Landroid/widget/TextView;

    const v0, 0x7f0e0194

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/avira/android/antivirus/aw;->a:Landroid/widget/ImageView;

    const v0, 0x7f0e01a4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/avira/android/antivirus/aw;->b:Landroid/widget/ImageButton;

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v1

    sget-object v3, Lcom/avira/android/antivirus/data/c;->SECTION:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v3

    if-ne v1, v3, :cond_1

    new-instance v1, Lcom/avira/android/antivirus/av;

    invoke-direct {v1, p0, v4}, Lcom/avira/android/antivirus/av;-><init>(Lcom/avira/android/antivirus/au;B)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avira/android/antivirus/av;->d:Landroid/widget/TextView;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/avira/android/antivirus/au;->c:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avira/android/antivirus/au;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/b;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->g()Lcom/avira/android/antivirus/data/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 62
    iget-object v0, p0, Lcom/avira/android/antivirus/au;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/b;

    .line 63
    if-nez p2, :cond_5

    .line 66
    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->g()Lcom/avira/android/antivirus/data/c;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avira/android/antivirus/au;->a(Lcom/avira/android/antivirus/data/c;)Landroid/view/View;

    move-result-object p2

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/android/antivirus/ax;

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->g()Lcom/avira/android/antivirus/data/c;

    move-result-object v5

    iget-object v2, v1, Lcom/avira/android/antivirus/ax;->d:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v2

    sget-object v3, Lcom/avira/android/antivirus/data/c;->SECTION:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v5}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v2

    sget-object v3, Lcom/avira/android/antivirus/data/c;->ITEM:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v3

    if-ne v2, v3, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/avira/android/antivirus/aw;

    iget-object v3, p0, Lcom/avira/android/antivirus/au;->c:Ljava/util/Map;

    if-eqz v3, :cond_e

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->h()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/avira/android/antivirus/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->h()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v6, v2, Lcom/avira/android/antivirus/aw;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/avira/android/antivirus/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->h()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    iget-object v3, v2, Lcom/avira/android/antivirus/aw;->b:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/avira/android/antivirus/aw;->b:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/avira/android/antivirus/au;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {v5}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v2

    sget-object v3, Lcom/avira/android/antivirus/data/c;->SECTION:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v3

    if-eq v2, v3, :cond_4

    invoke-virtual {v5}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v2

    sget-object v3, Lcom/avira/android/antivirus/data/c;->ITEM:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v3

    if-ne v2, v3, :cond_10

    check-cast v1, Lcom/avira/android/antivirus/aw;

    iget-object v2, p0, Lcom/avira/android/antivirus/au;->c:Ljava/util/Map;

    if-eqz v2, :cond_f

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/avira/android/antivirus/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/avira/android/antivirus/aw;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/avira/android/antivirus/au;->c:Ljava/util/Map;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    iget-object v0, v1, Lcom/avira/android/antivirus/aw;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/avira/android/antivirus/aw;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/avira/android/antivirus/au;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_4
    :goto_3
    return-object p2

    .line 68
    :cond_5
    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->g()Lcom/avira/android/antivirus/data/c;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/android/antivirus/ax;

    invoke-virtual {v4}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v5

    sget-object v6, Lcom/avira/android/antivirus/data/c;->SECTION:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v6}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v6

    if-ne v5, v6, :cond_7

    instance-of v1, v1, Lcom/avira/android/antivirus/av;

    if-nez v1, :cond_6

    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v0}, Lcom/avira/android/antivirus/data/b;->g()Lcom/avira/android/antivirus/data/c;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/avira/android/antivirus/au;->a(Lcom/avira/android/antivirus/data/c;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 68
    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v5

    sget-object v6, Lcom/avira/android/antivirus/data/c;->ITEM:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v6}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v6

    if-ne v5, v6, :cond_9

    instance-of v1, v1, Lcom/avira/android/antivirus/aw;

    if-nez v1, :cond_8

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5

    :cond_8
    move v2, v3

    goto :goto_6

    :cond_9
    invoke-virtual {v4}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v5

    sget-object v6, Lcom/avira/android/antivirus/data/c;->EMPTY:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v6}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v6

    if-eq v5, v6, :cond_a

    invoke-virtual {v4}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v4

    sget-object v5, Lcom/avira/android/antivirus/data/c;->DISABLED:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v5}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v5

    if-ne v4, v5, :cond_d

    :cond_a
    instance-of v4, v1, Lcom/avira/android/antivirus/av;

    if-nez v4, :cond_b

    instance-of v1, v1, Lcom/avira/android/antivirus/aw;

    if-eqz v1, :cond_c

    :cond_b
    move v3, v2

    :cond_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5

    :cond_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5

    .line 75
    :cond_e
    iget-object v3, p0, Lcom/avira/android/antivirus/au;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/avira/android/antivirus/aw;->a:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/avira/android/antivirus/au;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/avira/android/antivirus/au;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/avira/android/antivirus/aw;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/avira/android/antivirus/au;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v5}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v0

    sget-object v2, Lcom/avira/android/antivirus/data/c;->DISABLED:Lcom/avira/android/antivirus/data/c;

    invoke-virtual {v2}, Lcom/avira/android/antivirus/data/c;->a()I

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object v0, v1, Lcom/avira/android/antivirus/ax;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avira/android/antivirus/au;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/avira/android/antivirus/data/c;->b()I

    move-result v0

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/avira/android/antivirus/au;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/OEScanResultActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avira/android/antivirus/au;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/avira/android/antivirus/AntivirusSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/antivirus/OEScanResultActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 231
    return-void
.end method
