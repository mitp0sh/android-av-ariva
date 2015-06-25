.class public final Lcom/avira/applock/c/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/avira/applock/c/d;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TableLayout;

.field private i:[I

.field private j:Z

.field private k:Landroid/text/TextWatcher;

.field private l:Landroid/widget/TextView$OnEditorActionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/applock/c/a;->j:Z

    .line 53
    new-instance v0, Lcom/avira/applock/c/b;

    invoke-direct {v0, p0}, Lcom/avira/applock/c/b;-><init>(Lcom/avira/applock/c/a;)V

    iput-object v0, p0, Lcom/avira/applock/c/a;->k:Landroid/text/TextWatcher;

    .line 79
    new-instance v0, Lcom/avira/applock/c/c;

    invoke-direct {v0, p0}, Lcom/avira/applock/c/c;-><init>(Lcom/avira/applock/c/a;)V

    iput-object v0, p0, Lcom/avira/applock/c/a;->l:Landroid/widget/TextView$OnEditorActionListener;

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/avira/applock/c/a;)Lcom/avira/applock/c/d;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avira/applock/c/a;->a:Lcom/avira/applock/c/d;

    return-object v0
.end method

.method static synthetic b(Lcom/avira/applock/c/a;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/avira/applock/c/a;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/avira/applock/c/a;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/avira/applock/c/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/avira/applock/c/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/avira/applock/c/a;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/avira/applock/c/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 397
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/avira/applock/c/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/avira/applock/c/a;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 281
    iget-object v0, p0, Lcom/avira/applock/c/a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avira/applock/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/avira/applock/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 282
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 438
    iget-object v1, p0, Lcom/avira/applock/c/a;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    return-void

    .line 438
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/avira/applock/c/a;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/avira/applock/c/a;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/avira/applock/c/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 294
    return-void
.end method

.method public final b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 449
    iput-boolean p1, p0, Lcom/avira/applock/c/a;->j:Z

    .line 451
    if-eqz p1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/avira/applock/c/a;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 456
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 457
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 458
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 459
    iget-object v0, p0, Lcom/avira/applock/c/a;->h:Landroid/widget/TableLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 461
    invoke-virtual {p0}, Lcom/avira/applock/c/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    invoke-virtual {p0}, Lcom/avira/applock/c/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 475
    :goto_0
    invoke-virtual {p0}, Lcom/avira/applock/c/a;->f()V

    .line 476
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/avira/applock/c/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 468
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 469
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 470
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 471
    iget-object v0, p0, Lcom/avira/applock/c/a;->h:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 385
    const-string v0, ""

    iget-object v1, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 386
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/avira/applock/c/a;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/avira/applock/c/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 314
    iget-object v0, p0, Lcom/avira/applock/c/a;->d:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 404
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/avira/applock/c/a;->a(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public final d(I)V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 367
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 416
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 417
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 427
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 428
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 152
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/avira/applock/c/d;

    move-object v1, v0

    iput-object v1, p0, Lcom/avira/applock/c/a;->a:Lcom/avira/applock/c/d;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    return-void

    .line 156
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/avira/applock/c/d;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 183
    sget v0, Lcom/avira/applock/d;->userinputscreen_delete_image:I

    if-ne v1, v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    sget v0, Lcom/avira/applock/d;->userinputscreen_numpad_enter_image:I

    if-ne v1, v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/avira/applock/c/a;->a:Lcom/avira/applock/c/d;

    invoke-direct {p0}, Lcom/avira/applock/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/avira/applock/c/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_2
    sget v0, Lcom/avira/applock/d;->userinputscreen_link_text:I

    if-ne v1, v0, :cond_3

    .line 194
    iget-object v1, p0, Lcom/avira/applock/c/a;->a:Lcom/avira/applock/c/d;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/avira/applock/c/d;->a(I)V

    goto :goto_0

    .line 196
    :cond_3
    sget v0, Lcom/avira/applock/d;->userinputscreen_numpad_cancel:I

    if-ne v1, v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/avira/applock/c/a;->a:Lcom/avira/applock/c/d;

    invoke-interface {v0}, Lcom/avira/applock/c/d;->b()V

    goto :goto_0

    .line 203
    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/avira/applock/c/a;->i:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/avira/applock/c/a;->i:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_5

    .line 207
    iget-object v2, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 203
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 164
    sget v0, Lcom/avira/applock/e;->user_input_screen_fragment:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 166
    sget v0, Lcom/avira/applock/d;->userinputscreen_title:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/applock/c/a;->b:Landroid/widget/TextView;

    sget v0, Lcom/avira/applock/d;->userinputscreen_desc:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/applock/c/a;->c:Landroid/widget/TextView;

    sget v0, Lcom/avira/applock/d;->userinputscreen_link_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/applock/c/a;->d:Landroid/widget/TextView;

    sget v0, Lcom/avira/applock/d;->userinputscreen_delete_image:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/avira/applock/c/a;->e:Landroid/widget/ImageView;

    sget v0, Lcom/avira/applock/d;->userinputscreen_edit_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    sget v0, Lcom/avira/applock/d;->userinputscreen_numpad_cancel:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avira/applock/c/a;->g:Landroid/widget/TextView;

    sget v0, Lcom/avira/applock/d;->userinputscreen_numpad_container:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/avira/applock/c/a;->h:Landroid/widget/TableLayout;

    iget-object v0, p0, Lcom/avira/applock/c/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/avira/applock/c/a;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/avira/applock/c/a;->g:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, p0, Lcom/avira/applock/c/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/applock/c/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/applock/c/a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/avira/applock/c/a;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/avira/applock/c/a;->f:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/avira/applock/c/a;->l:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/avira/applock/c/a;->h:Landroid/widget/TableLayout;

    sget v3, Lcom/avira/applock/d;->userinputscreen_numpad_enter_image:I

    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v3, Lcom/avira/applock/d;->userinputscreen_numpad_0:I

    aput v3, v0, v1

    sget v3, Lcom/avira/applock/d;->userinputscreen_numpad_1:I

    aput v3, v0, v4

    const/4 v3, 0x2

    sget v4, Lcom/avira/applock/d;->userinputscreen_numpad_2:I

    aput v4, v0, v3

    const/4 v3, 0x3

    sget v4, Lcom/avira/applock/d;->userinputscreen_numpad_3:I

    aput v4, v0, v3

    const/4 v3, 0x4

    sget v4, Lcom/avira/applock/d;->userinputscreen_numpad_4:I

    aput v4, v0, v3

    const/4 v3, 0x5

    sget v4, Lcom/avira/applock/d;->userinputscreen_numpad_5:I

    aput v4, v0, v3

    const/4 v3, 0x6

    sget v4, Lcom/avira/applock/d;->userinputscreen_numpad_6:I

    aput v4, v0, v3

    const/4 v3, 0x7

    sget v4, Lcom/avira/applock/d;->userinputscreen_numpad_7:I

    aput v4, v0, v3

    const/16 v3, 0x8

    sget v4, Lcom/avira/applock/d;->userinputscreen_numpad_8:I

    aput v4, v0, v3

    const/16 v3, 0x9

    sget v4, Lcom/avira/applock/d;->userinputscreen_numpad_9:I

    aput v4, v0, v3

    iput-object v0, p0, Lcom/avira/applock/c/a;->i:[I

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/avira/applock/c/a;->i:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/avira/applock/c/a;->h:Landroid/widget/TableLayout;

    iget-object v3, p0, Lcom/avira/applock/c/a;->i:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-object v2
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 175
    iget-object v0, p0, Lcom/avira/applock/c/a;->a:Lcom/avira/applock/c/d;

    invoke-interface {v0}, Lcom/avira/applock/c/d;->a()V

    .line 176
    return-void
.end method
