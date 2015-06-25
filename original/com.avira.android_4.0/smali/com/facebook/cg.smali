.class final Lcom/facebook/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/cm;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/facebook/ce;


# direct methods
.method constructor <init>(Lcom/facebook/ce;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/facebook/cg;->b:Lcom/facebook/ce;

    iput-object p2, p0, Lcom/facebook/cg;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/facebook/cg;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/facebook/cg;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1921
    return-void
.end method
