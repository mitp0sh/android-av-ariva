.class final Lcom/avira/android/custom/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/custom/CustomSpinner;


# direct methods
.method constructor <init>(Lcom/avira/android/custom/CustomSpinner;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/avira/android/custom/f;->a:Lcom/avira/android/custom/CustomSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/avira/android/custom/f;->a:Lcom/avira/android/custom/CustomSpinner;

    # getter for: Lcom/avira/android/custom/CustomSpinner;->mSpinnerDialog:Lcom/avira/android/custom/ad;
    invoke-static {v0}, Lcom/avira/android/custom/CustomSpinner;->access$100(Lcom/avira/android/custom/CustomSpinner;)Lcom/avira/android/custom/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/custom/f;->a:Lcom/avira/android/custom/CustomSpinner;

    # getter for: Lcom/avira/android/custom/CustomSpinner;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-static {v1}, Lcom/avira/android/custom/CustomSpinner;->access$300(Lcom/avira/android/custom/CustomSpinner;)Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "com.avira.android.custom.SpinnerDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/custom/ad;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 121
    return-void
.end method
