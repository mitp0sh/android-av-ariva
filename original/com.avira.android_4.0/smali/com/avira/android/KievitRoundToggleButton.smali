.class public Lcom/avira/android/KievitRoundToggleButton;
.super Landroid/widget/ToggleButton;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lcom/avira/android/KievitRoundToggleButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lcom/avira/android/KievitRoundToggleButton;->init(Landroid/content/Context;)V

    .line 41
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Lcom/avira/android/KievitRoundToggleButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-direct {p0, p1}, Lcom/avira/android/KievitRoundToggleButton;->init(Landroid/content/Context;)V

    .line 32
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-virtual {p0}, Lcom/avira/android/KievitRoundToggleButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    invoke-direct {p0, p1}, Lcom/avira/android/KievitRoundToggleButton;->init(Landroid/content/Context;)V

    .line 23
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/avira/android/utilities/f;->KIEVIT_NORMAL:Lcom/avira/android/utilities/f;

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Lcom/avira/android/utilities/d;->a(Landroid/content/Context;Landroid/widget/TextView;Lcom/avira/android/utilities/f;I)V

    .line 58
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/ToggleButton;->onMeasure(II)V

    .line 47
    invoke-virtual {p0}, Lcom/avira/android/KievitRoundToggleButton;->getMeasuredHeight()I

    move-result v0

    .line 48
    invoke-virtual {p0}, Lcom/avira/android/KievitRoundToggleButton;->getMeasuredWidth()I

    move-result v1

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 50
    invoke-virtual {p0, v0, v0}, Lcom/avira/android/KievitRoundToggleButton;->setMeasuredDimension(II)V

    .line 52
    invoke-virtual {p0}, Lcom/avira/android/KievitRoundToggleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avira/android/KievitRoundToggleButton;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method
