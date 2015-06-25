.class public final Lcom/avira/android/dashboard/ad;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final ARG_PAGE:Ljava/lang/String; = "page"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 39
    return-void
.end method

.method public static a(I)Lcom/avira/android/dashboard/ad;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/avira/android/dashboard/ad;

    invoke-direct {v0}, Lcom/avira/android/dashboard/ad;-><init>()V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string v2, "page"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    invoke-virtual {v0, v1}, Lcom/avira/android/dashboard/ad;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/avira/android/dashboard/ad;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avira/android/dashboard/ad;->a:I

    .line 46
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const v6, 0x7f0e01ec

    const v4, 0x7f0200db

    const/4 v2, 0x0

    const v1, 0x7f080338

    .line 51
    const v0, 0x7f0300a1

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 52
    iget v3, p0, Lcom/avira/android/dashboard/ad;->a:I

    packed-switch v3, :pswitch_data_0

    const v3, 0x7f080332

    const v2, 0x7f080333

    const v1, 0x7f08033e

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_0
    const v1, 0x7f0e01e9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0e01ea

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0e01eb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    if-eqz v2, :cond_0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 53
    :goto_1
    return-object v0

    .line 52
    :pswitch_0
    const v4, 0x7f020001

    const v3, 0x7f080334

    const v2, 0x7f080335

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    :pswitch_1
    const v4, 0x7f0200c1

    const v3, 0x7f080336

    const v2, 0x7f080337

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    :pswitch_2
    const v3, 0x7f08035b

    const v1, 0x7f08035c

    move v5, v4

    move v4, v3

    move v3, v1

    goto :goto_0

    :pswitch_3
    const v4, 0x7f020008

    const v3, 0x7f080367

    const v2, 0x7f080368

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
