.class public final Lcom/avira/android/antivirus/ag;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/avira/android/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/a/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    const v0, 0x109000a

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 20
    iput-object p2, p0, Lcom/avira/android/antivirus/ag;->a:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avira/android/antivirus/ag;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/a/b;

    .line 27
    if-nez p2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/avira/android/antivirus/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 31
    const v2, 0x7f03007b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 33
    new-instance v2, Lcom/avira/android/antivirus/ah;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/avira/android/antivirus/ah;-><init>(Lcom/avira/android/antivirus/ag;B)V

    .line 34
    const v1, 0x7f0e0189

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/avira/android/antivirus/ah;->a:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avira/android/antivirus/ah;

    .line 39
    iget-object v1, v1, Lcom/avira/android/antivirus/ah;->a:Landroid/widget/TextView;

    .line 41
    invoke-virtual {v0}, Lcom/avira/android/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-object p2
.end method
