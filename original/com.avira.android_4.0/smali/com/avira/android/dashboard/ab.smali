.class final Lcom/avira/android/dashboard/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/dashboard/SignActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/dashboard/SignActivity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/avira/android/dashboard/ab;->a:Lcom/avira/android/dashboard/SignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/avira/android/dashboard/ab;->a:Lcom/avira/android/dashboard/SignActivity;

    invoke-static {v1}, Lcom/avira/android/dashboard/SignActivity;->a(Lcom/avira/android/dashboard/SignActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 126
    return-void
.end method
