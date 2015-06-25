.class public final Landroid/support/v7/internal/view/menu/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/a/a/b;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/content/Intent;

.field private h:C

.field private i:C

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:Landroid/support/v7/internal/view/menu/o;

.field private m:Landroid/support/v7/internal/view/menu/aj;

.field private n:Ljava/lang/Runnable;

.field private o:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private p:I

.field private q:I

.field private r:Landroid/view/View;

.field private s:Landroid/support/v4/view/n;

.field private t:Landroid/support/v4/view/ae;

.field private u:Z

.field private v:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/o;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Landroid/support/v7/internal/view/menu/s;->k:I

    .line 80
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    .line 88
    iput v1, p0, Landroid/support/v7/internal/view/menu/s;->q:I

    .line 93
    iput-boolean v1, p0, Landroid/support/v7/internal/view/menu/s;->u:Z

    .line 138
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    .line 139
    iput p3, p0, Landroid/support/v7/internal/view/menu/s;->a:I

    .line 140
    iput p2, p0, Landroid/support/v7/internal/view/menu/s;->b:I

    .line 141
    iput p4, p0, Landroid/support/v7/internal/view/menu/s;->c:I

    .line 142
    iput p5, p0, Landroid/support/v7/internal/view/menu/s;->d:I

    .line 143
    iput-object p6, p0, Landroid/support/v7/internal/view/menu/s;->e:Ljava/lang/CharSequence;

    .line 144
    iput p7, p0, Landroid/support/v7/internal/view/menu/s;->q:I

    .line 145
    return-void
.end method

.method private a(I)Landroid/support/v4/a/a/b;
    .locals 0

    .prologue
    .line 674
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/s;->setShowAsAction(I)V

    .line 675
    return-object p0
.end method

.method private a(Landroid/view/View;)Landroid/support/v4/a/a/b;
    .locals 2

    .prologue
    .line 603
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/s;->r:Landroid/view/View;

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/s;->s:Landroid/support/v4/view/n;

    .line 605
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->a:I

    if-lez v0, :cond_0

    .line 606
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 608
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->i()V

    .line 609
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/n;)Landroid/support/v4/a/a/b;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 651
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->s:Landroid/support/v4/view/n;

    if-ne v0, p1, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-object p0

    .line 655
    :cond_1
    iput-object v1, p0, Landroid/support/v7/internal/view/menu/s;->r:Landroid/view/View;

    .line 656
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->s:Landroid/support/v4/view/n;

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->s:Landroid/support/v4/view/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/n;->a(Landroid/support/v4/view/p;)V

    .line 659
    :cond_2
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/s;->s:Landroid/support/v4/view/n;

    .line 660
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 661
    if-eqz p1, :cond_0

    .line 662
    new-instance v0, Landroid/support/v7/internal/view/menu/t;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/t;-><init>(Landroid/support/v7/internal/view/menu/s;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/n;->a(Landroid/support/v4/view/p;)V

    goto :goto_0
.end method

.method final a(Landroid/support/v7/internal/view/menu/ag;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 368
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v7/internal/view/menu/ag;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/s;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/s;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Landroid/support/v7/internal/view/menu/aj;)V
    .locals 1

    .prologue
    .line 350
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/s;->m:Landroid/support/v7/internal/view/menu/aj;

    .line 352
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/s;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/aj;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 353
    return-void
.end method

.method final a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/s;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 541
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 463
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    .line 464
    return-void

    .line 463
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 153
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/o;->q()Landroid/support/v7/internal/view/menu/o;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/o;Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->n:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->n:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->g:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 169
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/o;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/s;->g:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v1, "MenuItemImpl"

    const-string v2, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->s:Landroid/support/v4/view/n;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->s:Landroid/support/v4/view/n;

    .line 177
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->d:I

    return v0
.end method

.method final b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 489
    iget v2, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    .line 490
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v3, v0, -0x3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    .line 491
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    if-eq v2, v0, :cond_0

    .line 492
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 494
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 490
    goto :goto_0
.end method

.method final c()C
    .locals 1

    .prologue
    .line 292
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/s;->i:C

    return v0
.end method

.method final c(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 513
    iget v2, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    .line 514
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v3, v0, -0x9

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    .line 515
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 514
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 694
    iget v1, p0, Landroid/support/v7/internal/view/menu/s;->q:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 707
    :cond_0
    :goto_0
    return v0

    .line 697
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->r:Landroid/view/View;

    if-nez v1, :cond_2

    .line 699
    const/4 v0, 0x1

    goto :goto_0

    .line 702
    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->t:Landroid/support/v4/view/ae;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->t:Landroid/support/v4/view/ae;

    invoke-interface {v1}, Landroid/support/v4/view/ae;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/o;->b(Landroid/support/v7/internal/view/menu/s;)Z

    move-result v0

    goto :goto_0
.end method

.method final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 302
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/s;->i:C

    .line 303
    if-nez v0, :cond_0

    .line 304
    const-string v0, ""

    .line 327
    :goto_0
    return-object v0

    .line 307
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/support/v7/internal/view/menu/s;->w:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    sparse-switch v0, :sswitch_data_0

    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 311
    :sswitch_0
    sget-object v0, Landroid/support/v7/internal/view/menu/s;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 315
    :sswitch_1
    sget-object v0, Landroid/support/v7/internal/view/menu/s;->y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 319
    :sswitch_2
    sget-object v0, Landroid/support/v7/internal/view/menu/s;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 308
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    goto :goto_0
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 722
    iput-boolean p1, p0, Landroid/support/v7/internal/view/menu/s;->u:Z

    .line 723
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 724
    return-void
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Landroid/support/v7/internal/view/menu/s;->i:C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 680
    iget v1, p0, Landroid/support/v7/internal/view/menu/s;->q:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->r:Landroid/view/View;

    if-nez v1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v0

    .line 684
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->t:Landroid/support/v4/view/ae;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/s;->t:Landroid/support/v4/view/ae;

    invoke-interface {v1}, Landroid/support/v4/view/ae;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/support/v7/internal/view/menu/s;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->i()V

    .line 550
    return-void
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 640
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use getSupportActionProvider!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->r:Landroid/view/View;

    .line 628
    :goto_0
    return-object v0

    .line 624
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->s:Landroid/support/v4/view/n;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->s:Landroid/support/v4/view/n;

    invoke-virtual {v0}, Landroid/support/v4/view/n;->b()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/s;->r:Landroid/view/View;

    .line 626
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->r:Landroid/view/View;

    goto :goto_0

    .line 628
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 243
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/s;->i:C

    return v0
.end method

.method public final getGroupId()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->b:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/graphics/drawable/Drawable;

    .line 423
    :goto_0
    return-object v0

    .line 416
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->k:I

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->c()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/internal/view/menu/s;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 418
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/internal/view/menu/s;->k:I

    .line 419
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 423
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 209
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->a:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    .prologue
    .line 261
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/s;->h:C

    return v0
.end method

.method public final getOrder()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->c:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->m:Landroid/support/v7/internal/view/menu/aj;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->f:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->r()Z

    move-result v0

    return v0
.end method

.method public final hasSubMenu()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->m:Landroid/support/v7/internal/view/menu/aj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 560
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Landroid/support/v7/internal/view/menu/s;->u:Z

    return v0
.end method

.method public final isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 448
    iget v1, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 2

    .prologue
    .line 472
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled()Z
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->s:Landroid/support/v4/view/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->s:Landroid/support/v4/view/n;

    .line 499
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 564
    iget v1, p0, Landroid/support/v7/internal/view/menu/s;->q:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 568
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->q:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 580
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->q:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Landroid/support/v4/view/n;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->s:Landroid/support/v4/view/n;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->q:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 634
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use setSupportActionProvider!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/view/View;)Landroid/support/v4/a/a/b;

    return-object p0
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/view/View;)Landroid/support/v4/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 248
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/s;->i:C

    if-ne v0, p1, :cond_0

    .line 256
    :goto_0
    return-object p0

    .line 252
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/menu/s;->i:C

    .line 254
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    goto :goto_0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 453
    iget v2, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    .line 454
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v3, v0, -0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v3

    iput v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    .line 455
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    if-eq v2, v0, :cond_0

    .line 456
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 459
    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    .line 454
    goto :goto_0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/o;->a(Landroid/view/MenuItem;)V

    .line 485
    :goto_0
    return-object p0

    .line 482
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/s;->b(Z)V

    goto :goto_0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    .line 196
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 198
    return-object p0

    .line 193
    :cond_0
    iget v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/internal/view/menu/s;->p:I

    goto :goto_0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/graphics/drawable/Drawable;

    .line 438
    iput p1, p0, Landroid/support/v7/internal/view/menu/s;->k:I

    .line 441
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 443
    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    iput v1, p0, Landroid/support/v7/internal/view/menu/s;->k:I

    .line 429
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/s;->j:Landroid/graphics/drawable/Drawable;

    .line 430
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 432
    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/s;->g:Landroid/content/Intent;

    .line 229
    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 266
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/s;->h:C

    if-ne v0, p1, :cond_0

    .line 274
    :goto_0
    return-object p0

    .line 270
    :cond_0
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/s;->h:C

    .line 272
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    goto :goto_0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 733
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Implementation should use setSupportOnActionExpandListener!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/s;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 531
    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 279
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/s;->h:C

    .line 280
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/menu/s;->i:C

    .line 282
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 284
    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 2

    .prologue
    .line 585
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :pswitch_0
    iput p1, p0, Landroid/support/v7/internal/view/menu/s;->q:I

    .line 598
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->i()V

    .line 599
    return-void

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/s;->a(I)Landroid/support/v4/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/s;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 375
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/s;->e:Ljava/lang/CharSequence;

    .line 377
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 379
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->m:Landroid/support/v7/internal/view/menu/aj;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->m:Landroid/support/v7/internal/view/menu/aj;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/aj;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 383
    :cond_0
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 398
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/s;->f:Ljava/lang/CharSequence;

    .line 401
    if-nez p1, :cond_0

    .line 402
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Ljava/lang/CharSequence;

    .line 405
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/o;->b(Z)V

    .line 407
    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/s;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->l:Landroid/support/v7/internal/view/menu/o;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/o;->h()V

    .line 525
    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/s;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
