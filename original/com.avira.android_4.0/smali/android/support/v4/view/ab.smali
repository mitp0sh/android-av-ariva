.class Landroid/support/v4/view/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ad;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 166
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/MenuItem;I)V
    .locals 0

    .prologue
    .line 161
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 162
    return-void
.end method

.method public final b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 171
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method
