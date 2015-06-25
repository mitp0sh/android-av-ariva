.class public final Lcom/avira/android/blacklist/a/k;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/avira/android/blacklist/model/BLContactHistory;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_CAP_PRESENTABLE_REPRESENTATION:Ljava/lang/String; = "9+"


# instance fields
.field private final a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/blacklist/model/BLContactHistory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    const v0, 0x109000a

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/avira/android/blacklist/a/k;->a:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "9+"

    goto :goto_0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 33
    if-nez p2, :cond_0

    .line 35
    iget-object v0, p0, Lcom/avira/android/blacklist/a/k;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 37
    new-instance v1, Lcom/avira/android/blacklist/a/l;

    invoke-direct {v1, p0, v2}, Lcom/avira/android/blacklist/a/l;-><init>(Lcom/avira/android/blacklist/a/k;B)V

    .line 39
    const v0, 0x7f0e0066

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avira/android/blacklist/a/l;->a:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0e0077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avira/android/blacklist/a/l;->b:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0e0079

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avira/android/blacklist/a/l;->c:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0e0078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/avira/android/blacklist/a/l;->d:Landroid/widget/ImageView;

    .line 43
    const v0, 0x7f0e007a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/avira/android/blacklist/a/l;->e:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/a/l;

    .line 50
    invoke-virtual {p0, p1}, Lcom/avira/android/blacklist/a/k;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/android/blacklist/model/BLContactHistory;

    .line 52
    iget-object v3, v0, Lcom/avira/android/blacklist/a/l;->d:Landroid/widget/ImageView;

    sget-object v2, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1, v2}, Lcom/avira/android/blacklist/model/BLContactHistory;->b(Lcom/avira/android/blacklist/d/j;)I

    move-result v2

    if-lez v2, :cond_1

    const v2, 0x7f02001f

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    iget-object v3, v0, Lcom/avira/android/blacklist/a/l;->e:Landroid/widget/ImageView;

    sget-object v2, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1, v2}, Lcom/avira/android/blacklist/model/BLContactHistory;->b(Lcom/avira/android/blacklist/d/j;)I

    move-result v2

    if-lez v2, :cond_2

    const v2, 0x7f02001c

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v2, v0, Lcom/avira/android/blacklist/a/l;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/model/BLContactHistory;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    sget-object v2, Lcom/avira/android/blacklist/d/j;->SMS:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1, v2}, Lcom/avira/android/blacklist/model/BLContactHistory;->c(Lcom/avira/android/blacklist/d/j;)I

    move-result v2

    .line 63
    sget-object v3, Lcom/avira/android/blacklist/d/j;->CALL:Lcom/avira/android/blacklist/d/j;

    invoke-virtual {v1, v3}, Lcom/avira/android/blacklist/model/BLContactHistory;->c(Lcom/avira/android/blacklist/d/j;)I

    move-result v1

    .line 65
    iget-object v3, v0, Lcom/avira/android/blacklist/a/l;->b:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/avira/android/blacklist/a/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, v0, Lcom/avira/android/blacklist/a/l;->c:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/avira/android/blacklist/a/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-object p2

    .line 52
    :cond_1
    const v2, 0x7f02001e

    goto :goto_0

    .line 56
    :cond_2
    const v2, 0x7f02001b

    goto :goto_1
.end method
