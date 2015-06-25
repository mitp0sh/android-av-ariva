.class final Lcom/avira/android/featuresintroduction/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/avira/android/featuresintroduction/b;->a:Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/avira/android/featuresintroduction/b;->a:Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;

    invoke-static {v1}, Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;->b(Lcom/avira/android/featuresintroduction/FeaturesIntroductionActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 99
    return-void
.end method
