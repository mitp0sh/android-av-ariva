.class final Landroid/support/v7/internal/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/z;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActionBarView;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Landroid/support/v7/internal/widget/f;->a:Landroid/support/v7/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/widget/f;->a:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mCallback:Landroid/support/v7/app/b;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Landroid/support/v7/internal/widget/f;->a:Landroid/support/v7/internal/widget/ActionBarView;

    # getter for: Landroid/support/v7/internal/widget/ActionBarView;->mCallback:Landroid/support/v7/app/b;
    invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->access$000(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/b;

    .line 142
    :cond_0
    return-void
.end method
