.class final Landroid/support/v7/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/app/e;


# direct methods
.method constructor <init>(Landroid/support/v7/app/e;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/e;

    invoke-static {v0}, Landroid/support/v7/app/e;->a(Landroid/support/v7/app/e;)Landroid/support/v7/internal/view/menu/o;

    move-result-object v0

    .line 69
    iget-object v1, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/e;

    iget-object v1, v1, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/e;

    iget-object v1, v1, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/e;

    invoke-static {v1, v0}, Landroid/support/v7/app/e;->a(Landroid/support/v7/app/e;Landroid/support/v7/internal/view/menu/o;)V

    .line 76
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/e;

    invoke-static {v0}, Landroid/support/v7/app/e;->b(Landroid/support/v7/app/e;)Z

    .line 77
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/f;->a:Landroid/support/v7/app/e;

    invoke-static {v0, v3}, Landroid/support/v7/app/e;->a(Landroid/support/v7/app/e;Landroid/support/v7/internal/view/menu/o;)V

    goto :goto_0
.end method
