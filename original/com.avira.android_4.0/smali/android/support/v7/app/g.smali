.class final Landroid/support/v7/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;


# instance fields
.field final synthetic a:Landroid/support/v7/app/e;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/e;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/e;B)V
    .locals 0

    .prologue
    .line 591
    invoke-direct {p0, p1}, Landroid/support/v7/app/g;-><init>(Landroid/support/v7/app/e;)V

    return-void
.end method


# virtual methods
.method public final getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/e;

    iget-object v0, v0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-static {}, Landroid/support/v7/app/e;->m()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 597
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 598
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 599
    return-object v1
.end method

.method public final setActionBarDescription(I)V
    .locals 0

    .prologue
    .line 612
    return-void
.end method

.method public final setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/e;

    invoke-static {v0}, Landroid/support/v7/app/e;->c(Landroid/support/v7/app/e;)Landroid/support/v7/internal/widget/ActionBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Landroid/support/v7/app/g;->a:Landroid/support/v7/app/e;

    invoke-static {v0}, Landroid/support/v7/app/e;->c(Landroid/support/v7/app/e;)Landroid/support/v7/internal/widget/ActionBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 607
    :cond_0
    return-void
.end method
