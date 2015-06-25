.class abstract Landroid/support/v7/internal/view/menu/k;
.super Landroid/support/v7/internal/view/menu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/internal/view/menu/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/MenuItem;",
            "Landroid/support/v4/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/l;-><init>(Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method final a(Landroid/view/MenuItem;)Landroid/support/v4/a/a/b;
    .locals 2

    .prologue
    .line 37
    if-eqz p1, :cond_4

    .line 39
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/k;->b:Ljava/util/HashMap;

    .line 43
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/a/b;

    .line 45
    if-nez v0, :cond_1

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v7/internal/view/menu/z;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/z;-><init>(Landroid/view/MenuItem;)V

    .line 47
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/k;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    :goto_1
    return-object v0

    .line 46
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v7/internal/view/menu/u;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/u;-><init>(Landroid/view/MenuItem;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 52
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    .prologue
    .line 56
    if-eqz p1, :cond_3

    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/k;->c:Ljava/util/HashMap;

    .line 62
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    .line 64
    if-nez v0, :cond_1

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v7/internal/view/menu/ak;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/ak;-><init>(Landroid/view/SubMenu;)V

    .line 66
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/k;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1
    :goto_0
    return-object v0

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 70
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 78
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    :cond_1
    return-void
.end method

.method final a(I)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 91
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 93
    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method final b(I)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 107
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    .line 109
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
