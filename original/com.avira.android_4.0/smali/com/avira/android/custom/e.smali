.class final Lcom/avira/android/custom/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/custom/ac;


# instance fields
.field final synthetic a:Lcom/avira/android/custom/CustomSpinner;


# direct methods
.method constructor <init>(Lcom/avira/android/custom/CustomSpinner;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/avira/android/custom/e;->a:Lcom/avira/android/custom/CustomSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/avira/android/custom/e;->a:Lcom/avira/android/custom/CustomSpinner;

    iget-object v1, p0, Lcom/avira/android/custom/e;->a:Lcom/avira/android/custom/CustomSpinner;

    # getter for: Lcom/avira/android/custom/CustomSpinner;->mSpinnerDialog:Lcom/avira/android/custom/ad;
    invoke-static {v1}, Lcom/avira/android/custom/CustomSpinner;->access$100(Lcom/avira/android/custom/CustomSpinner;)Lcom/avira/android/custom/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/custom/ad;->a()Lcom/avira/android/custom/SpinnerDialogItem;

    move-result-object v1

    # setter for: Lcom/avira/android/custom/CustomSpinner;->mSelectedItem:Lcom/avira/android/custom/SpinnerDialogItem;
    invoke-static {v0, v1}, Lcom/avira/android/custom/CustomSpinner;->access$002(Lcom/avira/android/custom/CustomSpinner;Lcom/avira/android/custom/SpinnerDialogItem;)Lcom/avira/android/custom/SpinnerDialogItem;

    .line 102
    iget-object v0, p0, Lcom/avira/android/custom/e;->a:Lcom/avira/android/custom/CustomSpinner;

    iget-object v1, p0, Lcom/avira/android/custom/e;->a:Lcom/avira/android/custom/CustomSpinner;

    # getter for: Lcom/avira/android/custom/CustomSpinner;->mSelectedItem:Lcom/avira/android/custom/SpinnerDialogItem;
    invoke-static {v1}, Lcom/avira/android/custom/CustomSpinner;->access$000(Lcom/avira/android/custom/CustomSpinner;)Lcom/avira/android/custom/SpinnerDialogItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/custom/SpinnerDialogItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/custom/CustomSpinner;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/avira/android/custom/e;->a:Lcom/avira/android/custom/CustomSpinner;

    iget-object v1, p0, Lcom/avira/android/custom/e;->a:Lcom/avira/android/custom/CustomSpinner;

    # getter for: Lcom/avira/android/custom/CustomSpinner;->mSelectedItem:Lcom/avira/android/custom/SpinnerDialogItem;
    invoke-static {v1}, Lcom/avira/android/custom/CustomSpinner;->access$000(Lcom/avira/android/custom/CustomSpinner;)Lcom/avira/android/custom/SpinnerDialogItem;

    move-result-object v1

    # invokes: Lcom/avira/android/custom/CustomSpinner;->fireOnSelectionChanged(Lcom/avira/android/custom/SpinnerDialogItem;)V
    invoke-static {v0, v1}, Lcom/avira/android/custom/CustomSpinner;->access$200(Lcom/avira/android/custom/CustomSpinner;Lcom/avira/android/custom/SpinnerDialogItem;)V

    .line 105
    return-void
.end method
