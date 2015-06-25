.class final Lcom/avira/android/custom/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/custom/ad;


# direct methods
.method constructor <init>(Lcom/avira/android/custom/ad;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/avira/android/custom/ae;->a:Lcom/avira/android/custom/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lcom/avira/android/custom/ae;->a:Lcom/avira/android/custom/ad;

    iget-object v0, p0, Lcom/avira/android/custom/ae;->a:Lcom/avira/android/custom/ad;

    invoke-static {v0}, Lcom/avira/android/custom/ad;->a(Lcom/avira/android/custom/ad;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/SpinnerDialogItem;

    invoke-static {v1, v0}, Lcom/avira/android/custom/ad;->a(Lcom/avira/android/custom/ad;Lcom/avira/android/custom/SpinnerDialogItem;)Lcom/avira/android/custom/SpinnerDialogItem;

    .line 161
    iget-object v0, p0, Lcom/avira/android/custom/ae;->a:Lcom/avira/android/custom/ad;

    invoke-static {v0}, Lcom/avira/android/custom/ad;->b(Lcom/avira/android/custom/ad;)Lcom/avira/android/custom/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/avira/android/custom/ae;->a:Lcom/avira/android/custom/ad;

    invoke-static {v0}, Lcom/avira/android/custom/ad;->b(Lcom/avira/android/custom/ad;)Lcom/avira/android/custom/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/avira/android/custom/ac;->a()V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/avira/android/custom/ae;->a:Lcom/avira/android/custom/ad;

    invoke-static {v0}, Lcom/avira/android/custom/ad;->c(Lcom/avira/android/custom/ad;)Lcom/avira/android/custom/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/ad;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 166
    return-void
.end method
