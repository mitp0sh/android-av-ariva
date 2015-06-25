.class public final Landroid/support/v4/view/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final IMPL:Landroid/support/v4/view/bi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v0, Landroid/support/v4/view/bh;

    invoke-direct {v0}, Landroid/support/v4/view/bh;-><init>()V

    sput-object v0, Landroid/support/v4/view/bf;->IMPL:Landroid/support/v4/view/bi;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Landroid/support/v4/view/bg;

    invoke-direct {v0}, Landroid/support/v4/view/bg;-><init>()V

    sput-object v0, Landroid/support/v4/view/bf;->IMPL:Landroid/support/v4/view/bi;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/support/v4/view/bf;->IMPL:Landroid/support/v4/view/bi;

    invoke-interface {v0, p0}, Landroid/support/v4/view/bi;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
