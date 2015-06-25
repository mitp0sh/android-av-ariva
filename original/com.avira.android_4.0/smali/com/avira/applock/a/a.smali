.class public final Lcom/avira/applock/a/a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/avira/applock/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/applock/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/avira/applock/a/b;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/avira/applock/b/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/applock/a/a;->e:Z

    .line 39
    iput-object p1, p0, Lcom/avira/applock/a/a;->a:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/avira/applock/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/applock/a/a;->b:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/avira/applock/a/a;->c:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/avira/applock/a/a;->e:Z

    .line 107
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avira/applock/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    if-nez p2, :cond_0

    .line 49
    iget-object v0, p0, Lcom/avira/applock/a/a;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/avira/applock/e;->app_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance v0, Lcom/avira/applock/a/b;

    invoke-direct {v0, p0, v4}, Lcom/avira/applock/a/b;-><init>(Lcom/avira/applock/a/a;B)V

    iput-object v0, p0, Lcom/avira/applock/a/a;->d:Lcom/avira/applock/a/b;

    .line 52
    iget-object v1, p0, Lcom/avira/applock/a/a;->d:Lcom/avira/applock/a/b;

    sget v0, Lcom/avira/applock/d;->applist_list_item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/avira/applock/a/b;->a:Landroid/widget/ImageView;

    .line 53
    iget-object v1, p0, Lcom/avira/applock/a/a;->d:Lcom/avira/applock/a/b;

    sget v0, Lcom/avira/applock/d;->applist_list_item_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avira/applock/a/b;->b:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/avira/applock/a/a;->d:Lcom/avira/applock/a/b;

    sget v0, Lcom/avira/applock/d;->applist_list_item_desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avira/applock/a/b;->c:Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/avira/applock/a/a;->d:Lcom/avira/applock/a/b;

    sget v0, Lcom/avira/applock/d;->applist_list_item_checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/avira/applock/a/b;->d:Landroid/widget/CheckBox;

    .line 56
    iget-object v0, p0, Lcom/avira/applock/a/a;->d:Lcom/avira/applock/a/b;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/a/b;

    .line 60
    iget-object v1, p0, Lcom/avira/applock/a/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/applock/b/a;

    .line 62
    iget-object v2, v0, Lcom/avira/applock/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/avira/applock/b/a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v2, v0, Lcom/avira/applock/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/avira/applock/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, v0, Lcom/avira/applock/a/b;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Lcom/avira/applock/b/a;->e()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    iget-object v2, v0, Lcom/avira/applock/a/b;->b:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/avira/applock/a/a;->e:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 67
    iget-object v2, v0, Lcom/avira/applock/a/b;->d:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/avira/applock/a/a;->e:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 70
    invoke-virtual {v1}, Lcom/avira/applock/b/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 71
    iget-object v0, v0, Lcom/avira/applock/a/b;->c:Landroid/widget/TextView;

    .line 72
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :goto_0
    return-object p2

    .line 78
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-virtual {v1}, Lcom/avira/applock/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-boolean v1, p0, Lcom/avira/applock/a/a;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/avira/applock/a/a;->e:Z

    return v0
.end method
