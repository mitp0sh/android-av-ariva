.class final Landroid/support/v4/view/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Landroid/support/v4/view/bq;->a:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/v4/view/bq;->a:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    # invokes: Landroid/support/v4/view/ViewPager;->setScrollState(I)V
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewPager;->access$000(Landroid/support/v4/view/ViewPager;I)V

    .line 244
    iget-object v0, p0, Landroid/support/v4/view/bq;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 245
    return-void
.end method
