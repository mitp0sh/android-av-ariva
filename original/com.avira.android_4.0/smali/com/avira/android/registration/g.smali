.class final Lcom/avira/android/registration/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/avira/android/registration/LoginActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/registration/LoginActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/avira/android/registration/g;->a:Lcom/avira/android/registration/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/avira/android/registration/g;->a:Lcom/avira/android/registration/LoginActivity;

    invoke-static {v0}, Lcom/avira/android/registration/LoginActivity;->a(Lcom/avira/android/registration/LoginActivity;)Lcom/avira/android/registration/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/i;->o()V

    .line 58
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
