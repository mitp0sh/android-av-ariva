.class public Lcom/avira/android/KievitLightBoldTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0}, Lcom/avira/android/KievitLightBoldTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0, p1}, Lcom/avira/android/KievitLightBoldTextView;->init(Landroid/content/Context;)V

    .line 45
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Lcom/avira/android/KievitLightBoldTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-direct {p0, p1}, Lcom/avira/android/KievitLightBoldTextView;->init(Landroid/content/Context;)V

    .line 36
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-virtual {p0}, Lcom/avira/android/KievitLightBoldTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0, p1}, Lcom/avira/android/KievitLightBoldTextView;->init(Landroid/content/Context;)V

    .line 27
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/avira/android/utilities/f;->KIEVIT_LIGHT:Lcom/avira/android/utilities/f;

    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Lcom/avira/android/utilities/d;->a(Landroid/content/Context;Landroid/widget/TextView;Lcom/avira/android/utilities/f;I)V

    .line 50
    return-void
.end method
