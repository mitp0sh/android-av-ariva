.class public final Landroid/support/v4/view/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field static final IMPL:Landroid/support/v4/view/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 109
    new-instance v0, Landroid/support/v4/view/ah;

    invoke-direct {v0}, Landroid/support/v4/view/ah;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->IMPL:Landroid/support/v4/view/ai;

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/support/v4/view/ag;

    invoke-direct {v0}, Landroid/support/v4/view/ag;-><init>()V

    sput-object v0, Landroid/support/v4/view/af;->IMPL:Landroid/support/v4/view/ai;

    goto :goto_0
.end method

.method public static a(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;I)I
    .locals 1

    .prologue
    .line 201
    sget-object v0, Landroid/support/v4/view/af;->IMPL:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ai;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;)I
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)I
    .locals 1

    .prologue
    .line 210
    sget-object v0, Landroid/support/v4/view/af;->IMPL:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ai;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 219
    sget-object v0, Landroid/support/v4/view/af;->IMPL:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ai;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 236
    sget-object v0, Landroid/support/v4/view/af;->IMPL:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0}, Landroid/support/v4/view/ai;->a(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 228
    sget-object v0, Landroid/support/v4/view/af;->IMPL:Landroid/support/v4/view/ai;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ai;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
