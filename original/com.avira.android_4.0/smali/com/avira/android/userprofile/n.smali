.class final Lcom/avira/android/userprofile/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/avira/android/userprofile/k;


# direct methods
.method constructor <init>(Lcom/avira/android/userprofile/k;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/avira/android/userprofile/n;->a:Lcom/avira/android/userprofile/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/avira/android/userprofile/n;->a:Lcom/avira/android/userprofile/k;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e00c0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 115
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
