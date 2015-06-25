.class public final Lcom/avira/android/custom/ag;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/avira/android/custom/SpinnerDialogItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_LAYOUT_ID:I = 0x7f0300a3


# instance fields
.field final synthetic a:Lcom/avira/android/custom/ad;


# direct methods
.method public constructor <init>(Lcom/avira/android/custom/ad;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/custom/SpinnerDialogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/avira/android/custom/ag;->a:Lcom/avira/android/custom/ad;

    .line 55
    const v0, 0x7f0300a3

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 56
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewHolder"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p0, p1}, Lcom/avira/android/custom/ag;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/SpinnerDialogItem;

    .line 65
    invoke-virtual {p0}, Lcom/avira/android/custom/ag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 66
    invoke-virtual {v0}, Lcom/avira/android/custom/SpinnerDialogItem;->e()Z

    move-result v4

    .line 67
    if-eqz v4, :cond_3

    const v1, 0x7f0300a3

    :goto_0
    invoke-virtual {v2, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 70
    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/avira/android/custom/ag;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f070084

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 73
    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 76
    :cond_0
    const v2, 0x7f0e01ef

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 77
    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/avira/android/custom/SpinnerDialogItem;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_1
    const v2, 0x7f0e01f0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 82
    if-eqz v2, :cond_2

    .line 84
    invoke-virtual {v0}, Lcom/avira/android/custom/SpinnerDialogItem;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 87
    :cond_2
    if-nez v4, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 88
    return-object v1

    .line 67
    :cond_3
    const v1, 0x7f030099

    goto :goto_0

    :cond_4
    move v0, v3

    .line 87
    goto :goto_1
.end method
