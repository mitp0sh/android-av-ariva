.class final Landroid/support/v7/app/i;
.super Landroid/support/v7/app/d;
.source "SourceFile"


# instance fields
.field d:Landroid/view/Menu;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/support/v7/app/d;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/app/ActionBar;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/support/v7/app/n;

    iget-object v1, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/n;-><init>(Landroid/app/Activity;Landroid/support/v7/app/a;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->a(I)V

    .line 112
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    const-string v0, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Landroid/support/v7/app/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setUiOptions(II)V

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/d;->a(Landroid/os/Bundle;)V

    .line 60
    iget-boolean v0, p0, Landroid/support/v7/app/i;->b:Z

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->requestWindowFeature(I)Z

    .line 65
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/app/i;->c:Z

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->requestWindowFeature(I)Z

    .line 84
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    new-instance v2, Landroid/support/v7/app/j;

    invoke-direct {v2, p0, v1}, Landroid/support/v7/app/j;-><init>(Landroid/support/v7/app/i;Landroid/view/Window$Callback;)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 86
    return-void
.end method

.method public final a(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    new-instance v0, Landroid/support/v7/internal/view/b;

    invoke-virtual {p0}, Landroid/support/v7/app/i;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/view/b;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V

    invoke-static {}, Landroid/support/v7/app/ActionBarActivity;->a()V

    .line 193
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public final a(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 137
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 138
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/i;->d:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 139
    invoke-static {p2}, Landroid/support/v7/internal/view/menu/ah;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/i;->d:Landroid/view/Menu;

    .line 141
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v1, p0, Landroid/support/v7/app/i;->d:Landroid/view/Menu;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    invoke-static {p2}, Landroid/support/v7/internal/view/menu/ah;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p2

    .line 159
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 148
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v1, p0, Landroid/support/v7/app/i;->d:Landroid/view/Menu;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 151
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    new-instance v0, Landroid/support/v7/internal/view/b;

    invoke-virtual {p0}, Landroid/support/v7/app/i;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/internal/view/b;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V

    invoke-static {}, Landroid/support/v7/app/ActionBarActivity;->b()V

    .line 218
    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v7/app/i;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/i;->d:Landroid/view/Menu;

    .line 223
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method
