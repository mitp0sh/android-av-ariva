.class public final Lcom/avira/android/featuresintroduction/e;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/android/featuresintroduction/e;->a:Z

    return-void
.end method

.method public static final a(IIII)Lcom/avira/android/featuresintroduction/e;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/avira/android/featuresintroduction/e;

    invoke-direct {v0}, Lcom/avira/android/featuresintroduction/e;-><init>()V

    .line 46
    iput p0, v0, Lcom/avira/android/featuresintroduction/e;->b:I

    .line 47
    iput p1, v0, Lcom/avira/android/featuresintroduction/e;->c:I

    .line 48
    iput p2, v0, Lcom/avira/android/featuresintroduction/e;->d:I

    .line 49
    iput p3, v0, Lcom/avira/android/featuresintroduction/e;->e:I

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avira/android/featuresintroduction/e;->setRetainInstance(Z)V

    .line 53
    return-object v0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/featuresintroduction/e;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 60
    new-instance v1, Lcom/avira/android/featuresintroduction/e;

    invoke-direct {v1}, Lcom/avira/android/featuresintroduction/e;-><init>()V

    .line 62
    iput-boolean v4, v1, Lcom/avira/android/featuresintroduction/e;->a:Z

    .line 63
    const v0, 0x7f020013

    iput v0, v1, Lcom/avira/android/featuresintroduction/e;->b:I

    .line 64
    new-instance v0, Lcom/avira/android/userprofile/x;

    invoke-direct {v0}, Lcom/avira/android/userprofile/x;-><init>()V

    .line 65
    invoke-virtual {v0, p0}, Lcom/avira/android/userprofile/x;->c(Ljava/lang/String;)[B

    move-result-object v2

    .line 66
    const/4 v0, 0x0

    .line 67
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 69
    const/4 v0, 0x0

    array-length v3, v2

    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 70
    invoke-static {v2}, Lcom/avira/android/utilities/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    :cond_0
    iput-object v0, v1, Lcom/avira/android/featuresintroduction/e;->f:Landroid/graphics/Bitmap;

    .line 76
    const v0, 0x7f0200e3

    iput v0, v1, Lcom/avira/android/featuresintroduction/e;->c:I

    .line 77
    iput-object p1, v1, Lcom/avira/android/featuresintroduction/e;->g:Ljava/lang/String;

    .line 78
    iput-object p2, v1, Lcom/avira/android/featuresintroduction/e;->h:Ljava/lang/String;

    .line 79
    iput-object p3, v1, Lcom/avira/android/featuresintroduction/e;->i:Ljava/lang/String;

    .line 81
    invoke-virtual {v1, v4}, Lcom/avira/android/featuresintroduction/e;->setRetainInstance(Z)V

    .line 83
    return-object v1
.end method


# virtual methods
.method public final a([B)V
    .locals 2

    .prologue
    .line 209
    .line 210
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/avira/android/utilities/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 215
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    iput-object v1, p0, Lcom/avira/android/featuresintroduction/e;->f:Landroid/graphics/Bitmap;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/e;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/avira/android/featuresintroduction/e;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/avira/android/featuresintroduction/e;->a:Z

    if-eqz v0, :cond_1

    const v0, 0x7f030056

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 93
    const v1, 0x7f0e011d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 94
    const v1, 0x7f0e011e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/avira/android/featuresintroduction/e;->j:Landroid/widget/ImageView;

    .line 95
    const v1, 0x7f0e011f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 96
    const v2, 0x7f0e0120

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    iget v4, p0, Lcom/avira/android/featuresintroduction/e;->b:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    iget-object v3, p0, Lcom/avira/android/featuresintroduction/e;->f:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 101
    iget-object v3, p0, Lcom/avira/android/featuresintroduction/e;->j:Landroid/widget/ImageView;

    iget v4, p0, Lcom/avira/android/featuresintroduction/e;->c:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    :goto_1
    iget-object v3, p0, Lcom/avira/android/featuresintroduction/e;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    iget v3, p0, Lcom/avira/android/featuresintroduction/e;->d:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 112
    :goto_2
    iget-object v1, p0, Lcom/avira/android/featuresintroduction/e;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    iget v1, p0, Lcom/avira/android/featuresintroduction/e;->e:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    :goto_3
    iget-boolean v1, p0, Lcom/avira/android/featuresintroduction/e;->a:Z

    if-eqz v1, :cond_0

    .line 119
    const v1, 0x7f0e0121

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avira/android/featuresintroduction/e;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    return-object v0

    .line 89
    :cond_1
    const v0, 0x7f030055

    goto :goto_0

    .line 104
    :cond_2
    iget-object v3, p0, Lcom/avira/android/featuresintroduction/e;->j:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/avira/android/featuresintroduction/e;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 110
    :cond_3
    iget-object v3, p0, Lcom/avira/android/featuresintroduction/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/avira/android/featuresintroduction/e;->h:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public final onDetach()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 129
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/e;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/avira/android/featuresintroduction/e;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 131
    :cond_0
    return-void
.end method
