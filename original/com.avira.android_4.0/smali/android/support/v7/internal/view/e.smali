.class final Landroid/support/v7/internal/view/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/c;

.field private b:Landroid/view/Menu;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:I

.field private o:C

.field private p:C

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Landroid/support/v4/view/n;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/c;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Landroid/support/v7/internal/view/e;->a:Landroid/support/v7/internal/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p2, p0, Landroid/support/v7/internal/view/e;->b:Landroid/view/Menu;

    .line 313
    invoke-virtual {p0}, Landroid/support/v7/internal/view/e;->a()V

    .line 314
    return-void
.end method

.method private static a(Ljava/lang/String;)C
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 398
    if-nez p0, :cond_0

    .line 401
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/internal/view/e;)Landroid/support/v4/view/n;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->z:Landroid/support/v4/view/n;

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 474
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->a:Landroid/support/v7/internal/view/c;

    invoke-static {v0}, Landroid/support/v7/internal/view/c;->a(Landroid/support/v7/internal/view/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 475
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 476
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 480
    :goto_0
    return-object v0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    const-string v1, "SupportMenuInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot instantiate class: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/MenuItem;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 406
    iget-boolean v0, p0, Landroid/support/v7/internal/view/e;->r:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/e;->s:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Landroid/support/v7/internal/view/e;->t:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Landroid/support/v7/internal/view/e;->q:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/internal/view/e;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Landroid/support/v7/internal/view/e;->n:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/internal/view/e;->o:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Landroid/support/v7/internal/view/e;->p:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 415
    iget v0, p0, Landroid/support/v7/internal/view/e;->u:I

    if-ltz v0, :cond_0

    .line 416
    iget v0, p0, Landroid/support/v7/internal/view/e;->u:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;I)V

    .line 419
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->y:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 420
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->a:Landroid/support/v7/internal/view/c;

    invoke-static {v0}, Landroid/support/v7/internal/view/c;->a(Landroid/support/v7/internal/view/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 406
    goto :goto_0

    .line 424
    :cond_2
    new-instance v0, Landroid/support/v7/internal/view/d;

    iget-object v3, p0, Landroid/support/v7/internal/view/e;->a:Landroid/support/v7/internal/view/c;

    invoke-static {v3}, Landroid/support/v7/internal/view/c;->c(Landroid/support/v7/internal/view/c;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/view/e;->y:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/support/v7/internal/view/d;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 428
    :cond_3
    instance-of v0, p1, Landroid/support/v7/internal/view/menu/s;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/view/menu/s;

    .line 429
    :goto_1
    if-eqz v0, :cond_4

    iget v3, p0, Landroid/support/v7/internal/view/e;->q:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    .line 430
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/s;->a(Z)V

    .line 434
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->w:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 435
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->w:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/internal/view/c;->b()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/internal/view/e;->a:Landroid/support/v7/internal/view/c;

    invoke-static {v3}, Landroid/support/v7/internal/view/c;->d(Landroid/support/v7/internal/view/c;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Landroid/support/v7/internal/view/e;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 437
    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 440
    :goto_2
    iget v0, p0, Landroid/support/v7/internal/view/e;->v:I

    if-lez v0, :cond_5

    .line 441
    if-nez v1, :cond_8

    .line 442
    iget v0, p0, Landroid/support/v7/internal/view/e;->v:I

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 449
    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->z:Landroid/support/v4/view/n;

    if-eqz v0, :cond_6

    .line 450
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->z:Landroid/support/v4/view/n;

    invoke-static {p1, v0}, Landroid/support/v4/view/z;->a(Landroid/view/MenuItem;Landroid/support/v4/view/n;)Landroid/view/MenuItem;

    .line 452
    :cond_6
    return-void

    .line 428
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 445
    :cond_8
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 317
    iput v0, p0, Landroid/support/v7/internal/view/e;->c:I

    .line 318
    iput v0, p0, Landroid/support/v7/internal/view/e;->d:I

    .line 319
    iput v0, p0, Landroid/support/v7/internal/view/e;->e:I

    .line 320
    iput v0, p0, Landroid/support/v7/internal/view/e;->f:I

    .line 321
    iput-boolean v1, p0, Landroid/support/v7/internal/view/e;->g:Z

    .line 322
    iput-boolean v1, p0, Landroid/support/v7/internal/view/e;->h:Z

    .line 323
    return-void
.end method

.method public final a(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->a:Landroid/support/v7/internal/view/c;

    invoke-static {v0}, Landroid/support/v7/internal/view/c;->a(Landroid/support/v7/internal/view/c;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 331
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/e;->c:I

    .line 332
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/e;->d:I

    .line 334
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/e;->e:I

    .line 335
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/view/e;->f:I

    .line 337
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/e;->g:Z

    .line 338
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/view/e;->h:Z

    .line 340
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 341
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/e;->i:Z

    .line 456
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->b:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/internal/view/e;->c:I

    iget v2, p0, Landroid/support/v7/internal/view/e;->j:I

    iget v3, p0, Landroid/support/v7/internal/view/e;->k:I

    iget-object v4, p0, Landroid/support/v7/internal/view/e;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/view/e;->a(Landroid/view/MenuItem;)V

    .line 457
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->a:Landroid/support/v7/internal/view/c;

    invoke-static {v0}, Landroid/support/v7/internal/view/c;->a(Landroid/support/v7/internal/view/c;)Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->MenuItem:[I

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 350
    const/4 v0, 0x2

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/e;->j:I

    .line 351
    const/4 v0, 0x5

    iget v4, p0, Landroid/support/v7/internal/view/e;->d:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 352
    const/4 v4, 0x6

    iget v5, p0, Landroid/support/v7/internal/view/e;->e:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 353
    const/high16 v5, -0x10000

    and-int/2addr v0, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Landroid/support/v7/internal/view/e;->k:I

    .line 355
    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->l:Ljava/lang/CharSequence;

    .line 356
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->m:Ljava/lang/CharSequence;

    .line 357
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/e;->n:I

    .line 358
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/e;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/e;->o:C

    .line 360
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/e;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Landroid/support/v7/internal/view/e;->p:C

    .line 362
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/support/v7/internal/view/e;->q:I

    .line 370
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/e;->r:Z

    .line 371
    const/4 v0, 0x4

    iget-boolean v4, p0, Landroid/support/v7/internal/view/e;->g:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/e;->s:Z

    .line 372
    iget-boolean v0, p0, Landroid/support/v7/internal/view/e;->h:Z

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/e;->t:Z

    .line 373
    const/16 v0, 0xd

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/e;->u:I

    .line 374
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->y:Ljava/lang/String;

    .line 375
    const/16 v0, 0xe

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/view/e;->v:I

    .line 376
    const/16 v0, 0xf

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->w:Ljava/lang/String;

    .line 377
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->x:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 380
    :goto_2
    if-eqz v1, :cond_3

    iget v0, p0, Landroid/support/v7/internal/view/e;->v:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/view/e;->w:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 381
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->x:Ljava/lang/String;

    invoke-static {}, Landroid/support/v7/internal/view/c;->a()[Ljava/lang/Class;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/internal/view/e;->a:Landroid/support/v7/internal/view/c;

    invoke-static {v4}, Landroid/support/v7/internal/view/c;->b(Landroid/support/v7/internal/view/c;)[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Landroid/support/v7/internal/view/e;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/n;

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->z:Landroid/support/v4/view/n;

    .line 392
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 394
    iput-boolean v2, p0, Landroid/support/v7/internal/view/e;->i:Z

    .line 395
    return-void

    :cond_0
    move v0, v2

    .line 364
    goto :goto_0

    .line 368
    :cond_1
    iget v0, p0, Landroid/support/v7/internal/view/e;->f:I

    iput v0, p0, Landroid/support/v7/internal/view/e;->q:I

    goto :goto_1

    :cond_2
    move v1, v2

    .line 379
    goto :goto_2

    .line 385
    :cond_3
    if-eqz v1, :cond_4

    .line 386
    const-string v0, "SupportMenuInflater"

    const-string v1, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/view/e;->z:Landroid/support/v4/view/n;

    goto :goto_3
.end method

.method public final c()Landroid/view/SubMenu;
    .locals 5

    .prologue
    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/e;->i:Z

    .line 461
    iget-object v0, p0, Landroid/support/v7/internal/view/e;->b:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/internal/view/e;->c:I

    iget v2, p0, Landroid/support/v7/internal/view/e;->j:I

    iget v3, p0, Landroid/support/v7/internal/view/e;->k:I

    iget-object v4, p0, Landroid/support/v7/internal/view/e;->l:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 462
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/internal/view/e;->a(Landroid/view/MenuItem;)V

    .line 463
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Landroid/support/v7/internal/view/e;->i:Z

    return v0
.end method
