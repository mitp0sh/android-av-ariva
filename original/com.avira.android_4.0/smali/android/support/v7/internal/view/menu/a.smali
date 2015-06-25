.class public final Landroid/support/v7/internal/view/menu/a;
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

.field private static final NO_ICON:I


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

.field private l:Landroid/content/Context;

.field private m:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v1, p0, Landroid/support/v7/internal/view/menu/a;->k:I

    .line 55
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

    .line 64
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->l:Landroid/content/Context;

    .line 65
    const v0, 0x102002c

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->a:I

    .line 66
    iput v1, p0, Landroid/support/v7/internal/view/menu/a;->b:I

    .line 67
    iput v1, p0, Landroid/support/v7/internal/view/menu/a;->c:I

    .line 68
    iput v1, p0, Landroid/support/v7/internal/view/menu/a;->d:I

    .line 69
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/a;->e:Ljava/lang/CharSequence;

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/view/n;)Landroid/support/v4/a/a/b;
    .locals 1

    .prologue
    .line 261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final collapseActionView()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public final expandActionView()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 73
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/a;->i:C

    return v0
.end method

.method public final getGroupId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->b:I

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public final getItemId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->a:I

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    .prologue
    .line 97
    iget-char v0, p0, Landroid/support/v7/internal/view/menu/a;->h:C

    return v0
.end method

.method public final getOrder()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->d:I

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final hasSubMenu()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public final isCheckable()Z
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isChecked()Z
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

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
    .line 129
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

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
    .line 133
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 137
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/a;->i:C

    .line 138
    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

    and-int/lit8 v1, v0, -0x2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

    .line 143
    return-object p0

    .line 142
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

    and-int/lit8 v1, v0, -0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

    .line 153
    return-object p0

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

    and-int/lit8 v1, v0, -0x11

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

    .line 158
    return-object p0

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 168
    iput p1, p0, Landroid/support/v7/internal/view/menu/a;->k:I

    .line 169
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/a;->j:Landroid/graphics/drawable/Drawable;

    .line 170
    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 162
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->j:Landroid/graphics/drawable/Drawable;

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->k:I

    .line 164
    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->g:Landroid/content/Intent;

    .line 175
    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 179
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/a;->h:C

    .line 180
    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->m:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 185
    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 189
    iput-char p1, p0, Landroid/support/v7/internal/view/menu/a;->h:C

    .line 190
    iput-char p2, p0, Landroid/support/v7/internal/view/menu/a;->i:C

    .line 191
    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public final bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 33
    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/a;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/a;->e:Ljava/lang/CharSequence;

    .line 201
    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->e:Ljava/lang/CharSequence;

    .line 196
    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/a;->f:Ljava/lang/CharSequence;

    .line 206
    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 210
    iget v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

    and-int/lit8 v1, v0, 0x8

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/view/menu/a;->n:I

    .line 211
    return-object p0

    .line 210
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
