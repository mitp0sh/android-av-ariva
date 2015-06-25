.class public final Landroid/support/v4/view/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"

.field public static final ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"

.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80

.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_CLICK:I = 0x10

.field public static final ACTION_COPY:I = 0x4000

.field public static final ACTION_CUT:I = 0x10000

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_LONG_CLICK:I = 0x20

.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100

.field public static final ACTION_NEXT_HTML_ELEMENT:I = 0x400

.field public static final ACTION_PASTE:I = 0x8000

.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200

.field public static final ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800

.field public static final ACTION_SCROLL_BACKWARD:I = 0x2000

.field public static final ACTION_SCROLL_FORWARD:I = 0x1000

.field public static final ACTION_SELECT:I = 0x4

.field public static final ACTION_SET_SELECTION:I = 0x20000

.field public static final FOCUS_ACCESSIBILITY:I = 0x2

.field public static final FOCUS_INPUT:I = 0x1

.field private static final IMPL:Landroid/support/v4/view/a/c;

.field public static final MOVEMENT_GRANULARITY_CHARACTER:I = 0x1

.field public static final MOVEMENT_GRANULARITY_LINE:I = 0x4

.field public static final MOVEMENT_GRANULARITY_PAGE:I = 0x10

.field public static final MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8

.field public static final MOVEMENT_GRANULARITY_WORD:I = 0x2


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 731
    const-string v0, "JellyBeanMR2"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    new-instance v0, Landroid/support/v4/view/a/e;

    invoke-direct {v0}, Landroid/support/v4/view/a/e;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    .line 740
    :goto_0
    return-void

    .line 733
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 734
    new-instance v0, Landroid/support/v4/view/a/d;

    invoke-direct {v0}, Landroid/support/v4/view/a/d;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    goto :goto_0

    .line 735
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 736
    new-instance v0, Landroid/support/v4/view/a/b;

    invoke-direct {v0}, Landroid/support/v4/view/a/b;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    goto :goto_0

    .line 738
    :cond_2
    new-instance v0, Landroid/support/v4/view/a/f;

    invoke-direct {v0}, Landroid/support/v4/view/a/f;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    iput-object p1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    .line 1055
    return-void
.end method

.method public static a(Landroid/support/v4/view/a/a;)Landroid/support/v4/view/a/a;
    .locals 2

    .prologue
    .line 1107
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/support/v4/view/a/a;

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/a;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 1268
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;I)V

    .line 1269
    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1411
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1412
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1116
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->c(Ljava/lang/Object;Landroid/view/View;)V

    .line 1117
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1764
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->c(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1765
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 1522
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->c(Ljava/lang/Object;Z)V

    .line 1523
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 1253
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 1317
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->b(Ljava/lang/Object;I)V

    .line 1318
    return-void
.end method

.method public final b(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1426
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->c(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1427
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1222
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 1223
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1788
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1789
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 1546
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->d(Ljava/lang/Object;Z)V

    .line 1547
    return-void
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 1326
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->r(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final c(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1435
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->b(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1436
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1379
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->b(Ljava/lang/Object;Landroid/view/View;)V

    .line 1380
    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 1836
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->b(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 1837
    return-void
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 1571
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->h(Ljava/lang/Object;Z)V

    .line 1572
    return-void
.end method

.method public final d(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 1450
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->d(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 1451
    return-void
.end method

.method public final d(Z)V
    .locals 2

    .prologue
    .line 1596
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->i(Ljava/lang/Object;Z)V

    .line 1597
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 1507
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->k(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final e(Z)V
    .locals 2

    .prologue
    .line 1620
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->g(Ljava/lang/Object;Z)V

    .line 1621
    return-void
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 1531
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->l(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1888
    if-ne p0, p1, :cond_1

    .line 1905
    :cond_0
    :goto_0
    return v0

    .line 1891
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 1892
    goto :goto_0

    .line 1894
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 1895
    goto :goto_0

    .line 1897
    :cond_3
    check-cast p1, Landroid/support/v4/view/a/a;

    .line 1898
    iget-object v2, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    if-nez v2, :cond_4

    .line 1899
    iget-object v2, p1, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move v0, v1

    .line 1900
    goto :goto_0

    .line 1902
    :cond_4
    iget-object v2, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    iget-object v3, p1, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1903
    goto :goto_0
.end method

.method public final f(Z)V
    .locals 2

    .prologue
    .line 1644
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->a(Ljava/lang/Object;Z)V

    .line 1645
    return-void
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 1555
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->s(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final g(Z)V
    .locals 2

    .prologue
    .line 1668
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->e(Ljava/lang/Object;Z)V

    .line 1669
    return-void
.end method

.method public final g()Z
    .locals 2

    .prologue
    .line 1580
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->t(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final h(Z)V
    .locals 2

    .prologue
    .line 1692
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->b(Ljava/lang/Object;Z)V

    .line 1693
    return-void
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 1605
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->p(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 1883
    iget-object v0, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final i(Z)V
    .locals 2

    .prologue
    .line 1740
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/view/a/c;->f(Ljava/lang/Object;Z)V

    .line 1741
    return-void
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 1629
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->i(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 1653
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->m(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 1677
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->j(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1749
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->e(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1773
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->c(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1821
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->d(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final o()V
    .locals 2

    .prologue
    .line 1847
    sget-object v0, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v1, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/view/a/c;->q(Ljava/lang/Object;)V

    .line 1848
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1911
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1915
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/a;->a(Landroid/graphics/Rect;)V

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "; boundsInParent: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    invoke-virtual {p0, v0}, Landroid/support/v4/view/a/a;->c(Landroid/graphics/Rect;)V

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "; boundsInScreen: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    const-string v0, "; packageName: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->l()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1922
    const-string v0, "; className: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->m()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1923
    const-string v0, "; text: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v3, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/c;->f(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1924
    const-string v0, "; contentDescription: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->n()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1925
    const-string v0, "; viewId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v3, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/c;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    const-string v0, "; checkable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v3, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/c;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1928
    const-string v0, "; checked: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v3, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/c;->h(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1929
    const-string v0, "; focusable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1930
    const-string v0, "; focused: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1931
    const-string v0, "; selected: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1932
    const-string v0, "; clickable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1933
    const-string v0, "; longClickable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1934
    const-string v0, "; enabled: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1935
    const-string v0, "; password: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v3, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/c;->n(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "; scrollable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/support/v4/view/a/a;->IMPL:Landroid/support/v4/view/a/c;

    iget-object v3, p0, Landroid/support/v4/view/a/a;->a:Ljava/lang/Object;

    invoke-interface {v1, v3}, Landroid/support/v4/view/a/c;->o(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    const-string v0, "; ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    invoke-virtual {p0}, Landroid/support/v4/view/a/a;->b()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1940
    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    shl-int v3, v1, v3

    .line 1941
    xor-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    .line 1942
    sparse-switch v3, :sswitch_data_0

    const-string v0, "ACTION_UNKNOWN"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    if-eqz v1, :cond_0

    .line 1944
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v1

    .line 1946
    goto :goto_0

    .line 1942
    :sswitch_0
    const-string v0, "ACTION_FOCUS"

    goto :goto_1

    :sswitch_1
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_1

    :sswitch_2
    const-string v0, "ACTION_SELECT"

    goto :goto_1

    :sswitch_3
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_1

    :sswitch_4
    const-string v0, "ACTION_CLICK"

    goto :goto_1

    :sswitch_5
    const-string v0, "ACTION_LONG_CLICK"

    goto :goto_1

    :sswitch_6
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_1

    :sswitch_7
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_1

    :sswitch_8
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_1

    :sswitch_9
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_1

    :sswitch_a
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_1

    :sswitch_b
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_1

    :sswitch_c
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_1

    :sswitch_d
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_1

    :sswitch_e
    const-string v0, "ACTION_CUT"

    goto :goto_1

    :sswitch_f
    const-string v0, "ACTION_COPY"

    goto :goto_1

    :sswitch_10
    const-string v0, "ACTION_PASTE"

    goto :goto_1

    :sswitch_11
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_1

    .line 1947
    :cond_1
    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1942
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_f
        0x8000 -> :sswitch_10
        0x10000 -> :sswitch_e
        0x20000 -> :sswitch_11
    .end sparse-switch
.end method
