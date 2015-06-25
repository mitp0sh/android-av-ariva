.class final Landroid/support/v7/internal/widget/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/x;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/aq;

.field final synthetic b:Landroid/support/v7/internal/widget/at;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/at;Landroid/support/v7/internal/widget/aq;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Landroid/support/v7/internal/widget/au;->b:Landroid/support/v7/internal/widget/at;

    iput-object p2, p0, Landroid/support/v7/internal/widget/au;->a:Landroid/support/v7/internal/widget/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/support/v7/internal/widget/v;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 708
    iget-object v0, p0, Landroid/support/v7/internal/widget/au;->b:Landroid/support/v7/internal/widget/at;

    iget-object v0, v0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/aq;->a(I)V

    .line 709
    iget-object v0, p0, Landroid/support/v7/internal/widget/au;->b:Landroid/support/v7/internal/widget/at;

    iget-object v0, v0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    iget-object v0, v0, Landroid/support/v7/internal/widget/aq;->t:Landroid/support/v7/internal/widget/x;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Landroid/support/v7/internal/widget/au;->b:Landroid/support/v7/internal/widget/at;

    iget-object v0, v0, Landroid/support/v7/internal/widget/at;->b:Landroid/support/v7/internal/widget/aq;

    iget-object v1, p0, Landroid/support/v7/internal/widget/au;->b:Landroid/support/v7/internal/widget/at;

    invoke-static {v1}, Landroid/support/v7/internal/widget/at;->a(Landroid/support/v7/internal/widget/at;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/internal/widget/aq;->a(Landroid/view/View;IJ)Z

    .line 712
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/au;->b:Landroid/support/v7/internal/widget/at;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/at;->f()V

    .line 713
    return-void
.end method
