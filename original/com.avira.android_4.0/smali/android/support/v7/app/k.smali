.class Landroid/support/v7/app/k;
.super Landroid/support/v7/app/ActionBar;
.source "SourceFile"


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1


# instance fields
.field final a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/Context;

.field private d:Landroid/support/v7/app/ActionBarActivity;

.field private e:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field private f:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/support/v7/internal/widget/ActionBarView;

.field private i:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private j:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private k:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/ActionBarImplBase$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Z

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Z

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/support/v7/app/a;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 106
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/k;->l:Ljava/util/ArrayList;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/k;->m:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/k;->o:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/k;->a:Landroid/os/Handler;

    .line 95
    iput v2, p0, Landroid/support/v7/app/k;->r:I

    .line 101
    iput-boolean v1, p0, Landroid/support/v7/app/k;->v:Z

    .line 107
    iput-object p1, p0, Landroid/support/v7/app/k;->d:Landroid/support/v7/app/ActionBarActivity;

    .line 108
    iput-object p1, p0, Landroid/support/v7/app/k;->b:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Landroid/support/v7/app/k;->x:Landroid/support/v7/app/a;

    .line 110
    iget-object v3, p0, Landroid/support/v7/app/k;->d:Landroid/support/v7/app/ActionBarActivity;

    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroid/support/v7/app/k;->e:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Landroid/support/v7/app/k;->e:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k;->e:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setActionBar(Landroid/support/v7/app/ActionBar;)V

    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;

    iput-object v0, p0, Landroid/support/v7/app/k;->h:Landroid/support/v7/internal/widget/ActionBarView;

    sget v0, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/app/k;->i:Landroid/support/v7/internal/widget/ActionBarContextView;

    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/app/k;->f:Landroid/support/v7/internal/widget/ActionBarContainer;

    sget v0, Landroid/support/v7/appcompat/R$id;->top_action_bar:I

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v7/app/k;->g:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/support/v7/app/k;->g:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/k;->f:Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/app/k;->g:Landroid/view/ViewGroup;

    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$id;->split_action_bar:I

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/app/k;->j:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v0, p0, Landroid/support/v7/app/k;->h:Landroid/support/v7/internal/widget/ActionBarView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k;->i:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k;->f:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/k;->h:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v3, p0, Landroid/support/v7/app/k;->i:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setContextView(Landroid/support/v7/internal/widget/ActionBarContextView;)V

    iget-object v0, p0, Landroid/support/v7/app/k;->h:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/support/v7/app/k;->p:I

    iget-object v0, p0, Landroid/support/v7/app/k;->h:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iput-boolean v1, p0, Landroid/support/v7/app/k;->n:Z

    :cond_4
    iget-object v3, p0, Landroid/support/v7/app/k;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/internal/view/a;->e()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/k;->h:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    invoke-virtual {v3}, Landroid/support/v7/internal/view/a;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/k;->b(Z)V

    iget-object v0, p0, Landroid/support/v7/app/k;->d:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k;->h:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    return-void

    :cond_7
    move v0, v2

    .line 110
    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    iput-boolean p1, p0, Landroid/support/v7/app/k;->q:Z

    .line 157
    iget-boolean v0, p0, Landroid/support/v7/app/k;->q:Z

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Landroid/support/v7/app/k;->h:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 159
    iget-object v0, p0, Landroid/support/v7/app/k;->f:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v3, p0, Landroid/support/v7/app/k;->k:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 164
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/k;->h:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 165
    :goto_1
    iget-object v3, p0, Landroid/support/v7/app/k;->k:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 166
    if-eqz v0, :cond_3

    .line 167
    iget-object v3, p0, Landroid/support/v7/app/k;->k:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 172
    :cond_0
    :goto_2
    iget-object v3, p0, Landroid/support/v7/app/k;->h:Landroid/support/v7/internal/widget/ActionBarView;

    iget-boolean v4, p0, Landroid/support/v7/app/k;->q:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 173
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k;->f:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 162
    iget-object v0, p0, Landroid/support/v7/app/k;->h:Landroid/support/v7/internal/widget/ActionBarView;

    iget-object v3, p0, Landroid/support/v7/app/k;->k:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarView;->setEmbeddedTabView(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 164
    goto :goto_1

    .line 169
    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/k;->k:Landroid/support/v7/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 172
    goto :goto_3
.end method

.method private g()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 960
    iget-boolean v2, p0, Landroid/support/v7/app/k;->s:Z

    iget-boolean v3, p0, Landroid/support/v7/app/k;->t:Z

    iget-boolean v4, p0, Landroid/support/v7/app/k;->u:Z

    if-nez v4, :cond_4

    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    move v2, v1

    .line 962
    :goto_0
    if-eqz v2, :cond_6

    .line 963
    iget-boolean v2, p0, Landroid/support/v7/app/k;->v:Z

    if-nez v2, :cond_3

    .line 964
    iput-boolean v0, p0, Landroid/support/v7/app/k;->v:Z

    .line 965
    iget-object v2, p0, Landroid/support/v7/app/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v2, p0, Landroid/support/v7/app/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/app/k;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/k;->b:Landroid/content/Context;

    sget v3, Landroid/support/v7/appcompat/R$anim;->abc_slide_in_top:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Landroid/support/v7/app/k;->j:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/app/k;->j:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/k;->b:Landroid/content/Context;

    sget v2, Landroid/support/v7/appcompat/R$anim;->abc_slide_in_bottom:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/app/k;->j:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/k;->j:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 973
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v0

    .line 960
    goto :goto_0

    :cond_5
    move v0, v1

    .line 965
    goto :goto_1

    .line 968
    :cond_6
    iget-boolean v2, p0, Landroid/support/v7/app/k;->v:Z

    if-eqz v2, :cond_3

    .line 969
    iput-boolean v1, p0, Landroid/support/v7/app/k;->v:Z

    .line 970
    iget-object v2, p0, Landroid/support/v7/app/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v2, p0, Landroid/support/v7/app/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v5, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/app/k;->f()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_3
    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/support/v7/app/k;->b:Landroid/content/Context;

    sget v2, Landroid/support/v7/appcompat/R$anim;->abc_slide_out_top:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    iget-object v1, p0, Landroid/support/v7/app/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v7/app/k;->j:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/app/k;->j:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_3

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/app/k;->b:Landroid/content/Context;

    sget v1, Landroid/support/v7/appcompat/R$anim;->abc_slide_out_bottom:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/k;->j:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v7/app/k;->j:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Landroid/support/v7/app/k;->h:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 976
    iput-boolean p1, p0, Landroid/support/v7/app/k;->w:Z

    .line 977
    if-nez p1, :cond_0

    .line 978
    iget-object v0, p0, Landroid/support/v7/app/k;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 979
    iget-object v0, p0, Landroid/support/v7/app/k;->j:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Landroid/support/v7/app/k;->j:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->clearAnimation()V

    .line 983
    :cond_0
    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 4

    .prologue
    .line 502
    iget-object v0, p0, Landroid/support/v7/app/k;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 504
    iget-object v1, p0, Landroid/support/v7/app/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 505
    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 506
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 508
    if-eqz v0, :cond_1

    .line 509
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/app/k;->b:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/app/k;->c:Landroid/content/Context;

    .line 514
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/k;->c:Landroid/content/Context;

    return-object v0

    .line 511
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k;->b:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/app/k;->c:Landroid/content/Context;

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/v7/app/k;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/k;->b(Z)V

    .line 152
    return-void
.end method

.method final d()V
    .locals 1

    .prologue
    .line 531
    iget-boolean v0, p0, Landroid/support/v7/app/k;->u:Z

    if-nez v0, :cond_0

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/k;->u:Z

    .line 533
    invoke-direct {p0}, Landroid/support/v7/app/k;->g()V

    .line 535
    :cond_0
    return-void
.end method

.method final e()V
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Landroid/support/v7/app/k;->u:Z

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/k;->u:Z

    .line 548
    invoke-direct {p0}, Landroid/support/v7/app/k;->g()V

    .line 550
    :cond_0
    return-void
.end method

.method f()Z
    .locals 1

    .prologue
    .line 1033
    iget-boolean v0, p0, Landroid/support/v7/app/k;->w:Z

    return v0
.end method
