.class public final Lcom/avira/android/userprofile/k;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/userprofile/g;


# static fields
.field public static final PROFILE_PICTURE_CORNERS_ROUNDNESS:I = 0x1e


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private final d:Lcom/avira/android/userprofile/q;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 57
    new-instance v0, Lcom/avira/android/userprofile/q;

    invoke-direct {v0, p0}, Lcom/avira/android/userprofile/q;-><init>(Lcom/avira/android/userprofile/g;)V

    iput-object v0, p0, Lcom/avira/android/userprofile/k;->d:Lcom/avira/android/userprofile/q;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/avira/android/userprofile/k;)Lcom/avira/android/userprofile/q;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->d:Lcom/avira/android/userprofile/q;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/android/userprofile/k;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/avira/android/userprofile/k;->i:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 213
    invoke-static {p1}, Lcom/avira/android/utilities/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/avira/android/userprofile/k;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avira/android/userprofile/k;->a(Z)V

    .line 218
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Lcom/avira/android/userprofile/k;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    return-void

    .line 155
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/avira/android/userprofile/k;->i:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/avira/android/userprofile/k;->i:Z

    .line 283
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    return-void
.end method

.method public final synthetic f()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->d:Lcom/avira/android/userprofile/q;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/q;->f()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->d:Lcom/avira/android/userprofile/q;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/q;->g()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->d:Lcom/avira/android/userprofile/q;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/q;->h()V

    .line 310
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->d:Lcom/avira/android/userprofile/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avira/android/userprofile/q;->a(IILandroid/content/Intent;)V

    .line 150
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 129
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->d:Lcom/avira/android/userprofile/q;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/q;->d()V

    .line 130
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->d:Lcom/avira/android/userprofile/q;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/q;->a()V

    .line 65
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    const v0, 0x7f0300ae

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avira/android/userprofile/k;->a:Landroid/widget/LinearLayout;

    .line 71
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0230

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/userprofile/k;->b:Landroid/widget/EditText;

    .line 72
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0232

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/android/userprofile/k;->c:Landroid/widget/EditText;

    .line 73
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00e8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/android/userprofile/k;->e:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0e022f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/userprofile/k;->f:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0231

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/userprofile/k;->g:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0233

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/android/userprofile/k;->h:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/avira/android/userprofile/l;

    invoke-direct {v1, p0}, Lcom/avira/android/userprofile/l;-><init>(Lcom/avira/android/userprofile/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v0, Lcom/avira/android/userprofile/m;

    invoke-direct {v0, p0}, Lcom/avira/android/userprofile/m;-><init>(Lcom/avira/android/userprofile/k;)V

    .line 100
    iget-object v1, p0, Lcom/avira/android/userprofile/k;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    iget-object v1, p0, Lcom/avira/android/userprofile/k;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/avira/android/userprofile/n;

    invoke-direct {v1, p0}, Lcom/avira/android/userprofile/n;-><init>(Lcom/avira/android/userprofile/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 120
    new-instance v0, Lcom/avira/android/userprofile/o;

    invoke-direct {v0, p0, v2}, Lcom/avira/android/userprofile/o;-><init>(Lcom/avira/android/userprofile/k;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avira/android/userprofile/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final onDetach()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 136
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->d:Lcom/avira/android/userprofile/q;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/q;->e()V

    .line 137
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Lcom/avira/android/userprofile/k;->d:Lcom/avira/android/userprofile/q;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/q;->b()V

    .line 144
    return-void
.end method
