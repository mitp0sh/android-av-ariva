.class final Landroid/support/v7/internal/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/v;

.field private final b:Landroid/support/v7/internal/widget/x;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/v;Landroid/support/v7/internal/widget/x;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Landroid/support/v7/internal/widget/y;->a:Landroid/support/v7/internal/widget/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Landroid/support/v7/internal/widget/y;->b:Landroid/support/v7/internal/widget/x;

    .line 267
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/v7/internal/widget/y;->b:Landroid/support/v7/internal/widget/x;

    iget-object v1, p0, Landroid/support/v7/internal/widget/y;->a:Landroid/support/v7/internal/widget/v;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v7/internal/widget/x;->onItemClick(Landroid/support/v7/internal/widget/v;Landroid/view/View;IJ)V

    .line 272
    return-void
.end method
