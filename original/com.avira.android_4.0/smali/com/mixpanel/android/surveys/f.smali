.class final Lcom/mixpanel/android/surveys/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

.field private b:Lcom/mixpanel/android/mpmetrics/ar;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/surveys/CardCarouselLayout;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 439
    iput-object p1, p0, Lcom/mixpanel/android/surveys/f;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p2, p0, Lcom/mixpanel/android/surveys/f;->c:Landroid/view/View;

    .line 441
    const-string v0, "com_mixpanel_android_TAG_prompt_text"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mixpanel/android/surveys/f;->d:Landroid/widget/TextView;

    .line 442
    const-string v0, "com_mixpanel_android_TAG_text_answer"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mixpanel/android/surveys/f;->e:Landroid/widget/TextView;

    .line 443
    const-string v0, "com_mixpanel_android_TAG_choice_list"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mixpanel/android/surveys/f;->f:Landroid/widget/ListView;

    .line 444
    iget-object v0, p0, Lcom/mixpanel/android/surveys/f;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v0, p0, Lcom/mixpanel/android/surveys/f;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/mixpanel/android/surveys/g;

    invoke-direct {v1, p0, p1}, Lcom/mixpanel/android/surveys/g;-><init>(Lcom/mixpanel/android/surveys/f;Lcom/mixpanel/android/surveys/CardCarouselLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 465
    iget-object v0, p0, Lcom/mixpanel/android/surveys/f;->f:Landroid/widget/ListView;

    new-instance v1, Lcom/mixpanel/android/surveys/h;

    invoke-direct {v1, p0, p1}, Lcom/mixpanel/android/surveys/h;-><init>(Lcom/mixpanel/android/surveys/f;Lcom/mixpanel/android/surveys/CardCarouselLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 480
    return-void
.end method

.method static synthetic a(Lcom/mixpanel/android/surveys/f;)Lcom/mixpanel/android/mpmetrics/ar;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/mixpanel/android/surveys/f;->b:Lcom/mixpanel/android/mpmetrics/ar;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/mixpanel/android/surveys/f;->c:Landroid/view/View;

    return-object v0
.end method

.method public final a(Lcom/mixpanel/android/mpmetrics/ar;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 488
    iput-object p1, p0, Lcom/mixpanel/android/surveys/f;->b:Lcom/mixpanel/android/mpmetrics/ar;

    .line 489
    iget-object v0, p0, Lcom/mixpanel/android/surveys/f;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mixpanel/android/surveys/f;->b:Lcom/mixpanel/android/mpmetrics/ar;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/ar;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Lcom/mixpanel/android/surveys/f;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 492
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/ar;->d()Lcom/mixpanel/android/mpmetrics/as;

    move-result-object v2

    .line 493
    sget-object v3, Lcom/mixpanel/android/mpmetrics/as;->TEXT:Lcom/mixpanel/android/mpmetrics/as;

    if-ne v3, v2, :cond_3

    .line 494
    iget-object v2, p0, Lcom/mixpanel/android/surveys/f;->f:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 495
    iget-object v2, p0, Lcom/mixpanel/android/surveys/f;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    if-eqz p2, :cond_0

    .line 497
    iget-object v2, p0, Lcom/mixpanel/android/surveys/f;->e:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    :cond_0
    iget-object v2, p0, Lcom/mixpanel/android/surveys/f;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-virtual {v2}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_2

    .line 500
    iget-object v2, p0, Lcom/mixpanel/android/surveys/f;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 501
    iget-object v2, p0, Lcom/mixpanel/android/surveys/f;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 524
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mixpanel/android/surveys/f;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 525
    return-void

    .line 504
    :cond_2
    iget-object v2, p0, Lcom/mixpanel/android/surveys/f;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 506
    :cond_3
    sget-object v3, Lcom/mixpanel/android/mpmetrics/as;->MULTIPLE_CHOICE:Lcom/mixpanel/android/mpmetrics/as;

    if-ne v3, v2, :cond_5

    .line 507
    iget-object v2, p0, Lcom/mixpanel/android/surveys/f;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 508
    iget-object v0, p0, Lcom/mixpanel/android/surveys/f;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/mixpanel/android/surveys/f;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    new-instance v2, Lcom/mixpanel/android/surveys/c;

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/ar;->c()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/mixpanel/android/surveys/f;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-virtual {v3}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/mixpanel/android/surveys/c;-><init>(Ljava/util/List;Landroid/view/LayoutInflater;)V

    .line 511
    iget-object v0, p0, Lcom/mixpanel/android/surveys/f;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 512
    iget-object v0, p0, Lcom/mixpanel/android/surveys/f;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 513
    if-eqz p2, :cond_1

    move v0, v1

    .line 514
    :goto_1
    invoke-virtual {v2}, Lcom/mixpanel/android/surveys/c;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 515
    invoke-virtual {v2, v0}, Lcom/mixpanel/android/surveys/c;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 517
    iget-object v1, p0, Lcom/mixpanel/android/surveys/f;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 514
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 522
    :cond_5
    new-instance v0, Lcom/mixpanel/android/surveys/j;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No way to display question type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/mixpanel/android/surveys/j;-><init>(Ljava/lang/String;B)V

    throw v0
.end method
