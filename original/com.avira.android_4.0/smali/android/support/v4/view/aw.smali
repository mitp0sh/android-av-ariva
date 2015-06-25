.class public final Landroid/support/v4/view/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FAKE_FRAME_TIME:J = 0xaL

.field static final IMPL:Landroid/support/v4/view/be;

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 428
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 429
    new-instance v0, Landroid/support/v4/view/bd;

    invoke-direct {v0}, Landroid/support/v4/view/bd;-><init>()V

    sput-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    .line 441
    :goto_0
    return-void

    .line 430
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 431
    new-instance v0, Landroid/support/v4/view/bc;

    invoke-direct {v0}, Landroid/support/v4/view/bc;-><init>()V

    sput-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    goto :goto_0

    .line 432
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 433
    new-instance v0, Landroid/support/v4/view/bb;

    invoke-direct {v0}, Landroid/support/v4/view/bb;-><init>()V

    sput-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    goto :goto_0

    .line 434
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 435
    new-instance v0, Landroid/support/v4/view/ba;

    invoke-direct {v0}, Landroid/support/v4/view/ba;-><init>()V

    sput-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    goto :goto_0

    .line 436
    :cond_3
    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    .line 437
    new-instance v0, Landroid/support/v4/view/az;

    invoke-direct {v0}, Landroid/support/v4/view/az;-><init>()V

    sput-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    goto :goto_0

    .line 439
    :cond_4
    new-instance v0, Landroid/support/v4/view/ax;

    invoke-direct {v0}, Landroid/support/v4/view/ax;-><init>()V

    sput-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 475
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0}, Landroid/support/v4/view/be;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 666
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/be;->a(Landroid/view/View;IIII)V

    .line 667
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 828
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/be;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 829
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    .prologue
    .line 904
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/be;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 905
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    .line 612
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/be;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 613
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 680
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/be;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 681
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 451
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/be;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 648
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0}, Landroid/support/v4/view/be;->b(Landroid/view/View;)V

    .line 649
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 713
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0}, Landroid/support/v4/view/be;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 729
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0}, Landroid/support/v4/view/be;->d(Landroid/view/View;)V

    .line 730
    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 848
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0}, Landroid/support/v4/view/be;->e(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 918
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0}, Landroid/support/v4/view/be;->f(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 950
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0}, Landroid/support/v4/view/be;->g(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 963
    sget-object v0, Landroid/support/v4/view/aw;->IMPL:Landroid/support/v4/view/be;

    invoke-interface {v0, p0}, Landroid/support/v4/view/be;->h(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
