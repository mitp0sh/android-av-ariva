.class final Landroid/support/v7/internal/widget/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/v;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/v;)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/internal/widget/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/v;B)V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/aa;-><init>(Landroid/support/v7/internal/widget/v;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/internal/widget/v;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/v;->u:Z

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/internal/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/v;->c()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/internal/widget/v;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/v;->post(Ljava/lang/Runnable;)Z

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/aa;->a:Landroid/support/v7/internal/widget/v;

    invoke-static {v0}, Landroid/support/v7/internal/widget/v;->b(Landroid/support/v7/internal/widget/v;)V

    goto :goto_0
.end method
