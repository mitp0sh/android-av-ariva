.class final Lcom/avira/android/custom/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/custom/ad;


# direct methods
.method constructor <init>(Lcom/avira/android/custom/ad;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/avira/android/custom/af;->a:Lcom/avira/android/custom/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/avira/android/custom/af;->a:Lcom/avira/android/custom/ad;

    invoke-static {v0}, Lcom/avira/android/custom/ad;->c(Lcom/avira/android/custom/ad;)Lcom/avira/android/custom/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/custom/ad;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 176
    return-void
.end method
