.class public final Lcom/avira/android/blacklist/a/m;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/avira/android/blacklist/model/BLHistoryItem;",
        ">;"
    }
.end annotation


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
            "Lcom/avira/android/blacklist/model/BLHistoryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    const v0, 0x109000a

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/avira/android/blacklist/a/m;->a:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 34
    if-nez p2, :cond_0

    .line 36
    iget-object v0, p0, Lcom/avira/android/blacklist/a/m;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03007a

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 37
    new-instance v1, Lcom/avira/android/blacklist/a/n;

    invoke-direct {v1, p0, v3}, Lcom/avira/android/blacklist/a/n;-><init>(Lcom/avira/android/blacklist/a/m;B)V

    .line 38
    const v0, 0x7f0e0186

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/avira/android/blacklist/a/n;->a:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0e0168

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/avira/android/blacklist/a/n;->b:Landroid/widget/RelativeLayout;

    .line 40
    const v0, 0x7f0e0188

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/avira/android/blacklist/a/n;->c:Landroid/widget/RelativeLayout;

    .line 41
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :goto_0
    invoke-virtual {p0, p1}, Lcom/avira/android/blacklist/a/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/BLHistoryItem;

    .line 50
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 52
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 53
    iget-object v2, v1, Lcom/avira/android/blacklist/a/n;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    iget-object v2, v1, Lcom/avira/android/blacklist/a/n;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 63
    :goto_1
    iget-object v1, v1, Lcom/avira/android/blacklist/a/n;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/BLHistoryItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-object p2

    .line 45
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/a/n;

    move-object v1, v0

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 59
    iget-object v2, v1, Lcom/avira/android/blacklist/a/n;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 60
    iget-object v2, v1, Lcom/avira/android/blacklist/a/n;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method
