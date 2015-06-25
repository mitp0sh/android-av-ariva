.class final Lcom/avira/android/antitheft/activities/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/avira/android/antitheft/activities/b;->a:Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/b;->a:Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;

    iget-object v1, p0, Lcom/avira/android/antitheft/activities/b;->a:Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;

    invoke-static {v1}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->a(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->a(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;I)I

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/avira/android/antitheft/activities/b;->a:Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;

    invoke-static {v2}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->b(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    iget-object v1, p0, Lcom/avira/android/antitheft/activities/b;->a:Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;

    invoke-static {v1}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->c(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/b;->a:Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->a(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antitheft/activities/b;->a:Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;->a(Lcom/avira/android/antitheft/activities/ATYellDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
