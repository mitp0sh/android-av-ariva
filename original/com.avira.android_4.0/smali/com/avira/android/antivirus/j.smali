.class final Lcom/avira/android/antivirus/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/AntivirusOEActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/AntivirusOEActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/avira/android/antivirus/j;->a:Lcom/avira/android/antivirus/AntivirusOEActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/avira/android/antivirus/j;->a:Lcom/avira/android/antivirus/AntivirusOEActivity;

    invoke-static {v0}, Lcom/avira/android/antivirus/AntivirusOEActivity;->b(Lcom/avira/android/antivirus/AntivirusOEActivity;)Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antivirus/AntivirusOEActivityPresenter;->m()V

    .line 152
    const/4 v0, 0x1

    return v0
.end method
