.class public final Lcom/facebook/b/bt;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private isLiked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 43
    iput-boolean p2, p0, Lcom/facebook/b/bt;->isLiked:Z

    .line 45
    invoke-direct {p0}, Lcom/facebook/b/bt;->initialize()V

    .line 46
    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    .line 59
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/b/bt;->setGravity(I)V

    .line 60
    invoke-virtual {p0}, Lcom/facebook/b/bt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/b;->com_facebook_likebutton_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/b/bt;->setTextColor(I)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/facebook/b/bt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/a/c;->com_facebook_likebutton_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/b/bt;->setTextSize(IF)V

    .line 63
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/facebook/b/bt;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    invoke-virtual {p0}, Lcom/facebook/b/bt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/c;->com_facebook_likebutton_compound_drawable_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/b/bt;->setCompoundDrawablePadding(I)V

    .line 67
    invoke-virtual {p0}, Lcom/facebook/b/bt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/c;->com_facebook_likebutton_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/b/bt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/a/c;->com_facebook_likebutton_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/b/bt;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/a/c;->com_facebook_likebutton_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/b/bt;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/a/c;->com_facebook_likebutton_padding_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/facebook/b/bt;->setPadding(IIII)V

    .line 73
    invoke-direct {p0}, Lcom/facebook/b/bt;->updateForLikeStatus()V

    .line 74
    return-void
.end method

.method private updateForLikeStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-boolean v0, p0, Lcom/facebook/b/bt;->isLiked:Z

    if-eqz v0, :cond_0

    .line 78
    sget v0, Lcom/facebook/a/d;->com_facebook_button_like_selected:I

    invoke-virtual {p0, v0}, Lcom/facebook/b/bt;->setBackgroundResource(I)V

    .line 79
    sget v0, Lcom/facebook/a/d;->com_facebook_button_like_icon_selected:I

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/facebook/b/bt;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 80
    invoke-virtual {p0}, Lcom/facebook/b/bt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/g;->com_facebook_like_button_liked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/b/bt;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    sget v0, Lcom/facebook/a/d;->com_facebook_button_like:I

    invoke-virtual {p0, v0}, Lcom/facebook/b/bt;->setBackgroundResource(I)V

    .line 83
    sget v0, Lcom/facebook/a/d;->com_facebook_button_like_icon:I

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/facebook/b/bt;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 84
    invoke-virtual {p0}, Lcom/facebook/b/bt;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/g;->com_facebook_like_button_not_liked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/b/bt;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final setLikeState(Z)V
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/facebook/b/bt;->isLiked:Z

    if-eq p1, v0, :cond_0

    .line 50
    iput-boolean p1, p0, Lcom/facebook/b/bt;->isLiked:Z

    .line 51
    invoke-direct {p0}, Lcom/facebook/b/bt;->updateForLikeStatus()V

    .line 53
    :cond_0
    return-void
.end method
