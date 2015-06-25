.class final Lcom/avira/android/welcome/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/welcome/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/welcome/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/avira/android/welcome/c;->a:Lcom/avira/android/welcome/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/avira/android/welcome/c;->a:Lcom/avira/android/welcome/WelcomeActivity;

    invoke-static {v1}, Lcom/avira/android/welcome/WelcomeActivity;->b(Lcom/avira/android/welcome/WelcomeActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 108
    return-void
.end method
