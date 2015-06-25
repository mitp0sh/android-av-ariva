.class public final Lcom/avira/android/blacklist/a/a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/avira/android/blacklist/model/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/j;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/model/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    const v0, 0x7f030012

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 28
    iput-object p2, p0, Lcom/avira/android/blacklist/a/a;->a:Ljava/util/ArrayList;

    .line 29
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/avira/android/blacklist/a/a;->b:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 35
    .line 37
    if-nez p2, :cond_0

    .line 39
    iget-object v0, p0, Lcom/avira/android/blacklist/a/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/j;

    .line 44
    if-eqz v0, :cond_2

    .line 46
    const v1, 0x7f0e004d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    const v2, 0x7f0e004e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_1
    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_2
    return-object p2
.end method
