.class public final Landroid/support/v4/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final IMPL:Landroid/support/v4/widget/q;


# instance fields
.field a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 241
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 242
    new-instance v0, Landroid/support/v4/widget/t;

    invoke-direct {v0}, Landroid/support/v4/widget/t;-><init>()V

    sput-object v0, Landroid/support/v4/widget/p;->IMPL:Landroid/support/v4/widget/q;

    .line 248
    :goto_0
    return-void

    .line 243
    :cond_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 244
    new-instance v0, Landroid/support/v4/widget/s;

    invoke-direct {v0}, Landroid/support/v4/widget/s;-><init>()V

    sput-object v0, Landroid/support/v4/widget/p;->IMPL:Landroid/support/v4/widget/q;

    goto :goto_0

    .line 246
    :cond_1
    new-instance v0, Landroid/support/v4/widget/r;

    invoke-direct {v0}, Landroid/support/v4/widget/r;-><init>()V

    sput-object v0, Landroid/support/v4/widget/p;->IMPL:Landroid/support/v4/widget/q;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    sget-object v0, Landroid/support/v4/widget/p;->IMPL:Landroid/support/v4/widget/q;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/widget/q;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/p;
    .locals 1

    .prologue
    .line 255
    new-instance v0, Landroid/support/v4/widget/p;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/widget/p;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public final a(IIIII)V
    .locals 7

    .prologue
    .line 358
    sget-object v0, Landroid/support/v4/widget/p;->IMPL:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/widget/q;->a(Ljava/lang/Object;IIIII)V

    .line 359
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 268
    sget-object v0, Landroid/support/v4/widget/p;->IMPL:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/q;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 277
    sget-object v0, Landroid/support/v4/widget/p;->IMPL:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/q;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 286
    sget-object v0, Landroid/support/v4/widget/p;->IMPL:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/q;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 293
    sget-object v0, Landroid/support/v4/widget/p;->IMPL:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/q;->f(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 300
    sget-object v0, Landroid/support/v4/widget/p;->IMPL:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/q;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 323
    sget-object v0, Landroid/support/v4/widget/p;->IMPL:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/q;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 419
    sget-object v0, Landroid/support/v4/widget/p;->IMPL:Landroid/support/v4/widget/q;

    iget-object v1, p0, Landroid/support/v4/widget/p;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/q;->e(Ljava/lang/Object;)V

    .line 420
    return-void
.end method
