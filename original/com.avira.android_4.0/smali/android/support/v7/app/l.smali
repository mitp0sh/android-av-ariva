.class final Landroid/support/v7/app/l;
.super Landroid/support/v7/app/k;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/ak;


# instance fields
.field final b:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

.field private c:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/k;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V

    .line 35
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_root:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Landroid/support/v7/app/l;->b:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    .line 39
    iget-object v0, p0, Landroid/support/v7/app/l;->b:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Landroid/support/v7/app/l;->b:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->setActionModeForChildListener(Landroid/support/v7/internal/widget/ak;)V

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v7/app/l;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Landroid/support/v7/app/l;->c:Landroid/view/ActionMode;

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Landroid/support/v7/app/m;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/m;-><init>(Landroid/support/v7/app/l;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/app/l;->c:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/app/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
