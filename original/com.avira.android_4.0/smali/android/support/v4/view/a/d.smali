.class Landroid/support/v4/view/a/d;
.super Landroid/support/v4/view/a/b;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0}, Landroid/support/v4/view/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 702
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    .line 703
    return-void
.end method

.method public final h(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 682
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 683
    return-void
.end method

.method public final i(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 692
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 693
    return-void
.end method

.method public final r(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 707
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    move-result v0

    return v0
.end method

.method public final s(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 677
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method public final t(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 687
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    return v0
.end method
