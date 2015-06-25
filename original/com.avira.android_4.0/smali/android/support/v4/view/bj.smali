.class public final Landroid/support/v4/view/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final IMPL:Landroid/support/v4/view/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 67
    new-instance v0, Landroid/support/v4/view/bl;

    invoke-direct {v0}, Landroid/support/v4/view/bl;-><init>()V

    sput-object v0, Landroid/support/v4/view/bj;->IMPL:Landroid/support/v4/view/bm;

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 69
    new-instance v0, Landroid/support/v4/view/bk;

    invoke-direct {v0}, Landroid/support/v4/view/bk;-><init>()V

    sput-object v0, Landroid/support/v4/view/bj;->IMPL:Landroid/support/v4/view/bm;

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Landroid/support/v4/view/bn;

    invoke-direct {v0}, Landroid/support/v4/view/bn;-><init>()V

    sput-object v0, Landroid/support/v4/view/bj;->IMPL:Landroid/support/v4/view/bm;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/support/v4/view/bj;->IMPL:Landroid/support/v4/view/bm;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bm;->a(Landroid/view/ViewGroup;)V

    .line 120
    return-void
.end method
